; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_authorized_macs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_authorized_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WPS-STRICT: Authorized MACs attribute missing\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"WPS-STRICT: Invalid Authorized MACs attribute value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @wps_validate_authorized_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_authorized_macs(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %31

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ugt i64 %18, 30
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ETH_ALEN, align 8
  %23 = urem i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @wpa_hexdump(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32* %27, i64 %28)
  store i32 -1, i32* %4, align 4
  br label %31

30:                                               ; preds = %20, %17
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %25, %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
