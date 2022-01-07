; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_ficl.c_ficlExecC.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_ficl.c_ficlExecC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, i32, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*)* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_23__**, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@COMPILE = common dso_local global i32 0, align 4
@FICL_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ficlExecC(%struct.TYPE_23__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %7, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = call i32 @assert(%struct.TYPE_23__* %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %23, i64 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = call i32 @assert(%struct.TYPE_23__* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @vmPushTib(%struct.TYPE_23__* %33, i8* %34, i32 %35, i32* %12)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %11, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  store i32* %10, i32** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @setjmp(i32 %42) #3
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %90 [
    i32 0, label %45
    i32 129, label %70
    i32 131, label %73
    i32 128, label %76
    i32 132, label %76
    i32 134, label %76
    i32 130, label %77
    i32 133, label %89
    i32 136, label %89
    i32 135, label %89
  ]

45:                                               ; preds = %32
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = call i32 %55(%struct.TYPE_23__* %56)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %67

60:                                               ; preds = %45
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %64, i64 0
  %66 = call i32 @vmPushIP(%struct.TYPE_23__* %61, %struct.TYPE_23__** %65)
  br label %67

67:                                               ; preds = %60, %50
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = call i32 @vmInnerLoop(%struct.TYPE_23__* %68)
  br label %104

70:                                               ; preds = %32
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  store i32 131, i32* %9, align 4
  br label %104

73:                                               ; preds = %32
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i32 @vmPopIP(%struct.TYPE_23__* %74)
  br label %104

76:                                               ; preds = %32, %32, %32
  br label %104

77:                                               ; preds = %32
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @COMPILE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @dictAbortDefinition(i32* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = call i32 @vmQuit(%struct.TYPE_23__* %87)
  br label %104

89:                                               ; preds = %32, %32, %32
  br label %90

90:                                               ; preds = %32, %89
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @COMPILE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @dictAbortDefinition(i32* %97)
  br label %99

99:                                               ; preds = %96, %90
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @dictResetSearchOrder(i32* %100)
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = call i32 @vmReset(%struct.TYPE_23__* %102)
  br label %104

104:                                              ; preds = %99, %86, %76, %73, %70, %67
  %105 = load i32*, i32** %11, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = call i32 @vmPopTib(%struct.TYPE_23__* %108, i32* %12)
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @assert(%struct.TYPE_23__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vmPushTib(%struct.TYPE_23__*, i8*, i32, i32*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @vmPushIP(%struct.TYPE_23__*, %struct.TYPE_23__**) #1

declare dso_local i32 @vmInnerLoop(%struct.TYPE_23__*) #1

declare dso_local i32 @vmPopIP(%struct.TYPE_23__*) #1

declare dso_local i32 @dictAbortDefinition(i32*) #1

declare dso_local i32 @vmQuit(%struct.TYPE_23__*) #1

declare dso_local i32 @dictResetSearchOrder(i32*) #1

declare dso_local i32 @vmReset(%struct.TYPE_23__*) #1

declare dso_local i32 @vmPopTib(%struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
