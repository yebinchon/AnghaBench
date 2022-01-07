; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_add_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_add_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { %struct.eap_sim_db_pending* }
%struct.eap_sim_db_pending = type { %struct.eap_sim_db_pending* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*)* @eap_sim_db_add_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_add_pending(%struct.eap_sim_db_data* %0, %struct.eap_sim_db_pending* %1) #0 {
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca %struct.eap_sim_db_pending*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %3, align 8
  store %struct.eap_sim_db_pending* %1, %struct.eap_sim_db_pending** %4, align 8
  %5 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %6 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %5, i32 0, i32 0
  %7 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %6, align 8
  %8 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %4, align 8
  %9 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %8, i32 0, i32 0
  store %struct.eap_sim_db_pending* %7, %struct.eap_sim_db_pending** %9, align 8
  %10 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %4, align 8
  %11 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %12 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %11, i32 0, i32 0
  store %struct.eap_sim_db_pending* %10, %struct.eap_sim_db_pending** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
