; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_balloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_balloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.cg }
%struct.cg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@journal_balloc.contig = internal global i32 1, align 4
@disk = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to write updated cg\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Journal file fragmented.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to find sufficient free blocks for the journal\00", align 1
@sblock = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@clrbuf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to initialize new block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @journal_balloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @journal_balloc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.cg*, align 8
  %4 = alloca i32, align 4
  store %struct.cg* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @disk, i32 0, i32 1), %struct.cg** %3, align 8
  br label %5

5:                                                ; preds = %44, %40, %0
  %6 = call i64 @cgballoc(%struct.TYPE_11__* @disk)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %48

10:                                               ; preds = %5
  %11 = call i64 @cgwrite(%struct.TYPE_11__* @disk)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %1, align 8
  br label %59

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %36, %15
  %17 = call i32 @cgread(%struct.TYPE_11__* @disk)
  store i32 %17, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.cg*, %struct.cg** %3, align 8
  %21 = getelementptr inbounds %struct.cg, %struct.cg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 262144
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %37

26:                                               ; preds = %19
  %27 = load i32, i32* @journal_balloc.contig, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.cg*, %struct.cg** %3, align 8
  %31 = getelementptr inbounds %struct.cg, %struct.cg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %29, %26
  br label %16

37:                                               ; preds = %35, %25, %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %5

41:                                               ; preds = %37
  %42 = load i32, i32* @journal_balloc.contig, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  store i32 0, i32* @journal_balloc.contig, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @disk, i32 0, i32 0), align 8
  %45 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %5

46:                                               ; preds = %41
  %47 = call i32 @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i64 -1, i64* %1, align 8
  br label %59

48:                                               ; preds = %9
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @fsbtodb(%struct.TYPE_10__* @sblock, i64 %49)
  %51 = load i32, i32* @clrbuf, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sblock, i32 0, i32 0), align 4
  %53 = call i64 @bwrite(%struct.TYPE_11__* @disk, i32 %50, i32 %51, i32 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i64 -1, i64* %1, align 8
  br label %59

57:                                               ; preds = %48
  %58 = load i64, i64* %2, align 8
  store i64 %58, i64* %1, align 8
  br label %59

59:                                               ; preds = %57, %55, %46, %13
  %60 = load i64, i64* %1, align 8
  ret i64 %60
}

declare dso_local i64 @cgballoc(%struct.TYPE_11__*) #1

declare dso_local i64 @cgwrite(%struct.TYPE_11__*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cgread(%struct.TYPE_11__*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @bwrite(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
