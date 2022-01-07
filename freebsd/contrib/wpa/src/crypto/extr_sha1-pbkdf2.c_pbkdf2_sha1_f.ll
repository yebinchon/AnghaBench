; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-pbkdf2.c_pbkdf2_sha1_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-pbkdf2.c_pbkdf2_sha1_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32, i32, i8*)* @pbkdf2_sha1_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbkdf2_sha1_f(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i8], align 1
  %20 = alloca [2 x i8*], align 16
  %21 = alloca [2 x i64], align 16
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %24 = load i32, i32* @SHA1_MAC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load i32, i32* @SHA1_MAC_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @os_strlen(i8* %31)
  store i64 %32, i64* %22, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 1
  store i64 4, i64* %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = lshr i32 %40, 24
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %12, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = load i32, i32* %12, align 4
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 2
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  store i8 %57, i8* %58, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %22, align 8
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %63 = call i64 @hmac_sha1_vector(i8* %59, i64 %60, i32 2, i8** %61, i64* %62, i8* %27)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %110

66:                                               ; preds = %6
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* @SHA1_MAC_LEN, align 4
  %69 = call i32 @os_memcpy(i8* %67, i8* %27, i32 %68)
  store i32 1, i32* %17, align 4
  br label %70

70:                                               ; preds = %106, %66
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %22, align 8
  %77 = load i32, i32* @SHA1_MAC_LEN, align 4
  %78 = call i64 @hmac_sha1(i8* %75, i64 %76, i8* %27, i32 %77, i8* %30)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %110

81:                                               ; preds = %74
  %82 = load i32, i32* @SHA1_MAC_LEN, align 4
  %83 = call i32 @os_memcpy(i8* %27, i8* %30, i32 %82)
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %102, %81
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @SHA1_MAC_LEN, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %30, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, %93
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %84

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %70

109:                                              ; preds = %70
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %110

110:                                              ; preds = %109, %80, %65
  %111 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i64 @hmac_sha1(i8*, i64, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
