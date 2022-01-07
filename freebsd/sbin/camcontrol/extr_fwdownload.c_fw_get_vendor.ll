; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_get_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_get_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_vendor = type { i64, i64, i32* }
%struct.cam_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ata_params = type { i32* }

@vendors_list = common dso_local global %struct.fw_vendor* null, align 8
@VENDOR_ATA = common dso_local global i64 0, align 8
@T_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_vendor* (%struct.cam_device*, %struct.ata_params*)* @fw_get_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_vendor* @fw_get_vendor(%struct.cam_device* %0, %struct.ata_params* %1) #0 {
  %3 = alloca %struct.fw_vendor*, align 8
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %struct.ata_params*, align 8
  %6 = alloca [42 x i8], align 16
  %7 = alloca %struct.fw_vendor*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %struct.ata_params* %1, %struct.ata_params** %5, align 8
  %8 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %9 = icmp eq %struct.cam_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.fw_vendor* null, %struct.fw_vendor** %3, align 8
  br label %88

11:                                               ; preds = %2
  %12 = load %struct.ata_params*, %struct.ata_params** %5, align 8
  %13 = icmp ne %struct.ata_params* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.ata_params*, %struct.ata_params** %5, align 8
  %18 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @cam_strvis(i32* %16, i32* %19, i32 8, i32 42)
  %21 = load %struct.fw_vendor*, %struct.fw_vendor** @vendors_list, align 8
  store %struct.fw_vendor* %21, %struct.fw_vendor** %7, align 8
  br label %22

22:                                               ; preds = %36, %14
  %23 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %24 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %29 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VENDOR_ATA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  store %struct.fw_vendor* %34, %struct.fw_vendor** %3, align 8
  br label %88

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %38 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %37, i32 1
  store %struct.fw_vendor* %38, %struct.fw_vendor** %7, align 8
  br label %22

39:                                               ; preds = %22
  br label %49

40:                                               ; preds = %11
  %41 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %44 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @cam_strvis(i32* %42, i32* %47, i32 8, i32 42)
  br label %49

49:                                               ; preds = %40, %39
  %50 = load %struct.fw_vendor*, %struct.fw_vendor** @vendors_list, align 8
  store %struct.fw_vendor* %50, %struct.fw_vendor** %7, align 8
  br label %51

51:                                               ; preds = %83, %49
  %52 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %53 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %60 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @cam_strmatch(i32* %58, i32* %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %56
  %67 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %68 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @T_ANY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %74 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %77 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %76, i32 0, i32 0
  %78 = call i64 @SID_TYPE(%struct.TYPE_2__* %77)
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72, %66
  br label %86

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %85 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %84, i32 1
  store %struct.fw_vendor* %85, %struct.fw_vendor** %7, align 8
  br label %51

86:                                               ; preds = %80, %51
  %87 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  store %struct.fw_vendor* %87, %struct.fw_vendor** %3, align 8
  br label %88

88:                                               ; preds = %86, %33, %10
  %89 = load %struct.fw_vendor*, %struct.fw_vendor** %3, align 8
  ret %struct.fw_vendor* %89
}

declare dso_local i32 @cam_strvis(i32*, i32*, i32, i32) #1

declare dso_local i32 @cam_strmatch(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SID_TYPE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
