; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_vpd_supported_pages = type { i32, i32, i32* }
%union.ctl_io = type { i32 }

@SCSI_EVPD_NUM_SUPPORTED_PAGES = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_SUPPORTED_PAGES = common dso_local global i32 0, align 4
@SVPD_UNIT_SERIAL_NUMBER = common dso_local global i32 0, align 4
@SVPD_DEVICE_ID = common dso_local global i32 0, align 4
@SVPD_EXTENDED_INQUIRY_DATA = common dso_local global i32 0, align 4
@SVPD_MODE_PAGE_POLICY = common dso_local global i32 0, align 4
@SVPD_SCSI_PORTS = common dso_local global i32 0, align 4
@SVPD_SCSI_TPC = common dso_local global i32 0, align 4
@SVPD_SCSI_SFS = common dso_local global i32 0, align 4
@SVPD_BLOCK_LIMITS = common dso_local global i32 0, align 4
@SVPD_BDC = common dso_local global i32 0, align 4
@SVPD_LBP = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_supported(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_supported_pages*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %5, align 8
  %11 = load i32, i32* @SCSI_EVPD_NUM_SUPPORTED_PAGES, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 16, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @M_CTL, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @malloc(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.scsi_vpd_supported_pages*
  store %struct.scsi_vpd_supported_pages* %26, %struct.scsi_vpd_supported_pages** %6, align 8
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @min(i32 %31, i32 %32)
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %40 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %42 = icmp ne %struct.ctl_lun* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %2
  %44 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %45 = shl i32 %44, 5
  %46 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %47 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %45, %50
  %52 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %61

54:                                               ; preds = %2
  %55 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %56 = shl i32 %55, 5
  %57 = load i32, i32* @T_DIRECT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %43
  store i32 0, i32* %8, align 4
  %62 = load i32, i32* @SVPD_SUPPORTED_PAGES, align 4
  %63 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %71 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %72 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* @SVPD_DEVICE_ID, align 4
  %79 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %80 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %78, i32* %85, align 4
  %86 = load i32, i32* @SVPD_EXTENDED_INQUIRY_DATA, align 4
  %87 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %88 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load i32, i32* @SVPD_MODE_PAGE_POLICY, align 4
  %95 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %96 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %94, i32* %101, align 4
  %102 = load i32, i32* @SVPD_SCSI_PORTS, align 4
  %103 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %104 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %102, i32* %109, align 4
  %110 = load i32, i32* @SVPD_SCSI_TPC, align 4
  %111 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %112 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* @SVPD_SCSI_SFS, align 4
  %119 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %120 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %118, i32* %125, align 4
  %126 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %127 = icmp ne %struct.ctl_lun* %126, null
  br i1 %127, label %128, label %161

128:                                              ; preds = %61
  %129 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %130 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @T_DIRECT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %128
  %137 = load i32, i32* @SVPD_BLOCK_LIMITS, align 4
  %138 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %139 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %137, i32* %144, align 4
  %145 = load i32, i32* @SVPD_BDC, align 4
  %146 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %147 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %145, i32* %152, align 4
  %153 = load i32, i32* @SVPD_LBP, align 4
  %154 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %155 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %136, %128, %61
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.scsi_vpd_supported_pages*, %struct.scsi_vpd_supported_pages** %6, align 8
  %164 = getelementptr inbounds %struct.scsi_vpd_supported_pages, %struct.scsi_vpd_supported_pages* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %166 = call i32 @ctl_set_success(%struct.ctl_scsiio* %165)
  %167 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %168 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %169 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %167
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @ctl_config_move_done, align 4
  %174 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %175 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %177 = bitcast %struct.ctl_scsiio* %176 to %union.ctl_io*
  %178 = call i32 @ctl_datamove(%union.ctl_io* %177)
  %179 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %179
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
