; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SCARD: scard_transmit: send\00", align 1
@SCARD_PROTOCOL_T1 = common dso_local global i64 0, align 8
@SCARD_PCI_T1 = common dso_local global i32 0, align 4
@SCARD_PCI_T0 = common dso_local global i32 0, align 4
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"SCARD: scard_transmit: recv\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"SCARD: SCardTransmit failed (err=0x%lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scard_data*, i8*, i64, i8*, i64*)* @scard_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scard_transmit(%struct.scard_data* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.scard_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @wpa_hexdump_key(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.scard_data*, %struct.scard_data** %6, align 8
  %20 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scard_data*, %struct.scard_data** %6, align 8
  %23 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCARD_PROTOCOL_T1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @SCARD_PCI_T1, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @SCARD_PCI_T0, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @SCardTransmit(i32 %21, i32 %32, i8* %33, i64 %34, i32* null, i8* %35, i64* %12)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64*, i64** %10, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %44, i64 %45)
  br label %51

47:                                               ; preds = %31
  %48 = load i32, i32* @MSG_WARNING, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* %11, align 8
  ret i64 %52
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i64) #1

declare dso_local i64 @SCardTransmit(i32, i32, i8*, i64, i32*, i8*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
