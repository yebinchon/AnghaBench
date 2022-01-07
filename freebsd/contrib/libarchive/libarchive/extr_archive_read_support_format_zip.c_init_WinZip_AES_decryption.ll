; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_init_WinZip_AES_decryption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_init_WinZip_AES_decryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.zip = type { i32, i32, i64, %struct.TYPE_6__*, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_DERIVED_KEY_BUF_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Incorrect passphrase\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Passphrase required for this entry\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Decryption is unsupported due to lack of crypto library\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Too many incorrect passphrases\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to initialize HMAC-SHA1\00", align 1
@AUTH_CODE_SIZE = common dso_local global i64 0, align 8
@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Corrupted ZIP file data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @init_WinZip_AES_decryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_WinZip_AES_decryption(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.zip*
  store %struct.zip* %20, %struct.zip** %4, align 8
  %21 = load i32, i32* @MAX_DERIVED_KEY_BUF_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.zip*, %struct.zip** %4, align 8
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.zip*, %struct.zip** %4, align 8
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %1
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

36:                                               ; preds = %29
  %37 = load %struct.zip*, %struct.zip** %4, align 8
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %46 [
    i32 1, label %43
    i32 2, label %44
    i32 3, label %45
  ]

43:                                               ; preds = %36
  store i64 8, i64* %8, align 8
  store i64 16, i64* %7, align 8
  br label %47

44:                                               ; preds = %36
  store i64 12, i64* %8, align 8
  store i64 24, i64* %7, align 8
  br label %47

45:                                               ; preds = %36
  store i64 16, i64* %8, align 8
  store i64 32, i64* %7, align 8
  br label %47

46:                                               ; preds = %36
  br label %222

47:                                               ; preds = %45, %44, %43
  %48 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 2
  %51 = call i8* @__archive_read_ahead(%struct.archive_read* %48, i64 %50, i32* null)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %216

55:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %126, %55
  %57 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %58 = call i8* @__archive_read_next_passphrase(%struct.archive_read* %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %63 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %62, i32 0, i32 0
  %64 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0)
  %69 = call i32 @archive_set_error(i32* %63, i32 %64, i8* %68)
  %70 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

71:                                               ; preds = %56
  %72 = mul nuw i64 8, %22
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(i64* %24, i32 0, i32 %73)
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = mul i64 %80, 2
  %82 = add i64 %81, 2
  %83 = call i32 @archive_pbkdf2_sha1(i8* %75, i32 %77, i8* %78, i64 %79, i32 1000, i64* %24, i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %71
  %87 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %87, i32 0, i32 0
  %89 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %90 = call i32 @archive_set_error(i32* %88, i32 %89, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

92:                                               ; preds = %71
  %93 = load i8*, i8** %5, align 8
  %94 = bitcast i8* %93 to i64*
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64* %96, i64** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = mul i64 %97, 2
  %99 = getelementptr inbounds i64, i64* %24, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %92
  %106 = load i64, i64* %7, align 8
  %107 = mul i64 %106, 2
  %108 = add i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %24, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %129

116:                                              ; preds = %105, %92
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %117, 10000
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %121 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %120, i32 0, i32 0
  %122 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %123 = call i32 @archive_set_error(i32* %121, i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %56

129:                                              ; preds = %115
  %130 = load %struct.zip*, %struct.zip** %4, align 8
  %131 = getelementptr inbounds %struct.zip, %struct.zip* %130, i32 0, i32 6
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @archive_decrypto_aes_ctr_init(i32* %131, i64* %24, i64 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %138 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %137, i32 0, i32 0
  %139 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %140 = call i32 @archive_set_error(i32* %138, i32 %139, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %141, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

142:                                              ; preds = %129
  %143 = load %struct.zip*, %struct.zip** %4, align 8
  %144 = getelementptr inbounds %struct.zip, %struct.zip* %143, i32 0, i32 7
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i64, i64* %24, i64 %145
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @archive_hmac_sha1_init(i32* %144, i64* %146, i64 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load %struct.zip*, %struct.zip** %4, align 8
  %153 = getelementptr inbounds %struct.zip, %struct.zip* %152, i32 0, i32 6
  %154 = call i32 @archive_decrypto_aes_ctr_release(i32* %153)
  %155 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %156 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %155, i32 0, i32 0
  %157 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %158 = call i32 @archive_set_error(i32* %156, i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %159, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

160:                                              ; preds = %142
  %161 = load %struct.zip*, %struct.zip** %4, align 8
  %162 = getelementptr inbounds %struct.zip, %struct.zip* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.zip*, %struct.zip** %4, align 8
  %164 = getelementptr inbounds %struct.zip, %struct.zip* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, 2
  %168 = call i32 @__archive_read_consume(%struct.archive_read* %165, i64 %167)
  %169 = load i64, i64* %8, align 8
  %170 = add i64 %169, 2
  %171 = load i64, i64* @AUTH_CODE_SIZE, align 8
  %172 = add i64 %170, %171
  %173 = load %struct.zip*, %struct.zip** %4, align 8
  %174 = getelementptr inbounds %struct.zip, %struct.zip* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load %struct.zip*, %struct.zip** %4, align 8
  %178 = getelementptr inbounds %struct.zip, %struct.zip* %177, i32 0, i32 3
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 0, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %160
  %186 = load %struct.zip*, %struct.zip** %4, align 8
  %187 = getelementptr inbounds %struct.zip, %struct.zip* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %222

191:                                              ; preds = %185, %160
  %192 = load i64, i64* %8, align 8
  %193 = add i64 %192, 2
  %194 = load i64, i64* @AUTH_CODE_SIZE, align 8
  %195 = add i64 %193, %194
  %196 = load %struct.zip*, %struct.zip** %4, align 8
  %197 = getelementptr inbounds %struct.zip, %struct.zip* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = add i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 8
  %202 = load %struct.zip*, %struct.zip** %4, align 8
  %203 = getelementptr inbounds %struct.zip, %struct.zip* %202, i32 0, i32 4
  store i64 0, i64* %203, align 8
  %204 = load %struct.zip*, %struct.zip** %4, align 8
  %205 = getelementptr inbounds %struct.zip, %struct.zip* %204, i32 0, i32 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.zip*, %struct.zip** %4, align 8
  %211 = getelementptr inbounds %struct.zip, %struct.zip* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  store i32 %209, i32* %213, align 4
  %214 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %215 = call i32 @zip_alloc_decryption_buffer(%struct.archive_read* %214)
  store i32 %215, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

216:                                              ; preds = %54
  %217 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %218 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %217, i32 0, i32 0
  %219 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %220 = call i32 @archive_set_error(i32* %218, i32 %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %221 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %221, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

222:                                              ; preds = %190, %46
  %223 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %224 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %223, i32 0, i32 0
  %225 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %226 = call i32 @archive_set_error(i32* %224, i32 %225, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %227 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %227, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %228

228:                                              ; preds = %222, %216, %191, %151, %136, %119, %86, %61, %34
  %229 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #2

declare dso_local i8* @__archive_read_next_passphrase(%struct.archive_read*) #2

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @archive_pbkdf2_sha1(i8*, i32, i8*, i64, i32, i64*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @archive_decrypto_aes_ctr_init(i32*, i64*, i64) #2

declare dso_local i32 @archive_hmac_sha1_init(i32*, i64*, i64) #2

declare dso_local i32 @archive_decrypto_aes_ctr_release(i32*) #2

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #2

declare dso_local i32 @zip_alloc_decryption_buffer(%struct.archive_read*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
