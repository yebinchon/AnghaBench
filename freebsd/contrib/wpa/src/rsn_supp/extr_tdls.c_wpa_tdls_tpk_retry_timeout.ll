; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_tpk_retry_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_tpk_retry_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_peer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"TDLS: Retrying sending of message (action_code=%u)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"TDLS: No retry buffer available for action_code=%u\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"TDLS: Failed to retry transmission\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"TDLS: Sending Teardown Request\00", align 1
@WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpa_tdls_tpk_retry_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_tdls_tpk_retry_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca %struct.wpa_tdls_peer*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wpa_sm*
  store %struct.wpa_sm* %8, %struct.wpa_sm** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wpa_tdls_peer*
  store %struct.wpa_tdls_peer* %10, %struct.wpa_tdls_peer** %6, align 8
  %11 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %12 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %2
  %17 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %16
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %41 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %42 = call i32 @eloop_cancel_timeout(void (i8*, i8*)* @wpa_tdls_tpk_retry_timeout, %struct.wpa_sm* %40, %struct.wpa_tdls_peer* %41)
  br label %109

43:                                               ; preds = %16
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %45 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %46 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %62 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %66 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %69 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @wpa_tdls_send_tpk_msg(%struct.wpa_sm* %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %67, i32* %71, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %43
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %43
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %83 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %84 = call i32 @eloop_cancel_timeout(void (i8*, i8*)* @wpa_tdls_tpk_retry_timeout, %struct.wpa_sm* %82, %struct.wpa_tdls_peer* %83)
  %85 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 1000
  %90 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %91 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = srem i32 %93, 1000
  %95 = mul nsw i32 %94, 1000
  %96 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %97 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %98 = call i32 @eloop_register_timeout(i32 %89, i32 %95, void (i8*, i8*)* @wpa_tdls_tpk_retry_timeout, %struct.wpa_sm* %96, %struct.wpa_tdls_peer* %97)
  br label %109

99:                                               ; preds = %2
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %101 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %102 = call i32 @eloop_cancel_timeout(void (i8*, i8*)* @wpa_tdls_tpk_retry_timeout, %struct.wpa_sm* %100, %struct.wpa_tdls_peer* %101)
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %106 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %107 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED, align 4
  %108 = call i32 @wpa_tdls_do_teardown(%struct.wpa_sm* %105, %struct.wpa_tdls_peer* %106, i32 %107)
  br label %109

109:                                              ; preds = %33, %99, %81
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(void (i8*, i8*)*, %struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i64 @wpa_tdls_send_tpk_msg(%struct.wpa_sm*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i32 @wpa_tdls_do_teardown(%struct.wpa_sm*, %struct.wpa_tdls_peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
