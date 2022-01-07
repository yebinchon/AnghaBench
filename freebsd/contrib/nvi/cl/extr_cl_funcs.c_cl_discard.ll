; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }

@CL_LAYOUT = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_discard(%struct.TYPE_6__* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32* @CLP(%struct.TYPE_6__* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @CL_LAYOUT, align 4
  %15 = call i32 @F_SET(i32* %13, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i64 @CLSP(%struct.TYPE_6__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i64 @CLSP(%struct.TYPE_6__* %20)
  %22 = call i32 @delwin(i64 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %19, %10
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %28 = icmp ne %struct.TYPE_6__** %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %69

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %65, %30
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %7, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = call i32* @CLP(%struct.TYPE_6__* %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @CL_LAYOUT, align 4
  %40 = call i32 @F_SET(i32* %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = call i64 @CLSP(%struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = call i64 @CLSP(%struct.TYPE_6__* %45)
  %47 = call i32 @delwin(i64 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i32, i32* @stdscr, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @subwin(i32 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %48
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i32 1
  store %struct.TYPE_6__** %67, %struct.TYPE_6__*** %5, align 8
  br label %31

68:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @CLP(%struct.TYPE_6__*) #1

declare dso_local i32 @F_SET(i32*, i32) #1

declare dso_local i64 @CLSP(%struct.TYPE_6__*) #1

declare dso_local i32 @delwin(i64) #1

declare dso_local i32* @subwin(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
