; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_finalIOstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_finalIOstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Final I/O statistics\0A\00", align 1
@diskreads = common dso_local global i64 0, align 8
@totaldiskreads = common dso_local global i64 0, align 8
@startprog = common dso_local global i32 0, align 4
@startpass = common dso_local global i32 0, align 4
@BT_NUMBUFTYPES = common dso_local global i32 0, align 4
@totalreadtime = common dso_local global i32* null, align 8
@readtime = common dso_local global i32* null, align 8
@readcnt = common dso_local global i64* null, align 8
@totalreadcnt = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalIOstats() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @debug, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %64

5:                                                ; preds = %0
  %6 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @diskreads, align 8
  %8 = load i64, i64* @totaldiskreads, align 8
  %9 = add nsw i64 %8, %7
  store i64 %9, i64* @totaldiskreads, align 8
  %10 = load i64, i64* @totaldiskreads, align 8
  store i64 %10, i64* @diskreads, align 8
  %11 = load i32, i32* @startprog, align 4
  store i32 %11, i32* @startpass, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %59, %5
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load i32*, i32** @totalreadtime, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32*, i32** @readtime, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32*, i32** @totalreadtime, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @timespecadd(i32* %20, i32* %24, i32* %28)
  %30 = load i64*, i64** @readcnt, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @totalreadcnt, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %34
  store i64 %40, i64* %38, align 8
  %41 = load i32*, i32** @totalreadtime, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @readtime, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i64*, i64** @totalreadcnt, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** @readcnt, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %16
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %12

62:                                               ; preds = %12
  %63 = call i32 (...) @printIOstats()
  br label %64

64:                                               ; preds = %62, %4
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @timespecadd(i32*, i32*, i32*) #1

declare dso_local i32 @printIOstats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
