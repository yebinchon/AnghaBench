; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_bufinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_bufinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufarea = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@pdirbp = common dso_local global %struct.bufarea* null, align 8
@pbp = common dso_local global %struct.bufarea* null, align 8
@sblock = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot allocate buffer pool\00", align 1
@cgblk = common dso_local global %struct.bufarea zeroinitializer, align 8
@BT_CYLGRP = common dso_local global i32 0, align 4
@bufhead = common dso_local global i32 0, align 4
@MAXBUFS = common dso_local global i64 0, align 8
@MINBUFS = common dso_local global i64 0, align 8
@b_list = common dso_local global i32 0, align 4
@BT_UNKNOWN = common dso_local global i32 0, align 4
@numbufs = common dso_local global i64 0, align 8
@BT_NUMBUFTYPES = common dso_local global i64 0, align 8
@totalreadtime = common dso_local global %struct.TYPE_6__* null, align 8
@readtime = common dso_local global %struct.TYPE_8__* null, align 8
@totalreadcnt = common dso_local global i64* null, align 8
@readcnt = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufinit() #0 {
  %1 = alloca %struct.bufarea*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.bufarea* null, %struct.bufarea** @pdirbp, align 8
  store %struct.bufarea* null, %struct.bufarea** @pbp, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %6 = trunc i64 %5 to i32
  %7 = call i8* @Malloc(i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @EEXIT, align 4
  %12 = call i32 @errx(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.bufarea, %struct.bufarea* @cgblk, i32 0, i32 0, i32 0), align 8
  %15 = load i32, i32* @BT_CYLGRP, align 4
  %16 = call i32 @initbarea(%struct.bufarea* @cgblk, i32 %15)
  %17 = call i32 @TAILQ_INIT(i32* @bufhead)
  %18 = load i64, i64* @MAXBUFS, align 8
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @MINBUFS, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i64, i64* @MINBUFS, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %13
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = call i8* @Malloc(i32 8)
  %31 = bitcast i8* %30 to %struct.bufarea*
  store %struct.bufarea* %31, %struct.bufarea** %1, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @Malloc(i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load %struct.bufarea*, %struct.bufarea** %1, align 8
  %36 = icmp eq %struct.bufarea* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37, %29
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @MINBUFS, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %62

45:                                               ; preds = %40
  %46 = load i32, i32* @EEXIT, align 4
  %47 = call i32 @errx(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.bufarea*, %struct.bufarea** %1, align 8
  %51 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.bufarea*, %struct.bufarea** %1, align 8
  %54 = load i32, i32* @b_list, align 4
  %55 = call i32 @TAILQ_INSERT_HEAD(i32* @bufhead, %struct.bufarea* %53, i32 %54)
  %56 = load %struct.bufarea*, %struct.bufarea** %1, align 8
  %57 = load i32, i32* @BT_UNKNOWN, align 4
  %58 = call i32 @initbarea(%struct.bufarea* %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %25

62:                                               ; preds = %44, %25
  %63 = load i64, i64* %3, align 8
  store i64 %63, i64* @numbufs, align 8
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %91, %62
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @BT_NUMBUFTYPES, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @totalreadtime, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @readtime, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @totalreadtime, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @readtime, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load i64*, i64** @totalreadcnt, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 0, i64* %87, align 8
  %88 = load i64*, i64** @readcnt, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %68
  %92 = load i64, i64* %3, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %3, align 8
  br label %64

94:                                               ; preds = %64
  ret void
}

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @initbarea(%struct.bufarea*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.bufarea*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
