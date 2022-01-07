; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, %struct.TYPE_4__*, %struct.p2p_device* }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.p2p_go_neg_results*)* }
%struct.p2p_go_neg_results = type { i32, i32, i32 }
%struct.p2p_device = type { i32, %struct.TYPE_3__, i32*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@p2p_go_neg_wait_timeout = common dso_local global i32 0, align 4
@P2P_SEARCH = common dso_local global i64 0, align 8
@P2P_IDLE = common dso_local global i32 0, align 4
@P2P_DEV_PEER_WAITING_RESPONSE = common dso_local global i32 0, align 4
@WPS_NOT_READY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_go_neg_failed(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_go_neg_results, align 4
  %6 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %8 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %7, i32 0, i32 2
  %9 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  store %struct.p2p_device* %9, %struct.p2p_device** %6, align 8
  %10 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %11 = icmp ne %struct.p2p_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* @p2p_go_neg_wait_timeout, align 4
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = call i32 @eloop_cancel_timeout(i32 %14, %struct.p2p_data* %15, i32* null)
  %17 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @P2P_SEARCH, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %24 = call i32 @p2p_clear_timeout(%struct.p2p_data* %23)
  %25 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %26 = load i32, i32* @P2P_IDLE, align 4
  %27 = call i32 @p2p_set_state(%struct.p2p_data* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* @P2P_DEV_PEER_WAITING_RESPONSE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %32 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @WPS_NOT_READY, align 4
  %36 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %37 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %39 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %41 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @wpabuf_free(i32* %42)
  %44 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %45 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 2
  store %struct.p2p_device* null, %struct.p2p_device** %47, align 8
  %48 = call i32 @os_memset(%struct.p2p_go_neg_results* %5, i32 0, i32 12)
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %54 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @os_memcpy(i32 %52, i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %62 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @os_memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32 (i32, %struct.p2p_go_neg_results*)*, i32 (i32, %struct.p2p_go_neg_results*)** %69, align 8
  %71 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %72 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %70(i32 %75, %struct.p2p_go_neg_results* %5)
  br label %77

77:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_clear_timeout(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @os_memset(%struct.p2p_go_neg_results*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
