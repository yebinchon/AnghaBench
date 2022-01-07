; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_deinit_for_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_deinit_for_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i64, i64, i32* }

@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_aka_deinit_for_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_deinit_for_reauth(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_aka_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_aka_data*
  store %struct.eap_aka_data* %7, %struct.eap_aka_data** %5, align 8
  %8 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %9 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %10 = load i32, i32* @CLEAR_EAP_ID, align 4
  %11 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %8, %struct.eap_aka_data* %9, i32 %10)
  %12 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @wpabuf_free(i32* %16)
  %18 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %19 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %25 = call i32 @eap_aka_clear_keys(%struct.eap_aka_data* %24, i32 1)
  ret void
}

declare dso_local i32 @eap_aka_clear_identities(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_aka_clear_keys(%struct.eap_aka_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
