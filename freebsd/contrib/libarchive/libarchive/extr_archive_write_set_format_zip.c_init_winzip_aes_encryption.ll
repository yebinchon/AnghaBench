; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_init_winzip_aes_encryption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_init_winzip_aes_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.zip* }
%struct.zip = type { i64, i64, i64, i32, i32 }

@MAX_DERIVED_KEY_BUF_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Encryption needs passphrase\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ENCRYPTION_WINZIP_AES128 = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't generate random number for encryption\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Decryption is unsupported due to lack of crypto library\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to initialize HMAC-SHA1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @init_winzip_aes_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_winzip_aes_encryption(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [18 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load %struct.zip*, %struct.zip** %14, align 8
  store %struct.zip* %15, %struct.zip** %4, align 8
  %16 = load i32, i32* @MAX_DERIVED_KEY_BUF_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %21 = call i8* @__archive_write_get_passphrase(%struct.archive_write* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %26 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %25, i32 0, i32 0
  %27 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

30:                                               ; preds = %1
  %31 = load %struct.zip*, %struct.zip** %4, align 8
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ENCRYPTION_WINZIP_AES128, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i64 8, i64* %7, align 8
  store i64 16, i64* %6, align 8
  br label %38

37:                                               ; preds = %30
  store i64 16, i64* %7, align 8
  store i64 32, i64* %6, align 8
  br label %38

38:                                               ; preds = %37, %36
  %39 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @archive_random(i32* %39, i64 %40)
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 0
  %47 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %48 = call i32 @archive_set_error(i32* %46, i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 0
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = mul i64 %56, 2
  %58 = add i64 %57, 2
  %59 = call i32 @archive_pbkdf2_sha1(i8* %51, i32 %53, i32* %54, i64 %55, i32 1000, i32* %19, i64 %58)
  %60 = load %struct.zip*, %struct.zip** %4, align 8
  %61 = getelementptr inbounds %struct.zip, %struct.zip* %60, i32 0, i32 3
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @archive_encrypto_aes_ctr_init(i32* %61, i32* %19, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %50
  %67 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %68 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %67, i32 0, i32 0
  %69 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %70 = call i32 @archive_set_error(i32* %68, i32 %69, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

72:                                               ; preds = %50
  %73 = load %struct.zip*, %struct.zip** %4, align 8
  %74 = getelementptr inbounds %struct.zip, %struct.zip* %73, i32 0, i32 4
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i32, i32* %19, i64 %75
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @archive_hmac_sha1_init(i32* %74, i32* %76, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.zip*, %struct.zip** %4, align 8
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %82, i32 0, i32 3
  %84 = call i32 @archive_encrypto_aes_ctr_release(i32* %83)
  %85 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %86 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %85, i32 0, i32 0
  %87 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %88 = call i32 @archive_set_error(i32* %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

90:                                               ; preds = %72
  %91 = load i64, i64* %6, align 8
  %92 = mul i64 %91, 2
  %93 = getelementptr inbounds i32, i32* %19, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %95
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %6, align 8
  %98 = mul i64 %97, 2
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i32, i32* %19, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %106 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 0
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 2
  %109 = call i32 @__archive_write_output(%struct.archive_write* %105, i32* %106, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %90
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

115:                                              ; preds = %90
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 2
  %118 = load %struct.zip*, %struct.zip** %4, align 8
  %119 = getelementptr inbounds %struct.zip, %struct.zip* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 2
  %124 = load %struct.zip*, %struct.zip** %4, align 8
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %129

129:                                              ; preds = %115, %113, %81, %66, %44, %24
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @__archive_write_get_passphrase(%struct.archive_write*) #2

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #2

declare dso_local i32 @archive_random(i32*, i64) #2

declare dso_local i32 @archive_pbkdf2_sha1(i8*, i32, i32*, i64, i32, i32*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @archive_encrypto_aes_ctr_init(i32*, i32*, i64) #2

declare dso_local i32 @archive_hmac_sha1_init(i32*, i32*, i64) #2

declare dso_local i32 @archive_encrypto_aes_ctr_release(i32*) #2

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
