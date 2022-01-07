; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_toValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_toValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"%.*s not found\00", align 1
@INTERPRET = common dso_local global i64 0, align 8
@COMPILE = common dso_local global i64 0, align 8
@do2LocalIm = common dso_local global i64 0, align 8
@doLocalIm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @toValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toValue(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = call i32 @vmGetWord(%struct.TYPE_11__* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call i32* @vmGetDict(%struct.TYPE_11__* %9)
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.TYPE_10__* @dictLookup(i32* %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @SI_COUNT(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @SI_PTR(i32 %27)
  %29 = call i32 @vmThrowErr(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INTERPRET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @stackPop(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  br label %61

45:                                               ; preds = %30
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @PUSHPTR(i32* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = call i32 @literalIm(%struct.TYPE_11__* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @LVALUEtoCELL(i32 %58)
  %60 = call i32 @dictAppendCell(i32* %53, i32 %59)
  br label %61

61:                                               ; preds = %45, %36
  ret void
}

declare dso_local i32 @vmGetWord(%struct.TYPE_11__*) #1

declare dso_local i32* @vmGetDict(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @dictLookup(i32*, i32) #1

declare dso_local i32 @SI_COUNT(i32) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @SI_PTR(i32) #1

declare dso_local i32 @stackPop(i32) #1

declare dso_local i32 @PUSHPTR(i32*) #1

declare dso_local i32 @literalIm(%struct.TYPE_11__*) #1

declare dso_local i32 @dictAppendCell(i32*, i32) #1

declare dso_local i32 @LVALUEtoCELL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
