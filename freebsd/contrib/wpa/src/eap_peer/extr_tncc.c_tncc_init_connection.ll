; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_init_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { i64, i32*, %struct.tnc_if_imc* }

@TNC_CONNECTION_STATE_CREATE = common dso_local global i32 0, align 4
@TNC_CONNECTION_STATE_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tncc_init_connection(%struct.tncc_data* %0) #0 {
  %2 = alloca %struct.tncc_data*, align 8
  %3 = alloca %struct.tnc_if_imc*, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %2, align 8
  %4 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %5 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %4, i32 0, i32 0
  %6 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  store %struct.tnc_if_imc* %6, %struct.tnc_if_imc** %3, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %9 = icmp ne %struct.tnc_if_imc* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %12 = load i32, i32* @TNC_CONNECTION_STATE_CREATE, align 4
  %13 = call i32 @tncc_imc_notify_connection_change(%struct.tnc_if_imc* %11, i32 %12)
  %14 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %15 = load i32, i32* @TNC_CONNECTION_STATE_HANDSHAKE, align 4
  %16 = call i32 @tncc_imc_notify_connection_change(%struct.tnc_if_imc* %14, i32 %15)
  %17 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %18 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @os_free(i32* %19)
  %21 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %22 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %24 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %26 = call i32 @tncc_imc_begin_handshake(%struct.tnc_if_imc* %25)
  br label %27

27:                                               ; preds = %10
  %28 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %29 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %28, i32 0, i32 2
  %30 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %29, align 8
  store %struct.tnc_if_imc* %30, %struct.tnc_if_imc** %3, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i32 @tncc_imc_notify_connection_change(%struct.tnc_if_imc*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @tncc_imc_begin_handshake(%struct.tnc_if_imc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
