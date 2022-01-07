; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_ficl.c_ficlExecXT.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_ficl.c_ficlExecXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ficlExecXT(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store i32* %6, i32** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @setjmp(i32 %25) #3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i32 @vmPopIP(%struct.TYPE_12__* %30)
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @vmPushIP(%struct.TYPE_12__* %33, %struct.TYPE_12__** %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %49 [
    i32 0, label %41
    i32 132, label %47
    i32 134, label %47
    i32 129, label %48
    i32 131, label %48
    i32 128, label %48
    i32 130, label %48
    i32 133, label %48
    i32 136, label %48
    i32 135, label %48
  ]

41:                                               ; preds = %39
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @vmExecute(%struct.TYPE_12__* %42, i32* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 @vmInnerLoop(%struct.TYPE_12__* %45)
  br label %60

47:                                               ; preds = %39, %39
  br label %60

48:                                               ; preds = %39, %39, %39, %39, %39, %39, %39
  br label %49

49:                                               ; preds = %39, %48
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @vmThrow(%struct.TYPE_12__* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %59, %47, %41
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @vmPopIP(%struct.TYPE_12__*) #1

declare dso_local i32 @vmPushIP(%struct.TYPE_12__*, %struct.TYPE_12__**) #1

declare dso_local i32 @vmExecute(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @vmInnerLoop(%struct.TYPE_12__*) #1

declare dso_local i32 @vmThrow(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
