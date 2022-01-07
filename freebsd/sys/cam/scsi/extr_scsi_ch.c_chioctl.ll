; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.ch_softc = type { i32, i32*, i32* }
%struct.changer_params = type { i32, i32, i32, i32 }
%struct.changer_move = type { i32 }
%struct.changer_exchange = type { i32 }
%struct.changer_position = type { i32 }
%struct.changer_element_status_request = type { i32 }
%struct.changer_set_voltag_request = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"entering chioctl\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"trying to do ioctl %#lx\0A\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@CHET_MT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CHET_ST = common dso_local global i64 0, align 8
@CHET_IE = common dso_local global i64 0, align 8
@CHET_DT = common dso_local global i64 0, align 8
@SCSI_REV_2 = common dso_local global i32 0, align 4
@SCSI_REV_0 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @chioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cam_periph*, align 8
  %13 = alloca %struct.ch_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.changer_params*, align 8
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load %struct.cdev*, %struct.cdev** %7, align 8
  %19 = getelementptr inbounds %struct.cdev, %struct.cdev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.cam_periph*
  store %struct.cam_periph* %21, %struct.cam_periph** %12, align 8
  %22 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %23 = call i32 @cam_periph_lock(%struct.cam_periph* %22)
  %24 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %25 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %28 = call i32 @CAM_DEBUG(i32 %26, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %30 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ch_softc*
  store %struct.ch_softc* %32, %struct.ch_softc** %13, align 8
  store i32 0, i32* %14, align 4
  %33 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %34 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @CAM_DEBUG(i32 %35, i32 %36, i8* %39)
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %43 [
    i32 135, label %42
    i32 136, label %42
    i32 128, label %42
    i32 134, label %42
  ]

42:                                               ; preds = %5, %5, %5, %5
  br label %53

43:                                               ; preds = %5
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @FWRITE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %50 = call i32 @cam_periph_unlock(%struct.cam_periph* %49)
  %51 = load i32, i32* @EBADF, align 4
  store i32 %51, i32* %6, align 4
  br label %190

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %180 [
    i32 132, label %55
    i32 137, label %60
    i32 131, label %65
    i32 135, label %70
    i32 129, label %83
    i32 136, label %109
    i32 133, label %144
    i32 128, label %150
    i32 134, label %157
    i32 130, label %175
  ]

55:                                               ; preds = %53
  %56 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = inttoptr i64 %57 to %struct.changer_move*
  %59 = call i32 @chmove(%struct.cam_periph* %56, %struct.changer_move* %58)
  store i32 %59, i32* %14, align 4
  br label %186

60:                                               ; preds = %53
  %61 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = inttoptr i64 %62 to %struct.changer_exchange*
  %64 = call i32 @chexchange(%struct.cam_periph* %61, %struct.changer_exchange* %63)
  store i32 %64, i32* %14, align 4
  br label %186

65:                                               ; preds = %53
  %66 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %67 = load i64, i64* %9, align 8
  %68 = inttoptr i64 %67 to %struct.changer_position*
  %69 = call i32 @chposition(%struct.cam_periph* %66, %struct.changer_position* %68)
  store i32 %69, i32* %14, align 4
  br label %186

70:                                               ; preds = %53
  %71 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %72 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %75 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @CHET_MT, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %73, %79
  %81 = load i64, i64* %9, align 8
  %82 = inttoptr i64 %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %186

83:                                               ; preds = %53
  %84 = load i64, i64* %9, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %89 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @CHET_MT, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp sgt i32 %87, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %14, align 4
  br label %186

98:                                               ; preds = %83
  %99 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %100 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @CHET_MT, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %108 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %186

109:                                              ; preds = %53
  %110 = load i64, i64* %9, align 8
  %111 = inttoptr i64 %110 to %struct.changer_params*
  store %struct.changer_params* %111, %struct.changer_params** %16, align 8
  %112 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %113 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @CHET_MT, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.changer_params*, %struct.changer_params** %16, align 8
  %119 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %121 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @CHET_ST, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.changer_params*, %struct.changer_params** %16, align 8
  %127 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %129 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @CHET_IE, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.changer_params*, %struct.changer_params** %16, align 8
  %135 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ch_softc*, %struct.ch_softc** %13, align 8
  %137 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @CHET_DT, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.changer_params*, %struct.changer_params** %16, align 8
  %143 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %186

144:                                              ; preds = %53
  %145 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %146 = load i64, i64* %9, align 8
  %147 = inttoptr i64 %146 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @chielem(%struct.cam_periph* %145, i32 %148)
  store i32 %149, i32* %14, align 4
  br label %186

150:                                              ; preds = %53
  %151 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %152 = load i32, i32* @SCSI_REV_2, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to %struct.changer_element_status_request*
  %156 = call i32 @chgetelemstatus(%struct.cam_periph* %151, i32 %152, i32 %153, %struct.changer_element_status_request* %155)
  store i32 %156, i32* %14, align 4
  br label %186

157:                                              ; preds = %53
  %158 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %159 = call i32 @chscsiversion(%struct.cam_periph* %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @SCSI_REV_0, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i64, i64* %9, align 8
  %168 = inttoptr i64 %167 to %struct.changer_element_status_request*
  %169 = call i32 @chgetelemstatus(%struct.cam_periph* %164, i32 %165, i32 %166, %struct.changer_element_status_request* %168)
  store i32 %169, i32* %14, align 4
  br label %174

170:                                              ; preds = %157
  %171 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %172 = call i32 @cam_periph_unlock(%struct.cam_periph* %171)
  %173 = load i32, i32* @ENXIO, align 4
  store i32 %173, i32* %6, align 4
  br label %190

174:                                              ; preds = %163
  br label %186

175:                                              ; preds = %53
  %176 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %177 = load i64, i64* %9, align 8
  %178 = inttoptr i64 %177 to %struct.changer_set_voltag_request*
  %179 = call i32 @chsetvoltag(%struct.cam_periph* %176, %struct.changer_set_voltag_request* %178)
  store i32 %179, i32* %14, align 4
  br label %186

180:                                              ; preds = %53
  %181 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load i64, i64* %9, align 8
  %184 = load i32, i32* @cherror, align 4
  %185 = call i32 @cam_periph_ioctl(%struct.cam_periph* %181, i32 %182, i64 %183, i32 %184)
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %180, %175, %174, %150, %144, %109, %98, %96, %70, %65, %60, %55
  %187 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %188 = call i32 @cam_periph_unlock(%struct.cam_periph* %187)
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %186, %170, %48
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @chmove(%struct.cam_periph*, %struct.changer_move*) #1

declare dso_local i32 @chexchange(%struct.cam_periph*, %struct.changer_exchange*) #1

declare dso_local i32 @chposition(%struct.cam_periph*, %struct.changer_position*) #1

declare dso_local i32 @chielem(%struct.cam_periph*, i32) #1

declare dso_local i32 @chgetelemstatus(%struct.cam_periph*, i32, i32, %struct.changer_element_status_request*) #1

declare dso_local i32 @chscsiversion(%struct.cam_periph*) #1

declare dso_local i32 @chsetvoltag(%struct.cam_periph*, %struct.changer_set_voltag_request*) #1

declare dso_local i32 @cam_periph_ioctl(%struct.cam_periph*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
