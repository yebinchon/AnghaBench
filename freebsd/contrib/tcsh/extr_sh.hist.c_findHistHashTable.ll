; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_findHistHashTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_findHistHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i32, i32 }
%struct.wordent = type { i32 }

@histHashTable = common dso_local global %struct.Hist** null, align 8
@histHashTableLength = common dso_local global i32 0, align 4
@emptyHTE = common dso_local global %struct.Hist* null, align 8
@deletedHTE = common dso_local global %struct.Hist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Hist* (%struct.wordent*, i32)* @findHistHashTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Hist* @findHistHashTable(%struct.wordent* %0, i32 %1) #0 {
  %3 = alloca %struct.Hist*, align 8
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Hist*, align 8
  store %struct.wordent* %0, %struct.wordent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %11 = icmp ne %struct.Hist** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.Hist* null, %struct.Hist** %3, align 8
  br label %63

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @histHashTableLength, align 4
  %17 = call i32 @hash2tableIndex(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Hist*, %struct.Hist** %18, i64 %20
  %22 = load %struct.Hist*, %struct.Hist** %21, align 8
  store %struct.Hist* %22, %struct.Hist** %8, align 8
  %23 = load %struct.Hist*, %struct.Hist** @emptyHTE, align 8
  %24 = icmp ne %struct.Hist* %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %14
  %26 = load %struct.Hist*, %struct.Hist** %8, align 8
  %27 = load %struct.Hist*, %struct.Hist** @deletedHTE, align 8
  %28 = icmp eq %struct.Hist* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %47

32:                                               ; preds = %25
  %33 = load %struct.Hist*, %struct.Hist** %8, align 8
  %34 = getelementptr inbounds %struct.Hist, %struct.Hist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.wordent*, %struct.wordent** %4, align 8
  %40 = load %struct.Hist*, %struct.Hist** %8, align 8
  %41 = getelementptr inbounds %struct.Hist, %struct.Hist* %40, i32 0, i32 1
  %42 = call i64 @heq(%struct.wordent* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.Hist*, %struct.Hist** %8, align 8
  store %struct.Hist* %45, %struct.Hist** %3, align 8
  br label %63

46:                                               ; preds = %38, %32
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @histHashTableLength, align 4
  %50 = ashr i32 %49, 4
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = call i32 (...) @discardHistHashTable()
  %54 = load i32, i32* @histHashTableLength, align 4
  %55 = call i32 @createHistHashTable(i32 %54)
  %56 = load %struct.wordent*, %struct.wordent** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.Hist* @findHistHashTable(%struct.wordent* %56, i32 %57)
  store %struct.Hist* %58, %struct.Hist** %3, align 8
  br label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %14

62:                                               ; preds = %14
  store %struct.Hist* null, %struct.Hist** %3, align 8
  br label %63

63:                                               ; preds = %62, %52, %44, %12
  %64 = load %struct.Hist*, %struct.Hist** %3, align 8
  ret %struct.Hist* %64
}

declare dso_local i32 @hash2tableIndex(i32, i32) #1

declare dso_local i64 @heq(%struct.wordent*, i32*) #1

declare dso_local i32 @discardHistHashTable(...) #1

declare dso_local i32 @createHistHashTable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
