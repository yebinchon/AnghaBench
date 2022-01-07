; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_environmentQ.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_environmentQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i64 }

@FICL_TRUE = common dso_local global i32 0, align 4
@FICL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @environmentQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @environmentQ(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @stackPopUNS(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @stackPopPtr(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast %struct.TYPE_9__* %5 to { i32, i64 }*
  %23 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @dictLookup(i32* %21, i32 %24, i64 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @vmExecute(%struct.TYPE_10__* %31, i32* %32)
  %34 = load i32, i32* @FICL_TRUE, align 4
  %35 = call i32 @PUSHINT(i32 %34)
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @FICL_FALSE, align 4
  %38 = call i32 @PUSHINT(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  ret void
}

declare dso_local i64 @stackPopUNS(i32) #1

declare dso_local i32 @stackPopPtr(i32) #1

declare dso_local i32* @dictLookup(i32*, i32, i64) #1

declare dso_local i32 @vmExecute(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @PUSHINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
