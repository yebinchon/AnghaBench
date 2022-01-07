; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_spcset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_spcset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@termbuf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SLC_VARIABLE = common dso_local global i32 0, align 4
@SLC_FLUSHIN = common dso_local global i32 0, align 4
@SLC_FLUSHOUT = common dso_local global i32 0, align 4
@SLC_DEFAULT = common dso_local global i32 0, align 4
@SLC_NOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spcset(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %86 [
    i32 138, label %9
    i32 140, label %14
    i32 139, label %19
    i32 134, label %24
    i32 144, label %33
    i32 128, label %42
    i32 129, label %47
    i32 143, label %52
    i32 131, label %57
    i32 136, label %62
    i32 132, label %67
    i32 133, label %72
    i32 135, label %77
    i32 141, label %82
    i32 130, label %82
    i32 142, label %82
    i32 137, label %82
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 5), align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 5), i32** %12, align 8
  %13 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %13, i32* %4, align 4
  br label %90

14:                                               ; preds = %3
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 2, i32 1), align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 2, i32 1), i32** %17, align 8
  %18 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %18, i32* %4, align 4
  br label %90

19:                                               ; preds = %3
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 2, i32 0), align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 2, i32 0), i32** %22, align 8
  %23 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %3
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 4), align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 4), i32** %27, align 8
  %28 = load i32, i32* @SLC_VARIABLE, align 4
  %29 = load i32, i32* @SLC_FLUSHIN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SLC_FLUSHOUT, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %90

33:                                               ; preds = %3
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 3), align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 3), i32** %36, align 8
  %37 = load i32, i32* @SLC_VARIABLE, align 4
  %38 = load i32, i32* @SLC_FLUSHIN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SLC_FLUSHOUT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %3
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 2), align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 2), i32** %45, align 8
  %46 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %46, i32* %4, align 4
  br label %90

47:                                               ; preds = %3
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 1), align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 1), i32** %50, align 8
  %51 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %51, i32* %4, align 4
  br label %90

52:                                               ; preds = %3
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 4), align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 4), i32** %55, align 8
  %56 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %56, i32* %4, align 4
  br label %90

57:                                               ; preds = %3
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 3), align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 3), i32** %60, align 8
  %61 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %61, i32* %4, align 4
  br label %90

62:                                               ; preds = %3
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 2), align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 2), i32** %65, align 8
  %66 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %3
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 1), align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 1), i32** %70, align 8
  %71 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %71, i32* %4, align 4
  br label %90

72:                                               ; preds = %3
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 0), align 4
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 0), i32** %75, align 8
  %76 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %76, i32* %4, align 4
  br label %90

77:                                               ; preds = %3
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 1, i32 0), align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32**, i32*** %7, align 8
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @termbuf, i32 0, i32 0, i32 0), i32** %80, align 8
  %81 = load i32, i32* @SLC_VARIABLE, align 4
  store i32 %81, i32* %4, align 4
  br label %90

82:                                               ; preds = %3, %3, %3, %3
  %83 = load i32*, i32** %6, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32**, i32*** %7, align 8
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @SLC_DEFAULT, align 4
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %3
  %87 = load i32*, i32** %6, align 8
  store i32 0, i32* %87, align 4
  %88 = load i32**, i32*** %7, align 8
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* @SLC_NOSUPPORT, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %82, %77, %72, %67, %62, %57, %52, %47, %42, %33, %24, %19, %14, %9
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
