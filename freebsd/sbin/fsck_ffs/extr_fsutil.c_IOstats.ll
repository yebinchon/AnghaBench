; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_IOstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_IOstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@debug = common dso_local global i64 0, align 8
@diskreads = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s: no I/O\0A\0A\00", align 1
@startpass = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@startprog = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: I/O statistics\0A\00", align 1
@totaldiskreads = common dso_local global i32 0, align 4
@BT_NUMBUFTYPES = common dso_local global i32 0, align 4
@totalreadtime = common dso_local global i32* null, align 8
@readtime = common dso_local global %struct.TYPE_6__* null, align 8
@readcnt = common dso_local global i64* null, align 8
@totalreadcnt = common dso_local global i32* null, align 8
@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IOstats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @debug, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %77

7:                                                ; preds = %1
  %8 = load i64, i64* @diskreads, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %77

13:                                               ; preds = %7
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @startpass, i32 0, i32 0), align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @startpass to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @startprog to i8*), i64 8, i1 false)
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 (...) @printIOstats()
  %21 = load i64, i64* @diskreads, align 8
  %22 = load i32, i32* @totaldiskreads, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @totaldiskreads, align 4
  store i64 0, i64* @diskreads, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %71, %17
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load i32*, i32** @totalreadtime, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @readtime, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = load i32*, i32** @totalreadtime, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @timespecadd(i32* %34, %struct.TYPE_6__* %38, i32* %42)
  %44 = load i64*, i64** @readcnt, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** @totalreadcnt, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %48
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @readtime, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @readtime, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** @readcnt, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %30
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %76 = call i32 @clock_gettime(i32 %75, %struct.TYPE_7__* @startpass)
  br label %77

77:                                               ; preds = %74, %10, %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printIOstats(...) #1

declare dso_local i32 @timespecadd(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
