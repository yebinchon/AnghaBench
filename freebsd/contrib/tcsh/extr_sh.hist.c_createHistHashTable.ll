; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_createHistHashTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_createHistHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i32, i32, %struct.Hist* }

@histlen = common dso_local global i32 0, align 4
@histHashTable = common dso_local global i64* null, align 8
@histCount = common dso_local global i32 0, align 4
@histHashTableLength = common dso_local global i32 0, align 4
@emptyHTE = common dso_local global i64 0, align 8
@Histlist = common dso_local global %struct.Hist zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @createHistHashTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createHistHashTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Hist*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @discardHistHashTable()
  br label %87

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @histlen, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %87

16:                                               ; preds = %12
  %17 = load i32, i32* @histlen, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i64*, i64** @histHashTable, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @histCount, align 4
  %23 = load i32, i32* @histHashTableLength, align 4
  %24 = mul nsw i32 %23, 3
  %25 = sdiv i32 %24, 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %87

28:                                               ; preds = %21
  %29 = call i32 (...) @discardHistHashTable()
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @histCount, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @histCount, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @getHashTableSize(i32 %39)
  store i32 %40, i32* @histHashTableLength, align 4
  %41 = load i32, i32* @histHashTableLength, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64* @xmalloc(i32 %44)
  store i64* %45, i64** @histHashTable, align 8
  %46 = load i64*, i64** @histHashTable, align 8
  %47 = load i32, i32* @histHashTableLength, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(i64* %46, i32 0, i32 %50)
  %52 = load i64*, i64** @histHashTable, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @emptyHTE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store %struct.Hist* @Histlist, %struct.Hist** %3, align 8
  br label %59

59:                                               ; preds = %78, %38
  %60 = load %struct.Hist*, %struct.Hist** %3, align 8
  %61 = getelementptr inbounds %struct.Hist, %struct.Hist* %60, i32 0, i32 2
  %62 = load %struct.Hist*, %struct.Hist** %61, align 8
  store %struct.Hist* %62, %struct.Hist** %3, align 8
  %63 = icmp ne %struct.Hist* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load %struct.Hist*, %struct.Hist** %3, align 8
  %66 = getelementptr inbounds %struct.Hist, %struct.Hist* %65, i32 0, i32 1
  %67 = call i32 @hashhist(i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.Hist*, %struct.Hist** %3, align 8
  %69 = getelementptr inbounds %struct.Hist, %struct.Hist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.Hist*, %struct.Hist** %3, align 8
  %74 = getelementptr inbounds %struct.Hist, %struct.Hist* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %72, %64
  %79 = phi i1 [ true, %64 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.Hist*, %struct.Hist** %3, align 8
  %83 = getelementptr inbounds %struct.Hist, %struct.Hist* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.Hist*, %struct.Hist** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @insertHistHashTable(%struct.Hist* %84, i32 %85)
  br label %59

87:                                               ; preds = %7, %15, %27, %59
  ret void
}

declare dso_local i32 @discardHistHashTable(...) #1

declare dso_local i32 @getHashTableSize(i32) #1

declare dso_local i64* @xmalloc(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hashhist(i32*) #1

declare dso_local i32 @insertHistHashTable(%struct.Hist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
