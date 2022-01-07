; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sake_data = type { i64 }
%struct.wpabuf = type { i32 }

@IDENTITY = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-SAKE: Received Response/Identity\00", align 1
@CHALLENGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i64)* @eap_sake_process_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sake_process_identity(%struct.eap_sm* %0, %struct.eap_sake_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_sake_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %12 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IDENTITY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %23

17:                                               ; preds = %5
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %21 = load i32, i32* @CHALLENGE, align 4
  %22 = call i32 @eap_sake_state(%struct.eap_sake_data* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sake_state(%struct.eap_sake_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
