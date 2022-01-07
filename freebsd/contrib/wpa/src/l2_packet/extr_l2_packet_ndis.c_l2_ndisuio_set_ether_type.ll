; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_ndisuio_set_ether_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_ndisuio_set_ether_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOCTL_NDISUIO_SET_ETHER_TYPE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"L2(NDISUIO): IOCTL_NDISUIO_SET_ETHER_TYPE failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @l2_ndisuio_set_ether_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_ndisuio_set_ether_type(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  %6 = load i16, i16* %3, align 2
  %7 = call i32 @htons(i16 zeroext %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %9 = load i32, i32* @IOCTL_NDISUIO_SET_ETHER_TYPE, align 4
  %10 = call i32 @DeviceIoControl(i32 %8, i32 %9, i32* %4, i32 4, i32* null, i32 0, i32* %5, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i64 (...) @GetLastError()
  %15 = trunc i64 %14 to i32
  %16 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @DeviceIoControl(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @driver_ndis_get_ndisuio_handle(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
