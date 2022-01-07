; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_plusLoopParen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_plusLoopParen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @plusLoopParen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plusLoopParen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @stackGetTop(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @stackFetch(i32 %19, i32 1)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = call i64 (...) @POP()
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %43

38:                                               ; preds = %1
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp sge i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @stackDrop(i32 %49, i32 3)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = call i32 @vmBranchRelative(%struct.TYPE_8__* %51, i64 1)
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @LVALUEtoCELL(i64 %57)
  %59 = call i32 @stackSetTop(i32 %56, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vmBranchRelative(%struct.TYPE_8__* %60, i64 %64)
  br label %66

66:                                               ; preds = %53, %46
  ret void
}

declare dso_local i64 @stackGetTop(i32) #1

declare dso_local i64 @stackFetch(i32, i32) #1

declare dso_local i64 @POP(...) #1

declare dso_local i32 @stackDrop(i32, i32) #1

declare dso_local i32 @vmBranchRelative(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @stackSetTop(i32, i32) #1

declare dso_local i32 @LVALUEtoCELL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
