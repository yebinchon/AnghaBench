; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_driver_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_driver_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i64, i64, i32, i32, i32 }

@PRISM2_PARAM_HOSTAPD = common dso_local global i32 0, align 4
@PRISM2_PARAM_HOSTAPD_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hostap_driver_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_driver_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hostap_driver_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %5, %struct.hostap_driver_data** %3, align 8
  %6 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @netlink_deinit(i32 %8)
  %10 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %11 = call i32 @hostap_set_iface_flags(%struct.hostap_driver_data* %10, i32 0)
  %12 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %13 = load i32, i32* @PRISM2_PARAM_HOSTAPD, align 4
  %14 = call i32 @hostap_ioctl_prism2param(%struct.hostap_driver_data* %12, i32 %13, i32 0)
  %15 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %16 = load i32, i32* @PRISM2_PARAM_HOSTAPD_STA, align 4
  %17 = call i32 @hostap_ioctl_prism2param(%struct.hostap_driver_data* %15, i32 %16, i32 0)
  %18 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %19 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %24 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @close(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %34 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @close(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %39 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @os_free(i32 %40)
  %42 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %43 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @os_free(i32 %44)
  %46 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %47 = call i32 @free(%struct.hostap_driver_data* %46)
  ret void
}

declare dso_local i32 @netlink_deinit(i32) #1

declare dso_local i32 @hostap_set_iface_flags(%struct.hostap_driver_data*, i32) #1

declare dso_local i32 @hostap_ioctl_prism2param(%struct.hostap_driver_data*, i32, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @free(%struct.hostap_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
