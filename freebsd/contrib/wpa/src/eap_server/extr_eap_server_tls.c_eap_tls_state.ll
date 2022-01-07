; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tls_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-TLS: %s -> %s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_tls_data*, i32)* @eap_tls_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_state(%struct.eap_tls_data* %0, i32 %1) #0 {
  %3 = alloca %struct.eap_tls_data*, align 8
  %4 = alloca i32, align 4
  store %struct.eap_tls_data* %0, %struct.eap_tls_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.eap_tls_data*, %struct.eap_tls_data** %3, align 8
  %7 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @eap_tls_state_txt(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @eap_tls_state_txt(i32 %10)
  %12 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.eap_tls_data*, %struct.eap_tls_data** %3, align 8
  %15 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FAILURE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.eap_tls_data*, %struct.eap_tls_data** %3, align 8
  %21 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tls_connection_remove_session(i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @eap_tls_state_txt(i32) #1

declare dso_local i32 @tls_connection_remove_session(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
