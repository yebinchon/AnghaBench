; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_res_handled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_res_handled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"p2p_scan was not running, but scan results received\00", align 1
@p2p_scan_timeout = common dso_local global i32 0, align 4
@P2P_SEARCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_scan_res_handled(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @p2p_scan_timeout, align 4
  %14 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %15 = call i32 @eloop_cancel_timeout(i32 %13, %struct.p2p_data* %14, i32* null)
  %16 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %17 = call i64 @p2p_run_after_scan(%struct.p2p_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %29

20:                                               ; preds = %10
  %21 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @P2P_SEARCH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %28 = call i32 @p2p_continue_find(%struct.p2p_data* %27)
  br label %29

29:                                               ; preds = %19, %26, %20
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i64 @p2p_run_after_scan(%struct.p2p_data*) #1

declare dso_local i32 @p2p_continue_find(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
