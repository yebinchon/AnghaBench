; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_batch_ending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_batch_ending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { i32, %struct.tnc_if_imv* }
%struct.tnc_if_imv = type { i64, i32, i64 (i32, i32)*, %struct.tnc_if_imv* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TNC: Call BatchEnding for IMV '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TNC: BatchEnding: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tncs_data*)* @tncs_batch_ending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tncs_batch_ending(%struct.tncs_data* %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca %struct.tnc_if_imv*, align 8
  %4 = alloca i64, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %2, align 8
  %5 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %6 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %5, i32 0, i32 1
  %7 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %6, align 8
  store %struct.tnc_if_imv* %7, %struct.tnc_if_imv** %3, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %10 = icmp ne %struct.tnc_if_imv* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %13 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %12, i32 0, i32 2
  %14 = load i64 (i32, i32)*, i64 (i32, i32)** %13, align 8
  %15 = icmp eq i64 (i32, i32)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %36

17:                                               ; preds = %11
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %20 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %24 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %23, i32 0, i32 2
  %25 = load i64 (i32, i32)*, i64 (i32, i32)** %24, align 8
  %26 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %27 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %30 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 %25(i32 %28, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %17, %16
  %37 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %38 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %37, i32 0, i32 3
  %39 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %38, align 8
  store %struct.tnc_if_imv* %39, %struct.tnc_if_imv** %3, align 8
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
