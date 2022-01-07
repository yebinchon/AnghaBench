; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i32 }

@SSID_MAX_LEN = common dso_local global i32 0, align 4
@PRIVSEP_CMD_GET_SSID = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"privsep: Invalid get SSID reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @wpa_driver_privsep_get_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_privsep_get_ssid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_driver_privsep_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %14, %struct.wpa_driver_privsep_data** %6, align 8
  %15 = load i32, i32* @SSID_MAX_LEN, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 4, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = mul nuw i64 4, %17
  store i64 %20, i64* %11, align 8
  %21 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %6, align 8
  %22 = load i32, i32* @PRIVSEP_CMD_GET_SSID, align 4
  %23 = call i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data* %21, i32 %22, i32* null, i32 0, i32* %19, i64* %11)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

30:                                               ; preds = %26
  %31 = call i32 @os_memcpy(i32* %8, i32* %19, i32 4)
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SSID_MAX_LEN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 4, %40
  %42 = load i64, i64* %11, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %34, %30
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %19, i64 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @os_memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %44, %29
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data*, i32, i32*, i32, i32*, i64*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
