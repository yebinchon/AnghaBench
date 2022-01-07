; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_hda_cts_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_hda_cts_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @get_hda_cts_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hda_cts_n(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 128, %23
  %25 = sdiv i32 %24, 1500
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 128, %26
  %28 = sdiv i32 %27, 300
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 128, %29
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %13, align 4
  %32 = call i32 @TO_FFP(i32 100)
  store i32 %32, i32* %18, align 4
  %33 = call i32 @TO_FFP(i32 1)
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %21, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %120, %5
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %123

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @TO_FFP(i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %19, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 128, %49
  %51 = load i32, i32* %19, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @TO_INT(i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @TO_FFP(i32 %58)
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %63, %43
  %67 = call i32 @TO_FFP(i32 24000000)
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %20, align 4
  %70 = mul nsw i32 %69, %68
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 128, %71
  %73 = load i32, i32* %20, align 4
  %74 = sdiv i32 %73, %72
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @TO_INT(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 @abs(i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i64 @abs(i32 %84)
  %86 = icmp slt i64 %80, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @TO_FFP(i32 %88)
  %90 = load i32, i32* %20, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %66
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100, %92
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %123

118:                                              ; preds = %113, %103
  br label %119

119:                                              ; preds = %118, %100, %96, %66
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %39

123:                                              ; preds = %117, %39
  ret i32 0
}

declare dso_local i32 @TO_FFP(i32) #1

declare dso_local i32 @TO_INT(i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
