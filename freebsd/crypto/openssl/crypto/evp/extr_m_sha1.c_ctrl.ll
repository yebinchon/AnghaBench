; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sha1.c_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sha1.c_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [40 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @EVP_MD_CTX_md_data(i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 48
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

33:                                               ; preds = %27
  %34 = load i32*, i32** %13, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @SHA1_Update(i32* %34, i8* %35, i32 %36)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

40:                                               ; preds = %33
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 54, i32 40)
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %45 = call i64 @SHA1_Update(i32* %43, i8* %44, i32 40)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

48:                                               ; preds = %40
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @SHA1_Final(i8* %18, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

53:                                               ; preds = %48
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @SHA1_Init(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

58:                                               ; preds = %53
  %59 = load i32*, i32** %13, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @SHA1_Update(i32* %59, i8* %60, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

65:                                               ; preds = %58
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %67 = call i32 @memset(i8* %66, i32 92, i32 40)
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %70 = call i64 @SHA1_Update(i32* %68, i8* %69, i32 40)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

73:                                               ; preds = %65
  %74 = load i32*, i32** %13, align 8
  %75 = trunc i64 %16 to i32
  %76 = call i64 @SHA1_Update(i32* %74, i8* %18, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

79:                                               ; preds = %73
  %80 = trunc i64 %16 to i32
  %81 = call i32 @OPENSSL_cleanse(i8* %18, i32 %80)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %78, %72, %64, %57, %52, %47, %39, %32, %26, %22
  %83 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_md_data(i32*) #2

declare dso_local i64 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @SHA1_Init(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
