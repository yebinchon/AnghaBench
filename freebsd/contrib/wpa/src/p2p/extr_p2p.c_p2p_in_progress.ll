; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_in_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64 }

@P2P_SEARCH = common dso_local global i64 0, align 8
@P2P_IDLE = common dso_local global i64 0, align 8
@P2P_PROVISIONING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_in_progress(%struct.p2p_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  %4 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %5 = icmp eq %struct.p2p_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @P2P_SEARCH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %29

14:                                               ; preds = %7
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @P2P_IDLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @P2P_PROVISIONING, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %13, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
