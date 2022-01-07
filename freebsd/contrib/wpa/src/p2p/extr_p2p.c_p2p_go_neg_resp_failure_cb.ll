; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_resp_failure_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_resp_failure_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.p2p_device = type { i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"GO Negotiation Response (failure) TX callback: success=%d\00", align 1
@P2P_SC_SUCCESS = common dso_local global i64 0, align 8
@P2P_SC_FAIL_INFO_CURRENTLY_UNAVAILABLE = common dso_local global i64 0, align 8
@P2P_DEV_PEER_WAITING_RESPONSE = common dso_local global i32 0, align 4
@P2P_SEARCH = common dso_local global i64 0, align 8
@P2P_SD_DURING_FIND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32, i32*)* @p2p_go_neg_resp_failure_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_go_neg_resp_failure_cb(%struct.p2p_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @P2P_SC_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %25 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %24, i64 %29)
  br label %68

31:                                               ; preds = %15, %3
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.p2p_device* @p2p_get_device(%struct.p2p_data* %35, i32* %36)
  store %struct.p2p_device* %37, %struct.p2p_device** %7, align 8
  %38 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %39 = icmp ne %struct.p2p_device* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %42 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @P2P_SC_FAIL_INFO_CURRENTLY_UNAVAILABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @P2P_DEV_PEER_WAITING_RESPONSE, align 4
  %48 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %49 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %40, %34
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @P2P_SEARCH, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @P2P_SD_DURING_FIND, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %53
  %66 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %67 = call i32 @p2p_continue_find(%struct.p2p_data* %66)
  br label %68

68:                                               ; preds = %23, %65, %59
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32) #1

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i64) #1

declare dso_local %struct.p2p_device* @p2p_get_device(%struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_continue_find(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
