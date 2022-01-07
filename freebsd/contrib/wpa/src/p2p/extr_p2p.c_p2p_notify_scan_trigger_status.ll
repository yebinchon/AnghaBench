; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_notify_scan_trigger_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_notify_scan_trigger_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Scan request failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Running p2p_scan\00", align 1
@p2p_scan_timeout = common dso_local global i32 0, align 4
@P2P_SCAN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_notify_scan_trigger_status(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %11 = call i32 @p2p_continue_find(%struct.p2p_data* %10)
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = call i32 @p2p_dbg(%struct.p2p_data* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @p2p_scan_timeout, align 4
  %18 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %19 = call i32 @eloop_cancel_timeout(i32 %17, %struct.p2p_data* %18, i32* null)
  %20 = load i32, i32* @P2P_SCAN_TIMEOUT, align 4
  %21 = load i32, i32* @p2p_scan_timeout, align 4
  %22 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %23 = call i32 @eloop_register_timeout(i32 %20, i32 0, i32 %21, %struct.p2p_data* %22, i32* null)
  br label %24

24:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_continue_find(%struct.p2p_data*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.p2p_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
