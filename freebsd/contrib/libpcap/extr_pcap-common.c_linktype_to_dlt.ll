; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_linktype_to_dlt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_linktype_to_dlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LINKTYPE_PFSYNC = common dso_local global i32 0, align 4
@DLT_PFSYNC = common dso_local global i32 0, align 4
@LINKTYPE_PKTAP = common dso_local global i32 0, align 4
@DLT_PKTAP = common dso_local global i32 0, align 4
@LINKTYPE_MATCHING_MIN = common dso_local global i32 0, align 4
@LINKTYPE_MATCHING_MAX = common dso_local global i32 0, align 4
@map = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linktype_to_dlt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LINKTYPE_PFSYNC, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @DLT_PFSYNC, align 4
  store i32 %9, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LINKTYPE_PKTAP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @DLT_PKTAP, align 4
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @LINKTYPE_MATCHING_MIN, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @LINKTYPE_MATCHING_MAX, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %44, %24, %14, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
