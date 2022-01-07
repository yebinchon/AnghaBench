; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlParseWord.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlParseWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@INTERPRET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Error: Compile only!\00", align 1
@FICL_TRUE = common dso_local global i64 0, align 8
@FICL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ficlParseWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ficlParseWord(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32* @vmGetDict(%struct.TYPE_9__* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @dictLookup(i32* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTERPRET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @wordIsCompileOnly(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @vmThrowErr(%struct.TYPE_9__* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @vmExecute(%struct.TYPE_9__* %29, i32* %30)
  %32 = load i64, i64* @FICL_TRUE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %18
  br label %55

35:                                               ; preds = %2
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @wordIsImmediate(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @vmExecute(%struct.TYPE_9__* %43, i32* %44)
  br label %51

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @LVALUEtoCELL(i32* %48)
  %50 = call i32 @dictAppendCell(i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i64, i64* @FICL_TRUE, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* @FICL_FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %51, %28
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @vmGetDict(%struct.TYPE_9__*) #1

declare dso_local i32* @dictLookup(i32*, i32) #1

declare dso_local i64 @wordIsCompileOnly(i32*) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vmExecute(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @wordIsImmediate(i32*) #1

declare dso_local i32 @dictAppendCell(i32*, i32) #1

declare dso_local i32 @LVALUEtoCELL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
