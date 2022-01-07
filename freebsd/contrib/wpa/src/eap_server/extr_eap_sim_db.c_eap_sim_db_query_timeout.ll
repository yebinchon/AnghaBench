; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_query_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, i32 (i32, i32)* }
%struct.eap_sim_db_pending = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-SIM DB: Query timeout for %p\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@eap_sim_db_del_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @eap_sim_db_query_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_query_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_sim_db_data*, align 8
  %6 = alloca %struct.eap_sim_db_pending*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.eap_sim_db_data*
  store %struct.eap_sim_db_data* %8, %struct.eap_sim_db_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.eap_sim_db_pending*
  store %struct.eap_sim_db_pending* %10, %struct.eap_sim_db_pending** %6, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %6, align 8
  %13 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.eap_sim_db_pending* %12)
  %14 = load i32, i32* @FAILURE, align 4
  %15 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %6, align 8
  %16 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %6, align 8
  %24 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %19(i32 %22, i32 %25)
  %27 = load i32, i32* @eap_sim_db_del_timeout, align 4
  %28 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %29 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %6, align 8
  %30 = call i32 @eloop_register_timeout(i32 1, i32 0, i32 %27, %struct.eap_sim_db_data* %28, %struct.eap_sim_db_pending* %29)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.eap_sim_db_pending*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
