; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_deleteln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_deleteln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_14__*, i64, i64)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i64*, i64*)*, i32 (%struct.TYPE_14__*)* }

@SC_SCR_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @vs_deleteln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_deleteln(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i64 @IS_VSPLIT(%struct.TYPE_14__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load i32, i32* @SC_SCR_REDRAW, align 4
  %18 = call i32 @F_SET(%struct.TYPE_14__* %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i64 @IS_ONELINE(%struct.TYPE_14__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = call i32 %26(%struct.TYPE_14__* %27)
  br label %65

29:                                               ; preds = %19
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = load i32 (%struct.TYPE_14__*, i64*, i64*)*, i32 (%struct.TYPE_14__*, i64*, i64*)** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = call i32 %32(%struct.TYPE_14__* %33, i64* %7, i64* %8)
  br label %35

35:                                               ; preds = %39, %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = call i32 %42(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_14__*, i64, i64)*, i32 (%struct.TYPE_14__*, i64, i64)** %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = call i64 @LASTLINE(%struct.TYPE_14__* %49)
  %51 = call i32 %47(%struct.TYPE_14__* %48, i64 %50, i64 0)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = call i32 %54(%struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_14__*, i64, i64)*, i32 (%struct.TYPE_14__*, i64, i64)** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 %59(%struct.TYPE_14__* %60, i64 %61, i64 %62)
  br label %35

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %64, %23
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @IS_VSPLIT(%struct.TYPE_14__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @IS_ONELINE(%struct.TYPE_14__*) #1

declare dso_local i64 @LASTLINE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
