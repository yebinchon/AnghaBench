; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsendkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsendkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.dvd_authinfo = type { i32, i32, i32, i32 }
%union.ccb = type { i32 }
%struct.scsi_report_key_data_challenge = type { i32, i32 }
%struct.scsi_report_key_data_key1_key2 = type { i32, i32 }
%struct.scsi_send_key_data_rpc = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.dvd_authinfo*)* @cdsendkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdsendkey(%struct.cam_periph* %0, %struct.dvd_authinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.dvd_authinfo*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_report_key_data_challenge*, align 8
  %11 = alloca %struct.scsi_report_key_data_key1_key2*, align 8
  %12 = alloca %struct.scsi_send_key_data_rpc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.dvd_authinfo* %1, %struct.dvd_authinfo** %5, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %7, align 8
  %13 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %14 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %91 [
    i32 130, label %16
    i32 129, label %42
    i32 128, label %68
  ]

16:                                               ; preds = %2
  store i32 8, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.scsi_report_key_data_challenge*
  store %struct.scsi_report_key_data_challenge* %23, %struct.scsi_report_key_data_challenge** %10, align 8
  %24 = load %struct.scsi_report_key_data_challenge*, %struct.scsi_report_key_data_challenge** %10, align 8
  %25 = bitcast %struct.scsi_report_key_data_challenge* %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.scsi_report_key_data_challenge*, %struct.scsi_report_key_data_challenge** %10, align 8
  %31 = getelementptr inbounds %struct.scsi_report_key_data_challenge, %struct.scsi_report_key_data_challenge* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scsi_ulto2b(i32 %29, i32 %32)
  %34 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %35 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scsi_report_key_data_challenge*, %struct.scsi_report_key_data_challenge** %10, align 8
  %38 = getelementptr inbounds %struct.scsi_report_key_data_challenge, %struct.scsi_report_key_data_challenge* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min(i32 4, i32 4)
  %41 = call i32 @bcopy(i32 %36, i32 %39, i32 %40)
  br label %93

42:                                               ; preds = %2
  store i32 8, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @malloc(i32 %43, i32 %44, i32 %47)
  %49 = bitcast i8* %48 to %struct.scsi_report_key_data_key1_key2*
  store %struct.scsi_report_key_data_key1_key2* %49, %struct.scsi_report_key_data_key1_key2** %11, align 8
  %50 = load %struct.scsi_report_key_data_key1_key2*, %struct.scsi_report_key_data_key1_key2** %11, align 8
  %51 = bitcast %struct.scsi_report_key_data_key1_key2* %50 to i32*
  store i32* %51, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load %struct.scsi_report_key_data_key1_key2*, %struct.scsi_report_key_data_key1_key2** %11, align 8
  %57 = getelementptr inbounds %struct.scsi_report_key_data_key1_key2, %struct.scsi_report_key_data_key1_key2* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scsi_ulto2b(i32 %55, i32 %58)
  %60 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %61 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.scsi_report_key_data_key1_key2*, %struct.scsi_report_key_data_key1_key2** %11, align 8
  %64 = getelementptr inbounds %struct.scsi_report_key_data_key1_key2, %struct.scsi_report_key_data_key1_key2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @min(i32 4, i32 4)
  %67 = call i32 @bcopy(i32 %62, i32 %65, i32 %66)
  br label %93

68:                                               ; preds = %2
  store i32 8, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @malloc(i32 %69, i32 %70, i32 %73)
  %75 = bitcast i8* %74 to %struct.scsi_send_key_data_rpc*
  store %struct.scsi_send_key_data_rpc* %75, %struct.scsi_send_key_data_rpc** %12, align 8
  %76 = load %struct.scsi_send_key_data_rpc*, %struct.scsi_send_key_data_rpc** %12, align 8
  %77 = bitcast %struct.scsi_send_key_data_rpc* %76 to i32*
  store i32* %77, i32** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load %struct.scsi_send_key_data_rpc*, %struct.scsi_send_key_data_rpc** %12, align 8
  %83 = getelementptr inbounds %struct.scsi_send_key_data_rpc, %struct.scsi_send_key_data_rpc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scsi_ulto2b(i32 %81, i32 %84)
  %86 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %87 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scsi_send_key_data_rpc*, %struct.scsi_send_key_data_rpc** %12, align 8
  %90 = getelementptr inbounds %struct.scsi_send_key_data_rpc, %struct.scsi_send_key_data_rpc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %93

91:                                               ; preds = %2
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %3, align 4
  br label %130

93:                                               ; preds = %68, %42, %16
  %94 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %95 = call i32 @cam_periph_lock(%struct.cam_periph* %94)
  %96 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %97 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %98 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %96, i32 %97)
  store %union.ccb* %98, %union.ccb** %6, align 8
  %99 = load %union.ccb*, %union.ccb** %6, align 8
  %100 = bitcast %union.ccb* %99 to i32*
  %101 = load i32, i32* @cd_retry_count, align 4
  %102 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %103 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %104 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %5, align 8
  %107 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SSD_FULL_SIZE, align 4
  %112 = call i32 @scsi_send_key(i32* %100, i32 %101, i32* null, i32 %102, i32 %105, i32 %108, i32* %109, i32 %110, i32 %111, i32 50000)
  %113 = load %union.ccb*, %union.ccb** %6, align 8
  %114 = load i32, i32* @cderror, align 4
  %115 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %116 = load i32, i32* @SF_RETRY_UA, align 4
  %117 = call i32 @cdrunccb(%union.ccb* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load %union.ccb*, %union.ccb** %6, align 8
  %119 = call i32 @xpt_release_ccb(%union.ccb* %118)
  %120 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %121 = call i32 @cam_periph_unlock(%struct.cam_periph* %120)
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %93
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @M_DEVBUF, align 4
  %127 = call i32 @free(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %93
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %91
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_send_key(i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
