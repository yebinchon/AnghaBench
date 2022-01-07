; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, i32*, i32*, i32, i64, i32*, i32*, i32* }

@hostapd_dpp_reply_wait_timeout = common dso_local global i32 0, align 4
@hostapd_dpp_init_timeout = common dso_local global i32 0, align 4
@hostapd_dpp_auth_resp_retry_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@hostapd_dpp_config_result_wait_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_dpp_deinit(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %3 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %4 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @hostapd_dpp_reply_wait_timeout, align 4
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %11 = call i32 @eloop_cancel_timeout(i32 %9, %struct.hostapd_data* %10, i32* null)
  %12 = load i32, i32* @hostapd_dpp_init_timeout, align 4
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %14 = call i32 @eloop_cancel_timeout(i32 %12, %struct.hostapd_data* %13, i32* null)
  %15 = load i32, i32* @hostapd_dpp_auth_resp_retry_timeout, align 4
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %17 = call i32 @eloop_cancel_timeout(i32 %15, %struct.hostapd_data* %16, i32* null)
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dpp_auth_deinit(i32* %20)
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %25 = call i32 @hostapd_dpp_pkex_remove(%struct.hostapd_data* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @os_free(i32* %30)
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @dpp_auth_deinit(i32*) #1

declare dso_local i32 @hostapd_dpp_pkex_remove(%struct.hostapd_data*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
