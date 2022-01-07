; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prov_disc_resp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prov_disc_resp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32)*, i32, i32 (i32)* }

@.str = private unnamed_addr constant [53 x i8] c"Provision Discovery Response TX callback: success=%d\00", align 1
@P2P_NO_PENDING_ACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Post-Provision Discovery operations started - do not try to continue other P2P operations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32)* @p2p_prov_disc_resp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_prov_disc_resp_cb(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %19(i32 %24)
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i32, i32* @P2P_NO_PENDING_ACTION, align 4
  %28 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %57

33:                                               ; preds = %26
  %34 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(i32 %50)
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %40, %33
  br label %57

54:                                               ; preds = %40
  %55 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %56 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %55, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %53, %32
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
