; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_clear_go_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_clear_go_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32* }

@P2P_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_clear_go_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_clear_go_neg(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %6 = call i32 @p2p_clear_timeout(%struct.p2p_data* %5)
  %7 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %8 = load i32, i32* @P2P_IDLE, align 4
  %9 = call i32 @p2p_set_state(%struct.p2p_data* %7, i32 %8)
  ret void
}

declare dso_local i32 @p2p_clear_timeout(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
