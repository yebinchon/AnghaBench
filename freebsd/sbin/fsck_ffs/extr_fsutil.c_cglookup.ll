; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_cglookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_cglookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufarea = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cg* }
%struct.cg = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@cgbufs = common dso_local global %struct.bufarea* null, align 8
@sblock = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot allocate cylinder group buffers\00", align 1
@flushtries = common dso_local global i64 0, align 8
@cgblk = common dso_local global %struct.bufarea zeroinitializer, align 8
@BT_CYLGRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufarea* @cglookup(i32 %0) #0 {
  %2 = alloca %struct.bufarea*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufarea*, align 8
  %5 = alloca %struct.cg*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.bufarea*, %struct.bufarea** @cgbufs, align 8
  %7 = icmp eq %struct.bufarea* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 1), align 8
  %10 = call %struct.bufarea* @calloc(i32 %9, i32 8)
  store %struct.bufarea* %10, %struct.bufarea** @cgbufs, align 8
  %11 = load %struct.bufarea*, %struct.bufarea** @cgbufs, align 8
  %12 = icmp eq %struct.bufarea* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @EEXIT, align 4
  %15 = call i32 @errx(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.bufarea*, %struct.bufarea** @cgbufs, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %18, i64 %20
  store %struct.bufarea* %21, %struct.bufarea** %4, align 8
  %22 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %23 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.cg*, %struct.cg** %24, align 8
  %26 = icmp ne %struct.cg* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  store %struct.bufarea* %28, %struct.bufarea** %2, align 8
  br label %58

29:                                               ; preds = %17
  store %struct.cg* null, %struct.cg** %5, align 8
  %30 = load i64, i64* @flushtries, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 0), align 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.cg* @malloc(i32 %34)
  store %struct.cg* %35, %struct.cg** %5, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.cg*, %struct.cg** %5, align 8
  %38 = icmp eq %struct.cg* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @cgtod(%struct.TYPE_5__* @sblock, i32 %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 0), align 8
  %43 = call i32 @getblk(%struct.bufarea* @cgblk, i32 %41, i64 %42)
  store %struct.bufarea* @cgblk, %struct.bufarea** %2, align 8
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.cg*, %struct.cg** %5, align 8
  %46 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %47 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.cg* %45, %struct.cg** %48, align 8
  %49 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %50 = load i32, i32* @BT_CYLGRP, align 4
  %51 = call i32 @initbarea(%struct.bufarea* %49, i32 %50)
  %52 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @cgtod(%struct.TYPE_5__* @sblock, i32 %53)
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 0), align 8
  %56 = call i32 @getblk(%struct.bufarea* %52, i32 %54, i64 %55)
  %57 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  store %struct.bufarea* %57, %struct.bufarea** %2, align 8
  br label %58

58:                                               ; preds = %44, %39, %27
  %59 = load %struct.bufarea*, %struct.bufarea** %2, align 8
  ret %struct.bufarea* %59
}

declare dso_local %struct.bufarea* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.cg* @malloc(i32) #1

declare dso_local i32 @getblk(%struct.bufarea*, i32, i64) #1

declare dso_local i32 @cgtod(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @initbarea(%struct.bufarea*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
