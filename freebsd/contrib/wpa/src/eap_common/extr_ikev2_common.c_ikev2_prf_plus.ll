; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_prf_plus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_prf_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_prf_alg = type { i64 }

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_prf_plus(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca [3 x i32*], align 16
  %23 = alloca [3 x i64], align 16
  %24 = alloca %struct.ikev2_prf_alg*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %28 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.ikev2_prf_alg* @ikev2_get_prf(i32 %32)
  store %struct.ikev2_prf_alg* %33, %struct.ikev2_prf_alg** %24, align 8
  %34 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %24, align 8
  %35 = icmp eq %struct.ikev2_prf_alg* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %108

37:                                               ; preds = %7
  %38 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %24, align 8
  %39 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %18, align 8
  %41 = getelementptr inbounds [3 x i32*], [3 x i32*]* %22, i64 0, i64 0
  store i32* %31, i32** %41, align 16
  %42 = load i64, i64* %18, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds [3 x i32*], [3 x i32*]* %22, i64 0, i64 1
  store i32* %44, i32** %45, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds [3 x i32*], [3 x i32*]* %22, i64 0, i64 2
  store i32* %19, i32** %48, align 16
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 1, i64* %49, align 16
  %50 = load i32*, i32** %14, align 8
  store i32* %50, i32** %20, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %21, align 8
  store i32 1, i32* %19, align 4
  br label %54

54:                                               ; preds = %98, %37
  %55 = load i32*, i32** %20, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds [3 x i32*], [3 x i32*]* %22, i64 0, i64 1
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  %67 = call i32 @ikev2_prf_hash(i32 %62, i32* %63, i64 %64, i32 2, i32** %65, i64* %66, i32* %31)
  store i32 %67, i32* %25, align 4
  br label %75

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds [3 x i32*], [3 x i32*]* %22, i64 0, i64 0
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  %74 = call i32 @ikev2_prf_hash(i32 %69, i32* %70, i64 %71, i32 3, i32** %72, i64* %73, i32* %31)
  store i32 %74, i32* %25, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %25, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %108

79:                                               ; preds = %75
  %80 = load i64, i64* %18, align 8
  store i64 %80, i64* %27, align 8
  %81 = load i64, i64* %27, align 8
  %82 = trunc i64 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = load i32*, i32** %21, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = icmp sgt i64 %83, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load i32*, i32** %21, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  store i64 %97, i64* %27, align 8
  br label %98

98:                                               ; preds = %91, %79
  %99 = load i32*, i32** %20, align 8
  %100 = load i64, i64* %27, align 8
  %101 = call i32 @os_memcpy(i32* %99, i32* %31, i64 %100)
  %102 = load i64, i64* %27, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 %102
  store i32* %104, i32** %20, align 8
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %54

107:                                              ; preds = %54
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %108

108:                                              ; preds = %107, %78, %36
  %109 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ikev2_prf_alg* @ikev2_get_prf(i32) #2

declare dso_local i32 @ikev2_prf_hash(i32, i32*, i64, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
