; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tncc_data*, %struct.tncc_data* }
%struct.tnc_if_imc = type { %struct.tnc_if_imc*, %struct.tnc_if_imc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tncc_deinit(%struct.tncc_data* %0) #0 {
  %2 = alloca %struct.tncc_data*, align 8
  %3 = alloca %struct.tnc_if_imc*, align 8
  %4 = alloca %struct.tnc_if_imc*, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %2, align 8
  %5 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %6 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %5, i32 0, i32 1
  %7 = load %struct.tncc_data*, %struct.tncc_data** %6, align 8
  %8 = bitcast %struct.tncc_data* %7 to %struct.tnc_if_imc*
  store %struct.tnc_if_imc* %8, %struct.tnc_if_imc** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %11 = icmp ne %struct.tnc_if_imc* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %14 = bitcast %struct.tnc_if_imc* %13 to %struct.tncc_data*
  %15 = call i32 @tncc_unload_imc(%struct.tncc_data* %14)
  %16 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  store %struct.tnc_if_imc* %16, %struct.tnc_if_imc** %4, align 8
  %17 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %18 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %17, i32 0, i32 0
  %19 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %18, align 8
  store %struct.tnc_if_imc* %19, %struct.tnc_if_imc** %3, align 8
  %20 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %21 = bitcast %struct.tnc_if_imc* %20 to %struct.tncc_data*
  %22 = call i32 @os_free(%struct.tncc_data* %21)
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %25 = call i32 @os_free(%struct.tncc_data* %24)
  ret void
}

declare dso_local i32 @tncc_unload_imc(%struct.tncc_data*) #1

declare dso_local i32 @os_free(%struct.tncc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
