; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_tpk_retry_timeout_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_tpk_retry_timeout_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_peer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"TDLS: Retry timeout cancelled for action_code=%u\00", align 1
@wpa_tdls_tpk_retry_timeout = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"TDLS: Error in cancelling retry timeout (Unknown action_code=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*, %struct.wpa_tdls_peer*, i32)* @wpa_tdls_tpk_retry_timeout_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_tdls_tpk_retry_timeout_cancel(%struct.wpa_sm* %0, %struct.wpa_tdls_peer* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @wpa_tdls_tpk_retry_timeout, align 4
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %19 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %20 = call i32 @eloop_cancel_timeout(i32 %17, %struct.wpa_sm* %18, %struct.wpa_tdls_peer* %19)
  %21 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @os_free(i32* %24)
  %26 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 255, i32* %40, align 8
  br label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
