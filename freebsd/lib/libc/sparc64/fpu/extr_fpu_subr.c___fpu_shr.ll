; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_subr.c___fpu_shr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_subr.c___fpu_shr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i64, i32*, i32 }

@FP_NMANT = common dso_local global i32 0, align 4
@FPC_NUM = common dso_local global i64 0, align 8
@FPC_ZERO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpu_shr(%struct.fpn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpn* %0, %struct.fpn** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.fpn*, %struct.fpn** %4, align 8
  %13 = getelementptr inbounds %struct.fpn, %struct.fpn* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fpn*, %struct.fpn** %4, align 8
  %18 = getelementptr inbounds %struct.fpn, %struct.fpn* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.fpn*, %struct.fpn** %4, align 8
  %23 = getelementptr inbounds %struct.fpn, %struct.fpn* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fpn*, %struct.fpn** %4, align 8
  %28 = getelementptr inbounds %struct.fpn, %struct.fpn* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FP_NMANT, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %2
  %36 = load %struct.fpn*, %struct.fpn** %4, align 8
  %37 = getelementptr inbounds %struct.fpn, %struct.fpn* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.fpn*, %struct.fpn** %4, align 8
  %41 = getelementptr inbounds %struct.fpn, %struct.fpn* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.fpn*, %struct.fpn** %4, align 8
  %45 = getelementptr inbounds %struct.fpn, %struct.fpn* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 0, i32* %47, align 4
  %48 = load %struct.fpn*, %struct.fpn** %4, align 8
  %49 = getelementptr inbounds %struct.fpn, %struct.fpn* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.fpn*, %struct.fpn** %4, align 8
  %53 = getelementptr inbounds %struct.fpn, %struct.fpn* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  store i32 1, i32* %3, align 4
  br label %153

54:                                               ; preds = %2
  %55 = load %struct.fpn*, %struct.fpn** %4, align 8
  %56 = getelementptr inbounds %struct.fpn, %struct.fpn* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 96
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %92

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 64
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %91

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = icmp sge i32 %81, 32
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 31
  store i32 %94, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 32, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %107, %108
  %110 = or i32 %106, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %96, %92
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.fpn*, %struct.fpn** %4, align 8
  %131 = getelementptr inbounds %struct.fpn, %struct.fpn* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.fpn*, %struct.fpn** %4, align 8
  %136 = getelementptr inbounds %struct.fpn, %struct.fpn* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.fpn*, %struct.fpn** %4, align 8
  %141 = getelementptr inbounds %struct.fpn, %struct.fpn* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.fpn*, %struct.fpn** %4, align 8
  %146 = getelementptr inbounds %struct.fpn, %struct.fpn* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.fpn*, %struct.fpn** %4, align 8
  %151 = getelementptr inbounds %struct.fpn, %struct.fpn* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %128, %35
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
