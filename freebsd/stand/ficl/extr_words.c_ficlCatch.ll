; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlCatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlCatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @ficlCatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ficlCatch(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @stackPopPtr(i64 %19)
  store i32* %20, i32** %8, align 8
  %21 = bitcast %struct.TYPE_12__* %5 to i8*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = bitcast %struct.TYPE_12__* %22 to i8*
  %24 = call i32 @memcpy(i8* %21, i8* %23, i32 32)
  %25 = bitcast i32* %6 to i8*
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @memcpy(i8* %25, i8* %29, i32 4)
  %31 = bitcast i32* %7 to i8*
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @memcpy(i8* %31, i8* %35, i32 4)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  store i32* %4, i32** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @setjmp(i32 %39) #3
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  switch i32 %41, label %62 [
    i32 0, label %42
    i32 128, label %54
  ]

42:                                               ; preds = %1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @vmPushIP(%struct.TYPE_12__* %43, %struct.TYPE_12__** %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @vmExecute(%struct.TYPE_12__* %49, i32* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = call i32 @vmInnerLoop(%struct.TYPE_12__* %52)
  br label %81

54:                                               ; preds = %1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = call i32 @vmPopIP(%struct.TYPE_12__* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = call i32 @PUSHINT(i32 0)
  br label %81

62:                                               ; preds = %1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = bitcast %struct.TYPE_12__* %63 to i8*
  %65 = bitcast %struct.TYPE_12__* %5 to i8*
  %66 = call i32 @memcpy(i8* %64, i8* %65, i32 32)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = bitcast i32* %6 to i8*
  %72 = call i32 @memcpy(i8* %70, i8* %71, i32 4)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = bitcast i32* %7 to i8*
  %78 = call i32 @memcpy(i8* %76, i8* %77, i32 4)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @PUSHINT(i32 %79)
  br label %81

81:                                               ; preds = %62, %54, %42
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32* @stackPopPtr(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @vmPushIP(%struct.TYPE_12__*, %struct.TYPE_12__**) #1

declare dso_local i32 @vmExecute(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @vmInnerLoop(%struct.TYPE_12__*) #1

declare dso_local i32 @vmPopIP(%struct.TYPE_12__*) #1

declare dso_local i32 @PUSHINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
