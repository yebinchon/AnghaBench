; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.zip* }
%struct.zip = type { i64, i64, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i64, i64, i32, i32 (i32, i8*, i32)*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@ZIP_ENTRY_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to encrypt file\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid ZIP compression type\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@AES_VENDOR_AE_2 = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @archive_write_zip_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_zip_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load %struct.zip*, %struct.zip** %14, align 8
  store %struct.zip* %15, %struct.zip** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.zip*, %struct.zip** %9, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.zip*, %struct.zip** %9, align 8
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.zip*, %struct.zip** %9, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %248

34:                                               ; preds = %25
  %35 = load %struct.zip*, %struct.zip** %9, align 8
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ZIP_ENTRY_FLAG_ENCRYPTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = load %struct.zip*, %struct.zip** %9, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %81 [
    i32 130, label %45
    i32 129, label %62
    i32 128, label %62
  ]

45:                                               ; preds = %41
  %46 = load %struct.zip*, %struct.zip** %9, align 8
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %52 = call i32 @init_traditional_pkware_encryption(%struct.archive_write* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %248

58:                                               ; preds = %50
  %59 = load %struct.zip*, %struct.zip** %9, align 8
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %59, i32 0, i32 4
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %45
  br label %82

62:                                               ; preds = %41, %41
  %63 = load %struct.zip*, %struct.zip** %9, align 8
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %69 = call i32 @init_winzip_aes_encryption(%struct.archive_write* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %248

75:                                               ; preds = %67
  %76 = load %struct.zip*, %struct.zip** %9, align 8
  %77 = getelementptr inbounds %struct.zip, %struct.zip* %76, i32 0, i32 6
  store i32 1, i32* %77, align 8
  %78 = load %struct.zip*, %struct.zip** %9, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 5
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %62
  br label %82

81:                                               ; preds = %41
  br label %82

82:                                               ; preds = %81, %80, %61
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.zip*, %struct.zip** %9, align 8
  %85 = getelementptr inbounds %struct.zip, %struct.zip* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %210 [
    i32 131, label %87
  ]

87:                                               ; preds = %83
  %88 = load %struct.zip*, %struct.zip** %9, align 8
  %89 = getelementptr inbounds %struct.zip, %struct.zip* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.zip*, %struct.zip** %9, align 8
  %94 = getelementptr inbounds %struct.zip, %struct.zip* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %188

97:                                               ; preds = %92, %87
  %98 = load i8*, i8** %6, align 8
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr i8, i8* %99, i64 %100
  store i8* %101, i8** %11, align 8
  br label %102

102:                                              ; preds = %173, %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %187

106:                                              ; preds = %102
  %107 = load %struct.zip*, %struct.zip** %9, align 8
  %108 = getelementptr inbounds %struct.zip, %struct.zip* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.zip*, %struct.zip** %9, align 8
  %113 = getelementptr inbounds %struct.zip, %struct.zip* %112, i32 0, i32 18
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.zip*, %struct.zip** %9, align 8
  %122 = getelementptr inbounds %struct.zip, %struct.zip* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.zip*, %struct.zip** %9, align 8
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @trad_enc_encrypt_update(i32* %113, i8* %114, i32 %120, i8* %123, i64 %126)
  store i64 %127, i64* %12, align 8
  br label %161

128:                                              ; preds = %106
  %129 = load %struct.zip*, %struct.zip** %9, align 8
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %12, align 8
  %132 = load %struct.zip*, %struct.zip** %9, align 8
  %133 = getelementptr inbounds %struct.zip, %struct.zip* %132, i32 0, i32 17
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = load %struct.zip*, %struct.zip** %9, align 8
  %142 = getelementptr inbounds %struct.zip, %struct.zip* %141, i32 0, i32 8
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @archive_encrypto_aes_ctr_update(i32* %133, i8* %134, i32 %140, i8* %143, i64* %12)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %128
  %148 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %149 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %148, i32 0, i32 0
  %150 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %151 = call i32 @archive_set_error(i32* %149, i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %152, i32* %4, align 4
  br label %248

153:                                              ; preds = %128
  %154 = load %struct.zip*, %struct.zip** %9, align 8
  %155 = getelementptr inbounds %struct.zip, %struct.zip* %154, i32 0, i32 16
  %156 = load %struct.zip*, %struct.zip** %9, align 8
  %157 = getelementptr inbounds %struct.zip, %struct.zip* %156, i32 0, i32 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @archive_hmac_sha1_update(i32* %155, i8* %158, i64 %159)
  br label %161

161:                                              ; preds = %153, %111
  %162 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %163 = load %struct.zip*, %struct.zip** %9, align 8
  %164 = getelementptr inbounds %struct.zip, %struct.zip* %163, i32 0, i32 8
  %165 = load i8*, i8** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = call i32 @__archive_write_output(%struct.archive_write* %162, i8* %165, i64 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @ARCHIVE_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %4, align 4
  br label %248

173:                                              ; preds = %161
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.zip*, %struct.zip** %9, align 8
  %176 = getelementptr inbounds %struct.zip, %struct.zip* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.zip*, %struct.zip** %9, align 8
  %181 = getelementptr inbounds %struct.zip, %struct.zip* %180, i32 0, i32 11
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr i8, i8* %185, i64 %184
  store i8* %186, i8** %10, align 8
  br label %102

187:                                              ; preds = %102
  br label %209

188:                                              ; preds = %92
  %189 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = call i32 @__archive_write_output(%struct.archive_write* %189, i8* %190, i64 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @ARCHIVE_OK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %4, align 4
  br label %248

198:                                              ; preds = %188
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.zip*, %struct.zip** %9, align 8
  %201 = getelementptr inbounds %struct.zip, %struct.zip* %200, i32 0, i32 11
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %199
  store i64 %203, i64* %201, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load %struct.zip*, %struct.zip** %9, align 8
  %206 = getelementptr inbounds %struct.zip, %struct.zip* %205, i32 0, i32 10
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %198, %187
  br label %216

210:                                              ; preds = %83
  %211 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %212 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %211, i32 0, i32 0
  %213 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %214 = call i32 @archive_set_error(i32* %212, i32 %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %215, i32* %4, align 4
  br label %248

216:                                              ; preds = %209
  %217 = load i64, i64* %7, align 8
  %218 = load %struct.zip*, %struct.zip** %9, align 8
  %219 = getelementptr inbounds %struct.zip, %struct.zip* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = sub i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load %struct.zip*, %struct.zip** %9, align 8
  %223 = getelementptr inbounds %struct.zip, %struct.zip* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %216
  %227 = load %struct.zip*, %struct.zip** %9, align 8
  %228 = getelementptr inbounds %struct.zip, %struct.zip* %227, i32 0, i32 12
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @AES_VENDOR_AE_2, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %226, %216
  %233 = load %struct.zip*, %struct.zip** %9, align 8
  %234 = getelementptr inbounds %struct.zip, %struct.zip* %233, i32 0, i32 14
  %235 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %234, align 8
  %236 = load %struct.zip*, %struct.zip** %9, align 8
  %237 = getelementptr inbounds %struct.zip, %struct.zip* %236, i32 0, i32 13
  %238 = load i32, i32* %237, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = load i64, i64* %7, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32 %235(i32 %238, i8* %239, i32 %241)
  %243 = load %struct.zip*, %struct.zip** %9, align 8
  %244 = getelementptr inbounds %struct.zip, %struct.zip* %243, i32 0, i32 13
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %232, %226
  %246 = load i64, i64* %7, align 8
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %245, %210, %196, %171, %147, %73, %56, %33
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @init_traditional_pkware_encryption(%struct.archive_write*) #1

declare dso_local i32 @init_winzip_aes_encryption(%struct.archive_write*) #1

declare dso_local i64 @trad_enc_encrypt_update(i32*, i8*, i32, i8*, i64) #1

declare dso_local i32 @archive_encrypto_aes_ctr_update(i32*, i8*, i32, i8*, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_hmac_sha1_update(i32*, i8*, i64) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
