; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_managed_oper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_managed_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Managed P2P Device operations enabled\00", align 1
@P2P_DEV_CAPAB_INFRA_MANAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Managed P2P Device operations disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_set_managed_oper(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @P2P_DEV_CAPAB_INFRA_MANAGED, align 4
  %11 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %17 = call i32 @p2p_dbg(%struct.p2p_data* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @P2P_DEV_CAPAB_INFRA_MANAGED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %7
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
