; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_ProvideRecommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_ProvideRecommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"TNC: TNC_TNCS_ProvideRecommendation(imvID=%lu connectionID=%lu recommendation=%lu evaluation=%lu)\00", align 1
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @TNC_TNCS_ProvideRecommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCS_ProvideRecommendation(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tncs_data*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13, i64 %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @tncs_get_imv(i64 %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.tncs_data* @tncs_get_conn(i64 %23)
  store %struct.tncs_data* %24, %struct.tncs_data** %10, align 8
  %25 = load %struct.tncs_data*, %struct.tncs_data** %10, align 8
  %26 = icmp eq %struct.tncs_data* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.tncs_data*, %struct.tncs_data** %10, align 8
  %32 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %30, i64* %36, align 8
  %37 = load %struct.tncs_data*, %struct.tncs_data** %10, align 8
  %38 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %27, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32* @tncs_get_imv(i64) #1

declare dso_local %struct.tncs_data* @tncs_get_conn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
