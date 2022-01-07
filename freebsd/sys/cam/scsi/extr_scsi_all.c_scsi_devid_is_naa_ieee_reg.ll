; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_devid_is_naa_ieee_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_devid_is_naa_ieee_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_vpd_id_descriptor = type { i32, i32, i64 }
%struct.scsi_vpd_id_naa_basic = type { i32 }

@SVPD_ID_TYPE_MASK = common dso_local global i32 0, align 4
@SVPD_ID_TYPE_NAA = common dso_local global i32 0, align 4
@SVPD_ID_NAA_NAA_SHIFT = common dso_local global i32 0, align 4
@SVPD_ID_NAA_LOCAL_REG = common dso_local global i32 0, align 4
@SVPD_ID_NAA_IEEE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_devid_is_naa_ieee_reg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  %5 = alloca %struct.scsi_vpd_id_naa_basic*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.scsi_vpd_id_descriptor*
  store %struct.scsi_vpd_id_descriptor* %8, %struct.scsi_vpd_id_descriptor** %4, align 8
  %9 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scsi_vpd_id_naa_basic*
  store %struct.scsi_vpd_id_naa_basic* %12, %struct.scsi_vpd_id_naa_basic** %5, align 8
  %13 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SVPD_ID_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SVPD_ID_TYPE_NAA, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.scsi_vpd_id_naa_basic*, %struct.scsi_vpd_id_naa_basic** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_vpd_id_naa_basic, %struct.scsi_vpd_id_naa_basic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SVPD_ID_NAA_NAA_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SVPD_ID_NAA_LOCAL_REG, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SVPD_ID_NAA_IEEE_REG, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %37, %28
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %27, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
