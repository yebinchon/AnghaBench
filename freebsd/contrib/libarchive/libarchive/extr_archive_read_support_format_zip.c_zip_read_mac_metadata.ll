; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_mac_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_mac_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.zip_entry = type { i32, i32, i32, i64 }
%struct.zip = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i64, i8*, i8*, i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Malformed OS X metadata entry: inconsistent size\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unsupported ZIP compression method (%s)\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Mac metadata is too large: %jd > 4M bytes\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Can't allocate memory for Mac metadata\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Truncated ZIP file header\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.zip_entry*)* @zip_read_mac_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_read_mac_metadata(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.zip_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.zip_entry*, align 8
  %8 = alloca %struct.zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store %struct.zip_entry* %2, %struct.zip_entry** %7, align 8
  %20 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.zip*
  store %struct.zip* %25, %struct.zip** %8, align 8
  %26 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 0
  %28 = call i64 @archive_filter_bytes(i32* %27, i32 0)
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %48 [
    i32 0, label %33
  ]

33:                                               ; preds = %3
  %34 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %35 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %38 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 0
  %44 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %45 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %43, i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %46, i32* %4, align 4
  br label %222

47:                                               ; preds = %33
  br label %58

48:                                               ; preds = %3
  %49 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0
  %51 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %52 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @compression_name(i32 %54)
  %56 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %50, i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %57, i32* %4, align 4
  br label %222

58:                                               ; preds = %47
  %59 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %60 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 4194304
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %67 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %68 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %65, i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %71, i32* %4, align 4
  br label %222

72:                                               ; preds = %58
  %73 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %74 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 4194304
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %79 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %78, i32 0, i32 0
  %80 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %81 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %82 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %79, i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %85, i32* %4, align 4
  br label %222

86:                                               ; preds = %72
  %87 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %88 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = call i8* @malloc(i64 %90)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %96 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %95, i32 0, i32 0
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %96, i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %99, i32* %4, align 4
  br label %222

100:                                              ; preds = %86
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %103 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %108 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %109 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub nsw i64 %110, %111
  %113 = call i32 @__archive_read_consume(%struct.archive_read* %107, i64 %112)
  br label %128

114:                                              ; preds = %100
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %117 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %122 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %123 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @SEEK_SET, align 4
  %126 = call i32 @__archive_read_seek(%struct.archive_read* %121, i64 %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %114
  br label %128

128:                                              ; preds = %127, %106
  %129 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %130 = call i64 @zip_get_local_file_header_size(%struct.archive_read* %129, i32 0)
  store i64 %130, i64* %14, align 8
  %131 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @__archive_read_consume(%struct.archive_read* %131, i64 %132)
  %134 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %135 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %12, align 8
  %138 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %139 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %13, align 8
  %142 = load i8*, i8** %9, align 8
  store i8* %142, i8** %10, align 8
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %195, %128
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i1 [ false, %143 ], [ %148, %146 ]
  br i1 %150, label %151, label %202

151:                                              ; preds = %149
  %152 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %153 = call i8* @__archive_read_ahead(%struct.archive_read* %152, i32 1, i64* %18)
  store i8* %153, i8** %17, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %158 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %157, i32 0, i32 0
  %159 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %160 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %158, i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %161, i32* %15, align 4
  br label %212

162:                                              ; preds = %151
  %163 = load i64, i64* %18, align 8
  %164 = load i64, i64* %12, align 8
  %165 = icmp ugt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* %12, align 8
  store i64 %167, i64* %18, align 8
  br label %168

168:                                              ; preds = %166, %162
  %169 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %170 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %194 [
    i32 0, label %172
  ]

172:                                              ; preds = %168
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* %13, align 8
  %175 = icmp ugt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i64, i64* %13, align 8
  store i64 %177, i64* %18, align 8
  br label %178

178:                                              ; preds = %176, %172
  %179 = load i8*, i8** %10, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i64, i64* %18, align 8
  %182 = call i32 @memcpy(i8* %179, i8* %180, i64 %181)
  %183 = load i64, i64* %18, align 8
  store i64 %183, i64* %19, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* %13, align 8
  %186 = sub i64 %185, %184
  store i64 %186, i64* %13, align 8
  %187 = load i64, i64* %19, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 %187
  store i8* %189, i8** %10, align 8
  %190 = load i64, i64* %13, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %178
  store i32 1, i32* %16, align 4
  br label %193

193:                                              ; preds = %192, %178
  br label %195

194:                                              ; preds = %168
  store i64 0, i64* %19, align 8
  br label %195

195:                                              ; preds = %194, %193
  %196 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %197 = load i64, i64* %19, align 8
  %198 = call i32 @__archive_read_consume(%struct.archive_read* %196, i64 %197)
  %199 = load i64, i64* %19, align 8
  %200 = load i64, i64* %12, align 8
  %201 = sub i64 %200, %199
  store i64 %201, i64* %12, align 8
  br label %143

202:                                              ; preds = %149
  %203 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %206 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %13, align 8
  %210 = sub i64 %208, %209
  %211 = call i32 @archive_entry_copy_mac_metadata(%struct.archive_entry* %203, i8* %204, i64 %210)
  br label %212

212:                                              ; preds = %202, %156
  %213 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load i32, i32* @SEEK_SET, align 4
  %216 = call i32 @__archive_read_seek(%struct.archive_read* %213, i64 %214, i32 %215)
  %217 = load %struct.zip*, %struct.zip** %8, align 8
  %218 = getelementptr inbounds %struct.zip, %struct.zip* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = call i32 @free(i8* %219)
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %212, %94, %77, %63, %48, %41
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @archive_filter_bytes(i32*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @compression_name(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

declare dso_local i64 @zip_get_local_file_header_size(%struct.archive_read*, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_entry_copy_mac_metadata(%struct.archive_entry*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
