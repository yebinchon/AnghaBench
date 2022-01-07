; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_decode_fp_to_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_decode_fp_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ff\00", align 1
@FLOAT_SPRINTF_TRY_LIMIT = common dso_local global i32 0, align 4
@BUFFER_GROWFACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @decode_fp_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_fp_to_float(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = urem i64 %18, 2
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %22, 2
  %24 = icmp ugt i64 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %14, %2
  store i8* null, i8** %3, align 8
  br label %100

26:                                               ; preds = %21
  %27 = call i32 @memset(float* %9, i32 0, i32 4)
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %66, %26
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = udiv i64 %30, 2
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 2
  %38 = sub i64 %35, %37
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @hex_to_dec(i8 signext %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %45, 2
  %47 = sub i64 %44, %46
  %48 = sub i64 %47, 2
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @hex_to_dec(i8 signext %50)
  %52 = mul nsw i32 %51, 16
  %53 = add nsw i32 %42, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %33
  store i8* null, i8** %3, align 8
  br label %100

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = trunc i32 %61 to i8
  %63 = bitcast float* %9 to i8*
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  br label %28

69:                                               ; preds = %28
  store i64 64, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i64, i64* %7, align 8
  %72 = mul i64 1, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8* @malloc(i32 %73)
  store i8* %74, i8** %11, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %100

77:                                               ; preds = %70
  %78 = load i8*, i8** %11, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load float, float* %9, align 4
  %81 = call i32 @snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %80)
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = load i32, i32* @FLOAT_SPRINTF_TRY_LIMIT, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i8* null, i8** %3, align 8
  br label %100

94:                                               ; preds = %85
  %95 = load i64, i64* @BUFFER_GROWFACTOR, align 8
  %96 = load i64, i64* %7, align 8
  %97 = mul i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %70

98:                                               ; preds = %77
  %99 = load i8*, i8** %11, align 8
  store i8* %99, i8** %3, align 8
  br label %100

100:                                              ; preds = %98, %93, %76, %59, %25
  %101 = load i8*, i8** %3, align 8
  ret i8* %101
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @hex_to_dec(i8 signext) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, float) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
