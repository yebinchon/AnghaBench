; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_global_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_global_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imv = type { %struct.tnc_if_imv*, %struct.tnc_if_imv* }

@tncs_global_data = common dso_local global %struct.tnc_if_imv* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tncs_global_deinit() #0 {
  %1 = alloca %struct.tnc_if_imv*, align 8
  %2 = alloca %struct.tnc_if_imv*, align 8
  %3 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** @tncs_global_data, align 8
  %4 = icmp eq %struct.tnc_if_imv* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %25

6:                                                ; preds = %0
  %7 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** @tncs_global_data, align 8
  %8 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %7, i32 0, i32 1
  %9 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %8, align 8
  store %struct.tnc_if_imv* %9, %struct.tnc_if_imv** %1, align 8
  br label %10

10:                                               ; preds = %13, %6
  %11 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %1, align 8
  %12 = icmp ne %struct.tnc_if_imv* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %1, align 8
  %15 = call i32 @tncs_unload_imv(%struct.tnc_if_imv* %14)
  %16 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %1, align 8
  store %struct.tnc_if_imv* %16, %struct.tnc_if_imv** %2, align 8
  %17 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %1, align 8
  %18 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %17, i32 0, i32 0
  %19 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %18, align 8
  store %struct.tnc_if_imv* %19, %struct.tnc_if_imv** %1, align 8
  %20 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  %21 = call i32 @os_free(%struct.tnc_if_imv* %20)
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** @tncs_global_data, align 8
  %24 = call i32 @os_free(%struct.tnc_if_imv* %23)
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** @tncs_global_data, align 8
  br label %25

25:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @tncs_unload_imv(%struct.tnc_if_imv*) #1

declare dso_local i32 @os_free(%struct.tnc_if_imv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
