; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-tprf.c_sha1_t_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-tprf.c_sha1_t_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_t_prf(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [2 x i8], align 1
  %23 = alloca [5 x i8*], align 16
  %24 = alloca [5 x i64], align 16
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8 0, i8* %16, align 1
  %26 = load i32, i32* @SHA1_MAC_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @os_strlen(i8* %30)
  store i64 %31, i64* %21, align 8
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 0
  store i8* %29, i8** %32, align 16
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  store i64 0, i64* %33, align 16
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 1
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %21, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 2
  store i8* %39, i8** %40, align 16
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 2
  store i64 %41, i64* %42, align 16
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 3
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 3
  store i64 2, i64* %45, align 8
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 4
  store i8* %16, i8** %46, align 16
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 4
  store i64 1, i64* %47, align 16
  %48 = load i64, i64* %15, align 8
  %49 = lshr i64 %48, 8
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = load i64, i64* %15, align 8
  %54 = and i64 %53, 255
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1
  store i8 %55, i8* %56, align 1
  store i64 0, i64* %17, align 8
  br label %57

57:                                               ; preds = %96, %7
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i8, i8* %16, align 1
  %63 = add i8 %62, 1
  store i8 %63, i8* %16, align 1
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %18, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 0
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  %71 = call i64 @hmac_sha1_vector(i8* %67, i64 %68, i32 5, i8** %69, i64* %70, i8* %29)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %103

74:                                               ; preds = %61
  %75 = load i64, i64* %18, align 8
  %76 = load i32, i32* @SHA1_MAC_LEN, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %75, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i32, i32* @SHA1_MAC_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 @os_memcpy(i8* %82, i8* %29, i64 %84)
  %86 = load i32, i32* @SHA1_MAC_LEN, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %17, align 8
  br label %96

90:                                               ; preds = %74
  %91 = load i8*, i8** %14, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @os_memcpy(i8* %93, i8* %29, i64 %94)
  br label %100

96:                                               ; preds = %79
  %97 = load i32, i32* @SHA1_MAC_LEN, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  store i64 %98, i64* %99, align 16
  br label %57

100:                                              ; preds = %90, %57
  %101 = load i32, i32* @SHA1_MAC_LEN, align 4
  %102 = call i32 @forced_memzero(i8* %29, i32 %101)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %103

103:                                              ; preds = %100, %73
  %104 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

declare dso_local i32 @forced_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
