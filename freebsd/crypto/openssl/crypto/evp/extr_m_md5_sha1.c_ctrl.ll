; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_md5_sha1.c_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_md5_sha1.c_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_sha1_ctx = type { i32, i32 }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
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
  %10 = alloca [48 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.md5_sha1_ctx*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.md5_sha1_ctx* @EVP_MD_CTX_md_data(i32* %32)
  store %struct.md5_sha1_ctx* %33, %struct.md5_sha1_ctx** %14, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 48
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @update(i32* %38, i8* %39, i32 %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

44:                                               ; preds = %37
  %45 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 54, i32 48)
  %47 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %48 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %50 = call i32 @MD5_Update(i32* %48, i8* %49, i32 48)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

53:                                               ; preds = %44
  %54 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %55 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %54, i32 0, i32 1
  %56 = call i32 @MD5_Final(i8* %19, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

59:                                               ; preds = %53
  %60 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %61 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %63 = call i32 @SHA1_Update(i32* %61, i8* %62, i32 40)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

66:                                               ; preds = %59
  %67 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %68 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %67, i32 0, i32 0
  %69 = call i32 @SHA1_Final(i8* %22, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @init(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @update(i32* %78, i8* %79, i32 %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

84:                                               ; preds = %77
  %85 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %86 = call i32 @memset(i8* %85, i32 92, i32 48)
  %87 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %88 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %87, i32 0, i32 1
  %89 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %90 = call i32 @MD5_Update(i32* %88, i8* %89, i32 48)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

93:                                               ; preds = %84
  %94 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %95 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %94, i32 0, i32 1
  %96 = trunc i64 %17 to i32
  %97 = call i32 @MD5_Update(i32* %95, i8* %19, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

100:                                              ; preds = %93
  %101 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %102 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %104 = call i32 @SHA1_Update(i32* %102, i8* %103, i32 40)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

107:                                              ; preds = %100
  %108 = load %struct.md5_sha1_ctx*, %struct.md5_sha1_ctx** %14, align 8
  %109 = getelementptr inbounds %struct.md5_sha1_ctx, %struct.md5_sha1_ctx* %108, i32 0, i32 0
  %110 = trunc i64 %21 to i32
  %111 = call i32 @SHA1_Update(i32* %109, i8* %22, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

114:                                              ; preds = %107
  %115 = trunc i64 %17 to i32
  %116 = call i32 @OPENSSL_cleanse(i8* %19, i32 %115)
  %117 = trunc i64 %21 to i32
  %118 = call i32 @OPENSSL_cleanse(i8* %22, i32 %117)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %119

119:                                              ; preds = %114, %113, %106, %99, %92, %83, %76, %71, %65, %58, %52, %43, %36, %30, %26
  %120 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.md5_sha1_ctx* @EVP_MD_CTX_md_data(i32*) #2

declare dso_local i64 @update(i32*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #2

declare dso_local i32 @MD5_Final(i8*, i32*) #2

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @init(i32*) #2

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
