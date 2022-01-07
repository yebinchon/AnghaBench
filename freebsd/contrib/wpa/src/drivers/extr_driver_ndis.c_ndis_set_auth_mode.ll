; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_ndis_set_auth_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_ndis_set_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }

@OID_802_11_AUTHENTICATION_MODE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"NDIS: Failed to set OID_802_11_AUTHENTICATION_MODE (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*, i32)* @ndis_set_auth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_driver_ndis_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %9 = load i32, i32* @OID_802_11_AUTHENTICATION_MODE, align 4
  %10 = bitcast i32* %6 to i8*
  %11 = call i64 @ndis_set_oid(%struct.wpa_driver_ndis_data* %8, i32 %9, i8* %10, i32 4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
