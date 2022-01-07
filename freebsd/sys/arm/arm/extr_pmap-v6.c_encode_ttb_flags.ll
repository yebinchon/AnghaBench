; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_encode_ttb_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_encode_ttb_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tex_class = common dso_local global i32* null, align 8
@TEXDEF_INNER_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_INNER_MASK = common dso_local global i32 0, align 4
@TEXDEF_OUTER_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_OUTER_MASK = common dso_local global i32 0, align 4
@TEXDEF_NOS_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_NOS_MASK = common dso_local global i32 0, align 4
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @encode_ttb_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_ttb_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @tex_class, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TEXDEF_INNER_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @TEXDEF_INNER_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** @tex_class, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TEXDEF_OUTER_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @TEXDEF_OUTER_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** @tex_class, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TEXDEF_NOS_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @TEXDEF_NOS_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 5
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 3
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 1
  %45 = shl i32 %44, 6
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 2
  %51 = ashr i32 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
