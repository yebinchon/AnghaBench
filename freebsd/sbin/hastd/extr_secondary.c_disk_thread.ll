; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_disk_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_disk_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.hio = type { i32, i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"disk: Taking request.\00", align 1
@disk = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to allocate memory to clear local activemap.\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to store cleared activemap\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Local activemap cleared.\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"disk: (%p) Got request: \00", align 1
@errno = common dso_local global i8* null, align 8
@EIO = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Unexpected command (cmd=%hhu).\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Request failed: \00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"disk: (%p) Moving request to the send queue.\00", align 1
@send = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @disk_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @disk_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.hio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.hast_resource*
  store %struct.hast_resource* %11, %struct.hast_resource** %3, align 8
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %225, %1
  %13 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @disk, align 4
  %15 = load %struct.hio*, %struct.hio** %4, align 8
  %16 = call i32 @QUEUE_TAKE(i32 %14, %struct.hio* %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %22 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @METADATA_SIZE, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %27 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %30 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @activemap_calc_ondisk_size(i64 %25, i32 %28, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @calloc(i32 1, i64 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %62

39:                                               ; preds = %20
  %40 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %41 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @METADATA_SIZE, align 8
  %46 = call i64 @pwrite(i32 %42, i8* %43, i64 %44, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i32, i32* @LOG_WARNING, align 4
  %51 = call i32 @pjdlog_errno(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %55 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %62

58:                                               ; preds = %39
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  store i32 0, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %49, %37, %17
  %63 = load i32, i32* @LOG_DEBUG, align 4
  %64 = load %struct.hio*, %struct.hio** %4, align 8
  %65 = load %struct.hio*, %struct.hio** %4, align 8
  %66 = call i32 (i32, i32, i32, %struct.hio*, i8*, ...) @reqlog(i32 %63, i32 2, i32 -1, %struct.hio* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.hio* %65)
  store i32 1, i32* %7, align 4
  %67 = load %struct.hio*, %struct.hio** %4, align 8
  %68 = getelementptr inbounds %struct.hio, %struct.hio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %204 [
    i32 129, label %70
    i32 128, label %109
    i32 131, label %148
    i32 130, label %173
  ]

70:                                               ; preds = %62
  %71 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %72 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hio*, %struct.hio** %4, align 8
  %75 = getelementptr inbounds %struct.hio, %struct.hio* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.hio*, %struct.hio** %4, align 8
  %78 = getelementptr inbounds %struct.hio, %struct.hio* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hio*, %struct.hio** %4, align 8
  %81 = getelementptr inbounds %struct.hio, %struct.hio* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %84 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i64 @pread(i32 %73, i8* %76, i64 %79, i64 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %70
  %91 = load i8*, i8** @errno, align 8
  %92 = load %struct.hio*, %struct.hio** %4, align 8
  %93 = getelementptr inbounds %struct.hio, %struct.hio* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %108

94:                                               ; preds = %70
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.hio*, %struct.hio** %4, align 8
  %97 = getelementptr inbounds %struct.hio, %struct.hio* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i8*, i8** @EIO, align 8
  %102 = load %struct.hio*, %struct.hio** %4, align 8
  %103 = getelementptr inbounds %struct.hio, %struct.hio* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.hio*, %struct.hio** %4, align 8
  %106 = getelementptr inbounds %struct.hio, %struct.hio* %105, i32 0, i32 3
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %104, %100
  br label %108

108:                                              ; preds = %107, %90
  br label %209

109:                                              ; preds = %62
  %110 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %111 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hio*, %struct.hio** %4, align 8
  %114 = getelementptr inbounds %struct.hio, %struct.hio* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.hio*, %struct.hio** %4, align 8
  %117 = getelementptr inbounds %struct.hio, %struct.hio* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.hio*, %struct.hio** %4, align 8
  %120 = getelementptr inbounds %struct.hio, %struct.hio* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %123 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = call i64 @pwrite(i32 %112, i8* %115, i64 %118, i64 %125)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp eq i64 %127, -1
  br i1 %128, label %129, label %133

129:                                              ; preds = %109
  %130 = load i8*, i8** @errno, align 8
  %131 = load %struct.hio*, %struct.hio** %4, align 8
  %132 = getelementptr inbounds %struct.hio, %struct.hio* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  br label %147

133:                                              ; preds = %109
  %134 = load i64, i64* %5, align 8
  %135 = load %struct.hio*, %struct.hio** %4, align 8
  %136 = getelementptr inbounds %struct.hio, %struct.hio* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i8*, i8** @EIO, align 8
  %141 = load %struct.hio*, %struct.hio** %4, align 8
  %142 = getelementptr inbounds %struct.hio, %struct.hio* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  br label %146

143:                                              ; preds = %133
  %144 = load %struct.hio*, %struct.hio** %4, align 8
  %145 = getelementptr inbounds %struct.hio, %struct.hio* %144, i32 0, i32 3
  store i8* null, i8** %145, align 8
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %129
  br label %209

148:                                              ; preds = %62
  %149 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %150 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.hio*, %struct.hio** %4, align 8
  %153 = getelementptr inbounds %struct.hio, %struct.hio* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %156 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = load %struct.hio*, %struct.hio** %4, align 8
  %160 = getelementptr inbounds %struct.hio, %struct.hio* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @g_delete(i32 %151, i64 %158, i64 %161)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp eq i64 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %148
  %166 = load i8*, i8** @errno, align 8
  %167 = load %struct.hio*, %struct.hio** %4, align 8
  %168 = getelementptr inbounds %struct.hio, %struct.hio* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  br label %172

169:                                              ; preds = %148
  %170 = load %struct.hio*, %struct.hio** %4, align 8
  %171 = getelementptr inbounds %struct.hio, %struct.hio* %170, i32 0, i32 3
  store i8* null, i8** %171, align 8
  br label %172

172:                                              ; preds = %169, %165
  br label %209

173:                                              ; preds = %62
  %174 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %175 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  store i64 -1, i64* %5, align 8
  %179 = load i8*, i8** @EOPNOTSUPP, align 8
  %180 = load %struct.hio*, %struct.hio** %4, align 8
  %181 = getelementptr inbounds %struct.hio, %struct.hio* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  store i32 0, i32* %7, align 4
  br label %209

182:                                              ; preds = %173
  %183 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %184 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @g_flush(i32 %185)
  store i64 %186, i64* %5, align 8
  %187 = load i64, i64* %5, align 8
  %188 = icmp eq i64 %187, -1
  br i1 %188, label %189, label %200

189:                                              ; preds = %182
  %190 = load i8*, i8** @errno, align 8
  %191 = load i8*, i8** @EOPNOTSUPP, align 8
  %192 = icmp eq i8* %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %195 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %189
  %197 = load i8*, i8** @errno, align 8
  %198 = load %struct.hio*, %struct.hio** %4, align 8
  %199 = getelementptr inbounds %struct.hio, %struct.hio* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  br label %203

200:                                              ; preds = %182
  %201 = load %struct.hio*, %struct.hio** %4, align 8
  %202 = getelementptr inbounds %struct.hio, %struct.hio* %201, i32 0, i32 3
  store i8* null, i8** %202, align 8
  br label %203

203:                                              ; preds = %200, %196
  br label %209

204:                                              ; preds = %62
  %205 = load %struct.hio*, %struct.hio** %4, align 8
  %206 = getelementptr inbounds %struct.hio, %struct.hio* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %204, %203, %178, %172, %147, %108
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load %struct.hio*, %struct.hio** %4, align 8
  %214 = getelementptr inbounds %struct.hio, %struct.hio* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load i32, i32* @LOG_ERR, align 4
  %219 = load %struct.hio*, %struct.hio** %4, align 8
  %220 = getelementptr inbounds %struct.hio, %struct.hio* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.hio*, %struct.hio** %4, align 8
  %224 = call i32 (i32, i32, i32, %struct.hio*, i8*, ...) @reqlog(i32 %218, i32 0, i32 %222, %struct.hio* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %225

225:                                              ; preds = %217, %212, %209
  %226 = load %struct.hio*, %struct.hio** %4, align 8
  %227 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), %struct.hio* %226)
  %228 = load i32, i32* @send, align 4
  %229 = load %struct.hio*, %struct.hio** %4, align 8
  %230 = call i32 @QUEUE_INSERT(i32 %228, %struct.hio* %229)
  br label %12
}

declare dso_local i32 @pjdlog_debug(i32, i8*, ...) #1

declare dso_local i32 @QUEUE_TAKE(i32, %struct.hio*) #1

declare dso_local i64 @activemap_calc_ondisk_size(i64, i32, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @pjdlog_warning(i8*) #1

declare dso_local i64 @pwrite(i32, i8*, i64, i64) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @reqlog(i32, i32, i32, %struct.hio*, i8*, ...) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i64 @g_delete(i32, i64, i64) #1

declare dso_local i64 @g_flush(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @QUEUE_INSERT(i32, %struct.hio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
