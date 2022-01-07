; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_priv_reg_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_priv_reg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i32, i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sendto: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_privsep_data*, i32)* @wpa_priv_reg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_priv_reg_cmd(%struct.wpa_driver_privsep_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_driver_privsep_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_driver_privsep_data* %0, %struct.wpa_driver_privsep_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %10 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.sockaddr*
  %12 = call i32 @sendto(i32 %8, i32* %4, i32 4, i32 0, %struct.sockaddr* %11, i32 4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 0
  ret i32 %24
}

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
