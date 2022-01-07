; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chsetvoltag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chsetvoltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.changer_set_voltag_request = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%union.ccb = type { i32 }
%struct.ch_softc = type { i32*, i32*, i32 }
%struct.scsi_send_volume_tag_parameters = type { i8*, i32 }

@CHET_DT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CSVR_ALTERNATE = common dso_local global i32 0, align 4
@CSVR_MODE_MASK = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_ASSERT_ALTERNATE = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_REPLACE_ALTERNATE = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_UNDEFINED_ALTERNATE = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_ASSERT_PRIMARY = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_REPLACE_PRIMARY = common dso_local global i32 0, align 4
@SEND_VOLUME_TAG_UNDEFINED_PRIMARY = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CH_TIMEOUT_SEND_VOLTAG = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.changer_set_voltag_request*)* @chsetvoltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsetvoltag(%struct.cam_periph* %0, %struct.changer_set_voltag_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.changer_set_voltag_request*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ch_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_send_volume_tag_parameters, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.changer_set_voltag_request* %1, %struct.changer_set_voltag_request** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ch_softc*
  store %struct.ch_softc* %16, %struct.ch_softc** %7, align 8
  %17 = call i32 @bzero(%struct.scsi_send_volume_tag_parameters* %10, i32 16)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %28, %2
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.scsi_send_volume_tag_parameters, %struct.scsi_send_volume_tag_parameters* %10, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 32, i8* %27, align 1
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %33 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHET_DT, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %31
  %40 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %41 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ch_softc*, %struct.ch_softc** %7, align 8
  %44 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %47 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %42, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @ENODEV, align 4
  store i32 %54, i32* %3, align 4
  br label %149

55:                                               ; preds = %39
  %56 = load %struct.ch_softc*, %struct.ch_softc** %7, align 8
  %57 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %60 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %65 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %69 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CSVR_ALTERNATE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %55
  %75 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %76 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CSVR_MODE_MASK, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %86 [
    i32 128, label %80
    i32 129, label %82
    i32 130, label %84
  ]

80:                                               ; preds = %74
  %81 = load i32, i32* @SEND_VOLUME_TAG_ASSERT_ALTERNATE, align 4
  store i32 %81, i32* %9, align 4
  br label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @SEND_VOLUME_TAG_REPLACE_ALTERNATE, align 4
  store i32 %83, i32* %9, align 4
  br label %88

84:                                               ; preds = %74
  %85 = load i32, i32* @SEND_VOLUME_TAG_UNDEFINED_ALTERNATE, align 4
  store i32 %85, i32* %9, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %11, align 4
  br label %147

88:                                               ; preds = %84, %82, %80
  br label %104

89:                                               ; preds = %55
  %90 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %91 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CSVR_MODE_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %101 [
    i32 128, label %95
    i32 129, label %97
    i32 130, label %99
  ]

95:                                               ; preds = %89
  %96 = load i32, i32* @SEND_VOLUME_TAG_ASSERT_PRIMARY, align 4
  store i32 %96, i32* %9, align 4
  br label %103

97:                                               ; preds = %89
  %98 = load i32, i32* @SEND_VOLUME_TAG_REPLACE_PRIMARY, align 4
  store i32 %98, i32* %9, align 4
  br label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @SEND_VOLUME_TAG_UNDEFINED_PRIMARY, align 4
  store i32 %100, i32* %9, align 4
  br label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %11, align 4
  br label %147

103:                                              ; preds = %99, %97, %95
  br label %104

104:                                              ; preds = %103, %88
  %105 = getelementptr inbounds %struct.scsi_send_volume_tag_parameters, %struct.scsi_send_volume_tag_parameters* %10, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %108 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %112 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @strlen(i32 %114)
  %116 = call i32 @min(i32 %115, i32 8)
  %117 = call i32 @memcpy(i8* %106, i32 %110, i32 %116)
  %118 = load %struct.changer_set_voltag_request*, %struct.changer_set_voltag_request** %5, align 8
  %119 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.scsi_send_volume_tag_parameters, %struct.scsi_send_volume_tag_parameters* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @scsi_ulto2b(i32 %121, i32 %123)
  %125 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %126 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %127 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %125, i32 %126)
  store %union.ccb* %127, %union.ccb** %6, align 8
  %128 = load %union.ccb*, %union.ccb** %6, align 8
  %129 = bitcast %union.ccb* %128 to i32*
  %130 = load i32, i32* @chdone, align 4
  %131 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @SSD_FULL_SIZE, align 4
  %135 = load i32, i32* @CH_TIMEOUT_SEND_VOLTAG, align 4
  %136 = call i32 @scsi_send_volume_tag(i32* %129, i32 1, i32 %130, i32 %131, i32 %132, i32 %133, %struct.scsi_send_volume_tag_parameters* %10, i32 %134, i32 %135)
  %137 = load %union.ccb*, %union.ccb** %6, align 8
  %138 = load i32, i32* @cherror, align 4
  %139 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %140 = load i32, i32* @SF_RETRY_UA, align 4
  %141 = load %struct.ch_softc*, %struct.ch_softc** %7, align 8
  %142 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @cam_periph_runccb(%union.ccb* %137, i32 %138, i32 %139, i32 %140, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load %union.ccb*, %union.ccb** %6, align 8
  %146 = call i32 @xpt_release_ccb(%union.ccb* %145)
  br label %147

147:                                              ; preds = %104, %101, %86
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %53, %37
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @bzero(%struct.scsi_send_volume_tag_parameters*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_send_volume_tag(i32*, i32, i32, i32, i32, i32, %struct.scsi_send_volume_tag_parameters*, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
