; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ResetArrowKeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ResetArrowKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@F_DOWN_HIST = common dso_local global i32 0, align 4
@arrow = common dso_local global %struct.TYPE_4__* null, align 8
@A_K_DN = common dso_local global i64 0, align 8
@XK_CMD = common dso_local global i8* null, align 8
@F_UP_HIST = common dso_local global i32 0, align 4
@A_K_UP = common dso_local global i64 0, align 8
@F_CHARBACK = common dso_local global i32 0, align 4
@A_K_LT = common dso_local global i64 0, align 8
@F_CHARFWD = common dso_local global i32 0, align 4
@A_K_RT = common dso_local global i64 0, align 8
@F_TOBEG = common dso_local global i32 0, align 4
@A_K_HO = common dso_local global i64 0, align 8
@F_TOEND = common dso_local global i32 0, align 4
@A_K_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetArrowKeys() #0 {
  %1 = load i32, i32* @F_DOWN_HIST, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %3 = load i64, i64* @A_K_DN, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %1, i32* %6, align 8
  %7 = load i8*, i8** @XK_CMD, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %9 = load i64, i64* @A_K_DN, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @F_UP_HIST, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %14 = load i64, i64* @A_K_UP, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 8
  %18 = load i8*, i8** @XK_CMD, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %20 = load i64, i64* @A_K_UP, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load i32, i32* @F_CHARBACK, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %25 = load i64, i64* @A_K_LT, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i8*, i8** @XK_CMD, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %31 = load i64, i64* @A_K_LT, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* @F_CHARFWD, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %36 = load i64, i64* @A_K_RT, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load i8*, i8** @XK_CMD, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %42 = load i64, i64* @A_K_RT, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* @F_TOBEG, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %47 = load i64, i64* @A_K_HO, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  %51 = load i8*, i8** @XK_CMD, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %53 = load i64, i64* @A_K_HO, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* @F_TOEND, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %58 = load i64, i64* @A_K_EN, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 8
  %62 = load i8*, i8** @XK_CMD, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arrow, align 8
  %64 = load i64, i64* @A_K_EN, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
