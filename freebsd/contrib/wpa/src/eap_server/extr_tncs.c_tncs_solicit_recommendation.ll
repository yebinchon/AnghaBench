; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_solicit_recommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_solicit_recommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { i32, %struct.TYPE_2__*, %struct.tnc_if_imv* }
%struct.TYPE_2__ = type { i64 }
%struct.tnc_if_imv = type { i64, i64, i64 (i64, i32)*, %struct.tnc_if_imv* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TNC: Call SolicitRecommendation for IMV '%s'\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TNC: SolicitRecommendation: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tncs_data*)* @tncs_solicit_recommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tncs_solicit_recommendation(%struct.tncs_data* %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca %struct.tnc_if_imv*, align 8
  %4 = alloca i64, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %2, align 8
  %5 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %6 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %5, i32 0, i32 2
  %7 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %6, align 8
  store %struct.tnc_if_imv* %7, %struct.tnc_if_imv** %3, align 8
  br label %8

8:                                                ; preds = %42, %1
  %9 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %10 = icmp ne %struct.tnc_if_imv* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %13 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %16 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %42

23:                                               ; preds = %11
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %26 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %30 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %29, i32 0, i32 2
  %31 = load i64 (i64, i32)*, i64 (i64, i32)** %30, align 8
  %32 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %33 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %36 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 %31(i64 %34, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %23, %22
  %43 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %44 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %43, i32 0, i32 3
  %45 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %44, align 8
  store %struct.tnc_if_imv* %45, %struct.tnc_if_imv** %3, align 8
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
