; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_stop_find_for_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_stop_find_for_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i64, i32*, i32*, %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [14 x i8] c"Stopping find\00", align 1
@p2p_find_timeout = common dso_local global i32 0, align 4
@P2P_SEARCH = common dso_local global i64 0, align 8
@P2P_SD_DURING_FIND = common dso_local global i64 0, align 8
@P2P_IDLE = common dso_local global i32 0, align 4
@P2P_AFTER_SCAN_NOTHING = common dso_local global i32 0, align 4
@P2P_DEV_PEER_WAITING_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_stop_find_for_freq(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = call i32 @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @p2p_find_timeout, align 4
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = call i32 @eloop_cancel_timeout(i32 %7, %struct.p2p_data* %8, i32* null)
  %10 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %11 = call i32 @p2p_clear_timeout(%struct.p2p_data* %10)
  %12 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %13 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @P2P_SEARCH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %19 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @P2P_SD_DURING_FIND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %2
  %24 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 7
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %30 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %29, i32 0, i32 7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %28(i32 %33)
  br label %35

35:                                               ; preds = %23, %17
  %36 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %37 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %39 = load i32, i32* @P2P_IDLE, align 4
  %40 = call i32 @p2p_set_state(%struct.p2p_data* %38, i32 %39)
  %41 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %42 = call i32 @p2p_free_req_dev_types(%struct.p2p_data* %41)
  %43 = load i32, i32* @P2P_AFTER_SCAN_NOTHING, align 4
  %44 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load i32, i32* @P2P_DEV_PEER_WAITING_RESPONSE, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %54 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %35
  %60 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %61, align 8
  %62 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %63 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %65 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @p2p_stop_listen_for_freq(%struct.p2p_data* %66, i32 %67)
  %69 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %70 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_clear_timeout(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_free_req_dev_types(%struct.p2p_data*) #1

declare dso_local i32 @p2p_stop_listen_for_freq(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
