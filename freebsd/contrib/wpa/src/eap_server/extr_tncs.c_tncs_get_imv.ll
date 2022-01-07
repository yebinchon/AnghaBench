; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_get_imv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_get_imv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.tnc_if_imv* }
%struct.tnc_if_imv = type { i64, %struct.tnc_if_imv* }

@TNC_MAX_IMV_ID = common dso_local global i64 0, align 8
@tncs_global_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnc_if_imv* (i64)* @tncs_get_imv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnc_if_imv* @tncs_get_imv(i64 %0) #0 {
  %2 = alloca %struct.tnc_if_imv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tnc_if_imv*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @TNC_MAX_IMV_ID, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %2, align 8
  br label %32

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %14, align 8
  store %struct.tnc_if_imv* %15, %struct.tnc_if_imv** %4, align 8
  br label %16

16:                                               ; preds = %27, %12
  %17 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %4, align 8
  %18 = icmp ne %struct.tnc_if_imv* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %4, align 8
  %21 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %4, align 8
  store %struct.tnc_if_imv* %26, %struct.tnc_if_imv** %2, align 8
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %4, align 8
  %29 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %28, i32 0, i32 1
  %30 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %29, align 8
  store %struct.tnc_if_imv* %30, %struct.tnc_if_imv** %4, align 8
  br label %16

31:                                               ; preds = %16
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %2, align 8
  br label %32

32:                                               ; preds = %31, %25, %11
  %33 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  ret %struct.tnc_if_imv* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
