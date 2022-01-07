; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/multipath/extr_geom_multipath.c_mp_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/multipath/extr_geom_multipath.c_mp_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_multipath_metadata = type { i32, i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"wrong number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot get information about %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%s sector size %ju different.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s media size %ju different.\00", align 1
@G_MULTIPATH_MAGIC = common dso_local global i8* null, align 8
@G_MULTIPATH_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@uuid_s_ok = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"cannot create a UUID.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"cannot stringify a UUID.\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"active_active\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"active_read\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"unable to allocate metadata buffer\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"cannot store metadata on %s: %s.\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Unable to open %s: %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Unable to read metadata from %s: %s.\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"No metadata found on %s. It is not a path of %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @mp_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_label(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_multipath_metadata, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %21 = call i32 @gctl_get_int(%struct.gctl_req* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %222

27:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %28

28:                                               ; preds = %79, %27
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i64 @g_get_mediasize(i8* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i64 @g_get_sectorsize(i8* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %32
  %46 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i8* @strerror(i32 %48)
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %49)
  br label %222

51:                                               ; preds = %42
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %4, align 8
  br label %78

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %11, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %65)
  br label %222

67:                                               ; preds = %57
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %5, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %75)
  br label %222

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %54
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %28

82:                                               ; preds = %28
  %83 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** @G_MULTIPATH_MAGIC, align 8
  %86 = call i32 @strlcpy(i32 %84, i8* %85, i32 4)
  %87 = load i32, i32* @G_MULTIPATH_VERSION, align 4
  %88 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %90 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %90, i8** %15, align 8
  %91 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @strlcpy(i32 %92, i8* %93, i32 4)
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 3
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 2
  store i64 %97, i64* %98, align 8
  %99 = call i32 @uuid_create(i32* %9, i64* %12)
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @uuid_s_ok, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %82
  %104 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %105 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %222

106:                                              ; preds = %82
  %107 = call i32 @uuid_to_string(i32* %9, i8** %8, i64* %12)
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @uuid_s_ok, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %113 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %222

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @strlcpy(i32 %116, i8* %117, i32 4)
  %119 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %120 = call i32 @gctl_get_int(%struct.gctl_req* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %121 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %123 = call i32 @gctl_get_int(%struct.gctl_req* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.g_multipath_metadata, %struct.g_multipath_metadata* %3, i32 0, i32 0
  store i32 2, i32* %126, align 8
  br label %127

127:                                              ; preds = %125, %114
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i64, i64* %10, align 8
  %131 = call i8* @calloc(i32 1, i64 %130)
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %136 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %222

137:                                              ; preds = %127
  %138 = load i64, i64* %10, align 8
  %139 = call i8* @malloc(i64 %138)
  store i8* %139, i8** %7, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %144 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %217

145:                                              ; preds = %137
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @multipath_metadata_encode(%struct.g_multipath_metadata* %3, i8* %146)
  %148 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %149 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @g_metadata_store(i8* %150, i8* %151, i64 %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i8* @strerror(i32 %159)
  %161 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %158, i8* %160)
  br label %217

162:                                              ; preds = %145
  store i32 2, i32* %17, align 4
  br label %163

163:                                              ; preds = %213, %162
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %216

167:                                              ; preds = %163
  %168 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %169 = load i32, i32* %17, align 4
  %170 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  store i8* %170, i8** %14, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @g_open(i8* %171, i32 1)
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load i32, i32* @stderr, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* @errno, align 4
  %179 = call i8* @strerror(i32 %178)
  %180 = call i32 @fprintf(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %177, i8* %179)
  br label %213

181:                                              ; preds = %167
  %182 = load i32, i32* %19, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load i64, i64* %10, align 8
  %187 = sub nsw i64 %185, %186
  %188 = call i64 @pread(i32 %182, i8* %183, i64 %184, i64 %187)
  %189 = load i64, i64* %10, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %181
  %192 = load i32, i32* @stderr, align 4
  %193 = load i8*, i8** %14, align 8
  %194 = load i32, i32* @errno, align 4
  %195 = call i8* @strerror(i32 %194)
  %196 = call i32 @fprintf(i32 %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %193, i8* %195)
  %197 = load i32, i32* %19, align 4
  %198 = call i32 @g_close(i32 %197)
  br label %213

199:                                              ; preds = %181
  %200 = load i32, i32* %19, align 4
  %201 = call i32 @g_close(i32 %200)
  %202 = load i8*, i8** %6, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i64 @memcmp(i8* %202, i8* %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load i32, i32* @stderr, align 4
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 @fprintf(i32 %208, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %207, %199
  br label %213

213:                                              ; preds = %212, %191, %175
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %163

216:                                              ; preds = %163
  br label %217

217:                                              ; preds = %216, %156, %142
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 @free(i8* %220)
  br label %222

222:                                              ; preds = %217, %134, %111, %103, %71, %61, %45, %24
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, ...) #1

declare dso_local i64 @g_get_mediasize(i8*) #1

declare dso_local i64 @g_get_sectorsize(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @uuid_create(i32*, i64*) #1

declare dso_local i32 @uuid_to_string(i32*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @multipath_metadata_encode(%struct.g_multipath_metadata*, i8*) #1

declare dso_local i32 @g_metadata_store(i8*, i8*, i64) #1

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @g_close(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
