; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_checkcond_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_checkcond_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TPC_ERR_RETRY = common dso_local global i32 0, align 4
@TPC_ERR_NO_DECREMENT = common dso_local global i32 0, align 4
@TPC_ERR_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @tpc_checkcond_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_checkcond_parse(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %8 = load i32, i32* @TPC_ERR_RETRY, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = bitcast %union.ctl_io* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @scsi_extract_sense_len(i32* %11, i32 %15, i32* %4, i32* %5, i32* %6, i32* %7, i32 1)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %23 [
    i32 133, label %18
    i32 131, label %18
    i32 134, label %22
    i32 132, label %22
  ]

18:                                               ; preds = %1, %1
  %19 = load i32, i32* @TPC_ERR_NO_DECREMENT, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %1, %1
  br label %23

23:                                               ; preds = %1, %22
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %55 [
    i32 128, label %25
    i32 130, label %29
    i32 129, label %38
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @TPC_ERR_NO_DECREMENT, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 68
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @TPC_ERR_FAIL, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %32, %29
  br label %55

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @TPC_ERR_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %38
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @TPC_ERR_FAIL, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %49, %46
  br label %55

55:                                               ; preds = %23, %54, %37, %25
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @scsi_extract_sense_len(i32*, i32, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
