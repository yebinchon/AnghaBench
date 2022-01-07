; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_go_disc_req_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_go_disc_req_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [51 x i8] c"GO Discoverability Request TX callback: success=%d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"No pending Device Discoverability Request\00", align 1
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4
@P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_go_disc_req_cb(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %12(i32 %17)
  %19 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %25 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %28 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @P2P_SC_SUCCESS, align 4
  br label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @p2p_send_dev_disc_resp(%struct.p2p_data* %27, i64 %30, i32 %33, i32 %36, i32 %44)
  %46 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %23
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_send_dev_disc_resp(%struct.p2p_data*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
