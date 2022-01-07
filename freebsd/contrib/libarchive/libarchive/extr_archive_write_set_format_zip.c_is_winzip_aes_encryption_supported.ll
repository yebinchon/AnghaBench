; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_is_winzip_aes_encryption_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_is_winzip_aes_encryption_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DERIVED_KEY_BUF_SIZE = common dso_local global i32 0, align 4
@ENCRYPTION_WINZIP_AES128 = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_winzip_aes_encryption_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_winzip_aes_encryption_supported(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [18 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @MAX_DERIVED_KEY_BUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ENCRYPTION_WINZIP_AES128, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i64 8, i64* %5, align 8
  store i64 16, i64* %4, align 8
  br label %22

21:                                               ; preds = %1
  store i64 16, i64* %5, align 8
  store i64 32, i64* %4, align 8
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @archive_random(i32* %23, i64 %24)
  %26 = load i64, i64* @ARCHIVE_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %56

29:                                               ; preds = %22
  %30 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = mul i64 %32, 2
  %34 = add i64 %33, 2
  %35 = call i32 @archive_pbkdf2_sha1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32* %30, i64 %31, i32 1000, i32* %16, i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %56

39:                                               ; preds = %29
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @archive_encrypto_aes_ctr_init(i32* %9, i32* %16, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %56

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32, i32* %16, i64 %46
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @archive_hmac_sha1_init(i32* %10, i32* %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = call i32 @archive_encrypto_aes_ctr_release(i32* %9)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %56

54:                                               ; preds = %45
  %55 = call i32 @archive_hmac_sha1_cleanup(i32* %10)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %53, %44, %38, %28
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @archive_random(i32*, i64) #2

declare dso_local i32 @archive_pbkdf2_sha1(i8*, i32, i32*, i64, i32, i32*, i64) #2

declare dso_local i32 @archive_encrypto_aes_ctr_init(i32*, i32*, i64) #2

declare dso_local i32 @archive_hmac_sha1_init(i32*, i32*, i64) #2

declare dso_local i32 @archive_encrypto_aes_ctr_release(i32*) #2

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
