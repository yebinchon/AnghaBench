; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_expl.h___k_expl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_expl.h___k_expl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { x86_fp80, x86_fp80 }

@INV_L = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@L1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@L2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@INTERVALS = common dso_local global i32 0, align 4
@LOG2_INTERVALS = common dso_local global i32 0, align 4
@A2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@tbl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80*, x86_fp80*, i32*)* @__k_expl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__k_expl(x86_fp80 %0, x86_fp80* %1, x86_fp80* %2, i32* %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80*, align 8
  %7 = alloca x86_fp80*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80* %1, x86_fp80** %6, align 8
  store x86_fp80* %2, x86_fp80** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load x86_fp80, x86_fp80* %5, align 16
  %19 = load x86_fp80, x86_fp80* @INV_L, align 16
  %20 = fmul x86_fp80 %18, %19
  %21 = call x86_fp80 @rnintl(x86_fp80 %20)
  store x86_fp80 %21, x86_fp80* %9, align 16
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = load x86_fp80, x86_fp80* %9, align 16
  %24 = load x86_fp80, x86_fp80* @L1, align 16
  %25 = fmul x86_fp80 %23, %24
  %26 = fsub x86_fp80 %22, %25
  %27 = load x86_fp80, x86_fp80* %9, align 16
  %28 = load x86_fp80, x86_fp80* @L2, align 16
  %29 = fmul x86_fp80 %27, %28
  %30 = fsub x86_fp80 %26, %29
  store x86_fp80 %30, x86_fp80* %11, align 16
  %31 = load x86_fp80, x86_fp80* %9, align 16
  %32 = call i32 @irint(x86_fp80 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @INTERVALS, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @LOG2_INTERVALS, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load x86_fp80, x86_fp80* %5, align 16
  %41 = load x86_fp80, x86_fp80* %9, align 16
  %42 = load x86_fp80, x86_fp80* @L1, align 16
  %43 = fmul x86_fp80 %41, %42
  %44 = fsub x86_fp80 %40, %43
  store x86_fp80 %44, x86_fp80* %12, align 16
  %45 = load x86_fp80, x86_fp80* %9, align 16
  %46 = load x86_fp80, x86_fp80* @L2, align 16
  %47 = fneg x86_fp80 %46
  %48 = fmul x86_fp80 %45, %47
  store x86_fp80 %48, x86_fp80* %13, align 16
  %49 = load x86_fp80, x86_fp80* %11, align 16
  %50 = load x86_fp80, x86_fp80* %11, align 16
  %51 = fmul x86_fp80 %49, %50
  store x86_fp80 %51, x86_fp80* %15, align 16
  %52 = load x86_fp80, x86_fp80* %13, align 16
  %53 = load x86_fp80, x86_fp80* %15, align 16
  %54 = load x86_fp80, x86_fp80* @A2, align 16
  %55 = fmul x86_fp80 %53, %54
  %56 = fadd x86_fp80 %52, %55
  %57 = load x86_fp80, x86_fp80* %15, align 16
  %58 = load x86_fp80, x86_fp80* %11, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* @A3, align 16
  %61 = load x86_fp80, x86_fp80* %11, align 16
  %62 = load x86_fp80, x86_fp80* @A4, align 16
  %63 = fmul x86_fp80 %61, %62
  %64 = fadd x86_fp80 %60, %63
  %65 = load x86_fp80, x86_fp80* %15, align 16
  %66 = load x86_fp80, x86_fp80* @A5, align 16
  %67 = load x86_fp80, x86_fp80* %11, align 16
  %68 = load x86_fp80, x86_fp80* @A6, align 16
  %69 = fmul x86_fp80 %67, %68
  %70 = fadd x86_fp80 %66, %69
  %71 = fmul x86_fp80 %65, %70
  %72 = fadd x86_fp80 %64, %71
  %73 = fmul x86_fp80 %59, %72
  %74 = fadd x86_fp80 %56, %73
  store x86_fp80 %74, x86_fp80* %10, align 16
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load x86_fp80, x86_fp80* %79, align 16
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load x86_fp80, x86_fp80* %85, align 16
  %87 = fadd x86_fp80 %80, %86
  store x86_fp80 %87, x86_fp80* %14, align 16
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load x86_fp80, x86_fp80* %92, align 16
  %94 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %93, x86_fp80* %94, align 16
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load x86_fp80, x86_fp80* %99, align 16
  %101 = load x86_fp80, x86_fp80* %14, align 16
  %102 = load x86_fp80, x86_fp80* %10, align 16
  %103 = load x86_fp80, x86_fp80* %12, align 16
  %104 = fadd x86_fp80 %102, %103
  %105 = fmul x86_fp80 %101, %104
  %106 = fadd x86_fp80 %100, %105
  %107 = load x86_fp80*, x86_fp80** %7, align 8
  store x86_fp80 %106, x86_fp80* %107, align 16
  ret void
}

declare dso_local x86_fp80 @rnintl(x86_fp80) #1

declare dso_local i32 @irint(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
