; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_removeHistHashTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_removeHistHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@histHashTable = common dso_local global %struct.Hist** null, align 8
@histHashTableLength = common dso_local global i32 0, align 4
@emptyHTE = common dso_local global %struct.Hist* null, align 8
@deletedHTE = common dso_local global %struct.Hist* null, align 8
@hashStats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"Hist entry not found in hash table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Hist*)* @removeHistHashTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removeHistHashTable(%struct.Hist* %0) #0 {
  %2 = alloca %struct.Hist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Hist* %0, %struct.Hist** %2, align 8
  %6 = load %struct.Hist*, %struct.Hist** %2, align 8
  %7 = getelementptr inbounds %struct.Hist, %struct.Hist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %10 = icmp ne %struct.Hist** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  br label %95

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %90, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @histHashTableLength, align 4
  %19 = call i64 @hash2tableIndex(i32 %17, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Hist*, %struct.Hist** %21, i64 %23
  %25 = load %struct.Hist*, %struct.Hist** %24, align 8
  %26 = load %struct.Hist*, %struct.Hist** @emptyHTE, align 8
  %27 = icmp ne %struct.Hist* %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %16
  %29 = load %struct.Hist*, %struct.Hist** %2, align 8
  %30 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Hist*, %struct.Hist** %30, i64 %32
  %34 = load %struct.Hist*, %struct.Hist** %33, align 8
  %35 = icmp eq %struct.Hist* %29, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  %37 = load %struct.Hist*, %struct.Hist** @deletedHTE, align 8
  %38 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Hist*, %struct.Hist** %38, i64 %40
  store %struct.Hist* %37, %struct.Hist** %41, align 8
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %53, %36
  %43 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* @histHashTableLength, align 4
  %48 = call i64 @hash2tableIndex(i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.Hist*, %struct.Hist** %43, i64 %48
  %50 = load %struct.Hist*, %struct.Hist** %49, align 8
  %51 = load %struct.Hist*, %struct.Hist** @deletedHTE, align 8
  %52 = icmp eq %struct.Hist* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* @histHashTableLength, align 4
  %62 = call i64 @hash2tableIndex(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.Hist*, %struct.Hist** %57, i64 %62
  %64 = load %struct.Hist*, %struct.Hist** %63, align 8
  %65 = load %struct.Hist*, %struct.Hist** @emptyHTE, align 8
  %66 = icmp eq %struct.Hist* %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %73, %67
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %4, align 4
  %72 = icmp ugt i32 %70, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.Hist*, %struct.Hist** @emptyHTE, align 8
  %75 = load %struct.Hist**, %struct.Hist*** @histHashTable, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* @histHashTableLength, align 4
  %80 = call i64 @hash2tableIndex(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.Hist*, %struct.Hist** %75, i64 %80
  store %struct.Hist* %74, %struct.Hist** %81, align 8
  br label %69

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %5, align 4
  %85 = sub i32 1, %84
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hashStats, i32 0, i32 0), align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hashStats, i32 0, i32 0), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hashStats, i32 0, i32 1), align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hashStats, i32 0, i32 1), align 4
  br label %95

90:                                               ; preds = %28
  %91 = load i32, i32* %3, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %16

93:                                               ; preds = %16
  %94 = call i32 @assert(i32 0)
  br label %95

95:                                               ; preds = %93, %83, %14
  ret void
}

declare dso_local i64 @hash2tableIndex(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
