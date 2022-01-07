; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_hangul_composition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_hangul_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l_base = common dso_local global i64 0, align 8
@l_count = common dso_local global i64 0, align 8
@v_base = common dso_local global i64 0, align 8
@v_count = common dso_local global i32 0, align 4
@t_count = common dso_local global i32 0, align 4
@s_base = common dso_local global i64 0, align 8
@s_count = common dso_local global i64 0, align 8
@t_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64)* @hangul_composition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hangul_composition(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %123

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @l_base, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @l_base, align 8
  %24 = load i64, i64* @l_count, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %19
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @l_base, align 8
  %32 = sub nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @v_base, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %27
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @v_base, align 8
  %44 = load i32, i32* @v_count, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = icmp sge i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39, %27
  store i64 0, i64* %3, align 8
  br label %123

49:                                               ; preds = %39
  %50 = load i64*, i64** %4, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @v_base, align 8
  %54 = sub nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @v_count, align 4
  %58 = mul i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* @t_count, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @s_base, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %3, align 8
  br label %123

66:                                               ; preds = %19, %13
  %67 = load i64*, i64** %4, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @s_base, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %121

72:                                               ; preds = %66
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @s_base, align 8
  %77 = load i64, i64* @s_count, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %72
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @s_base, align 8
  %85 = sub nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @t_count, align 4
  %89 = urem i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i64 0, i64* %3, align 8
  br label %123

92:                                               ; preds = %80
  %93 = load i64*, i64** %4, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @t_base, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %92
  %99 = load i64*, i64** %4, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @t_base, align 8
  %103 = load i32, i32* @t_count, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = icmp sge i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98, %92
  store i64 0, i64* %3, align 8
  br label %123

108:                                              ; preds = %98
  %109 = load i64*, i64** %4, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @t_base, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load i64*, i64** %4, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  store i64 %120, i64* %3, align 8
  br label %123

121:                                              ; preds = %72, %66
  br label %122

122:                                              ; preds = %121
  store i64 0, i64* %3, align 8
  br label %123

123:                                              ; preds = %122, %108, %107, %91, %49, %48, %12
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
