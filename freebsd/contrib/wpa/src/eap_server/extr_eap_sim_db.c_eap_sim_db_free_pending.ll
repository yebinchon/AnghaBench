; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_free_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_free_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32 }
%struct.eap_sim_db_pending = type { i32 }

@eap_sim_db_query_timeout = common dso_local global i32 0, align 4
@eap_sim_db_del_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*)* @eap_sim_db_free_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_free_pending(%struct.eap_sim_db_data* %0, %struct.eap_sim_db_pending* %1) #0 {
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca %struct.eap_sim_db_pending*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %3, align 8
  store %struct.eap_sim_db_pending* %1, %struct.eap_sim_db_pending** %4, align 8
  %5 = load i32, i32* @eap_sim_db_query_timeout, align 4
  %6 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %7 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %4, align 8
  %8 = call i32 @eloop_cancel_timeout(i32 %5, %struct.eap_sim_db_data* %6, %struct.eap_sim_db_pending* %7)
  %9 = load i32, i32* @eap_sim_db_del_timeout, align 4
  %10 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %11 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %4, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %9, %struct.eap_sim_db_data* %10, %struct.eap_sim_db_pending* %11)
  %13 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %4, align 8
  %14 = call i32 @os_free(%struct.eap_sim_db_pending* %13)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

declare dso_local i32 @os_free(%struct.eap_sim_db_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
