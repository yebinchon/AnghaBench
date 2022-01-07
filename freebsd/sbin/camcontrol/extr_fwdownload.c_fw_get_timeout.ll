; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_get_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.fw_vendor = type { i64, i32 }
%struct.scsi_report_supported_opcodes_one = type { i32, i32 }
%struct.scsi_report_supported_opcodes_timeout = type { i32 }

@FW_TIMEOUT_USER_SPEC = common dso_local global i64 0, align 8
@FW_TIMEOUT_NO_PROBE = common dso_local global i64 0, align 8
@WRITE_BUFFER = common dso_local global i32 0, align 4
@RSO_ONE_SUP_MASK = common dso_local global i32 0, align 4
@RSO_ONE_SUP_NOT_SUP = common dso_local global i32 0, align 4
@FW_TIMEOUT_DEV_REPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.fw_vendor*, i32, i32, i32)* @fw_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_get_timeout(%struct.cam_device* %0, %struct.fw_vendor* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca %struct.fw_vendor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_report_supported_opcodes_one*, align 8
  %12 = alloca %struct.scsi_report_supported_opcodes_timeout*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store %struct.fw_vendor* %1, %struct.fw_vendor** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i64, i64* @FW_TIMEOUT_USER_SPEC, align 8
  %22 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %23 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %26 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %86

27:                                               ; preds = %5
  %28 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %29 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FW_TIMEOUT_NO_PROBE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %86

34:                                               ; preds = %27
  %35 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %36 = load i32, i32* @WRITE_BUFFER, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @scsigetopcodes(%struct.cam_device* %35, i32 1, i32 %36, i32 1, i32 0, i32 0, i32 1, i32 %37, i32 %38, i32 10000, i32 0, i32* %14, i32** %13)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  br label %86

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 16
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %86

48:                                               ; preds = %43
  %49 = load i32*, i32** %13, align 8
  %50 = bitcast i32* %49 to %struct.scsi_report_supported_opcodes_one*
  store %struct.scsi_report_supported_opcodes_one* %50, %struct.scsi_report_supported_opcodes_one** %11, align 8
  %51 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %11, align 8
  %52 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RSO_ONE_SUP_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @RSO_ONE_SUP_NOT_SUP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %86

59:                                               ; preds = %48
  %60 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %11, align 8
  %61 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scsi_2btoul(i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 8, %66
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = bitcast i32* %68 to %struct.scsi_report_supported_opcodes_timeout*
  store %struct.scsi_report_supported_opcodes_timeout* %69, %struct.scsi_report_supported_opcodes_timeout** %12, align 8
  %70 = load %struct.scsi_report_supported_opcodes_timeout*, %struct.scsi_report_supported_opcodes_timeout** %12, align 8
  %71 = getelementptr inbounds %struct.scsi_report_supported_opcodes_timeout, %struct.scsi_report_supported_opcodes_timeout* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @scsi_4btoul(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %86

77:                                               ; preds = %59
  %78 = load i32, i32* %16, align 4
  %79 = mul nsw i32 %78, 1000
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %82 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @FW_TIMEOUT_DEV_REPORTED, align 8
  %84 = load %struct.fw_vendor*, %struct.fw_vendor** %7, align 8
  %85 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %76, %58, %47, %42, %33, %20
  %87 = load i32, i32* %17, align 4
  ret i32 %87
}

declare dso_local i32 @scsigetopcodes(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
