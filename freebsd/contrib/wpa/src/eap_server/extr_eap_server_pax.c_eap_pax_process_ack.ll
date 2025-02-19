; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pax_data = type { i64 }
%struct.wpabuf = type { i32 }

@PAX_STD_3 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"EAP-PAX: Received PAX-ACK - authentication completed successfully\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pax_data*, %struct.wpabuf*)* @eap_pax_process_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pax_process_ack(%struct.eap_sm* %0, %struct.eap_pax_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_pax_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_pax_data* %1, %struct.eap_pax_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %7 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %8 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAX_STD_3, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
