; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_atm_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_atm_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"VPI:%u VCI:%u \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"broadcast sig: \00", align 1
@ATM_OAM_HEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"meta: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ilmi: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atm_print(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64 %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  %24 = call i32 @ND_PRINT(%struct.TYPE_9__* %23)
  br label %25

25:                                               ; preds = %19, %7
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  switch i64 %29, label %53 [
    i64 128, label %30
    i64 133, label %34
    i64 129, label %37
    i64 130, label %37
    i64 131, label %43
    i64 132, label %46
  ]

30:                                               ; preds = %28
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @sig_print(%struct.TYPE_9__* %31, i32* %32)
  br label %69

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([16 x i8]* @.str.1 to %struct.TYPE_9__*))
  br label %69

37:                                               ; preds = %28, %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @ATM_OAM_HEC, align 4
  %42 = call i32 @oam_print(%struct.TYPE_9__* %38, i32* %39, i64 %40, i32 %41)
  br label %69

43:                                               ; preds = %28
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([7 x i8]* @.str.2 to %struct.TYPE_9__*))
  br label %69

46:                                               ; preds = %28
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([7 x i8]* @.str.3 to %struct.TYPE_9__*))
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @snmp_print(%struct.TYPE_9__* %49, i32* %50, i64 %51)
  br label %69

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i64, i64* %11, align 8
  switch i64 %55, label %57 [
    i64 134, label %56
    i64 135, label %63
  ]

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %54, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @atm_llc_print(%struct.TYPE_9__* %58, i32* %59, i64 %60, i64 %61)
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @lane_print(%struct.TYPE_9__* %64, i32* %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %30, %34, %37, %43, %46, %63, %57
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @sig_print(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @oam_print(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i32 @snmp_print(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @atm_llc_print(%struct.TYPE_9__*, i32*, i64, i64) #1

declare dso_local i32 @lane_print(%struct.TYPE_9__*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
