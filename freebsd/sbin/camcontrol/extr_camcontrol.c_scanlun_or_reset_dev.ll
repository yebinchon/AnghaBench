; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scanlun_or_reset_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scanlun_or_reset_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cam_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAM_BUS_WILDCARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid bus number %d\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid target number %d\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid lun number %jx\00", align 1
@XPT_DEVICE = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"error opening transport layer device %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cam_errbuf = common dso_local global i64 0, align 8
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@XPT_RESET_DEV = common dso_local global i32 0, align 4
@CAM_FLAG_NONE = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"CAMIOCOMMAND ioctl failed\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error sending XPT_RESET_DEV CCB\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%s of %d:%d:%jx was successful\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Re-scan\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s of %d:%d:%jx returned error %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @scanlun_or_reset_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scanlun_or_reset_dev(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb, align 8
  %11 = alloca %struct.cam_device*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cam_device* null, %struct.cam_device** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 1, i32* %5, align 4
  br label %162

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  store i32 1, i32* %5, align 4
  br label %162

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  store i32 1, i32* %5, align 4
  br label %162

33:                                               ; preds = %26
  store i32 -1, i32* %12, align 4
  %34 = call i32 @bzero(%union.ccb* %10, i32 48)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64, i64* @XPT_DEVICE, align 8
  %39 = load i32, i32* @O_RDWR, align 4
  %40 = call i32 @open(i64 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* @XPT_DEVICE, align 8
  %44 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @XPT_DEVICE, align 8
  %46 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  store i32 1, i32* %5, align 4
  br label %162

47:                                               ; preds = %37
  br label %60

48:                                               ; preds = %33
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = call %struct.cam_device* @cam_open_btl(i64 %49, i64 %50, i64 %51, i32 %52, i32* null)
  store %struct.cam_device* %53, %struct.cam_device** %11, align 8
  %54 = load %struct.cam_device*, %struct.cam_device** %11, align 8
  %55 = icmp eq %struct.cam_device* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* @cam_errbuf, align 8
  %58 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  store i32 1, i32* %5, align 4
  br label %162

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @XPT_SCAN_LUN, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @XPT_RESET_DEV, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 5000, i32* %81, align 8
  %82 = load i32, i32* @CAM_FLAG_NONE, align 4
  %83 = bitcast %union.ccb* %10 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 5, i32* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %67
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @CAMIOCOMMAND, align 4
  %93 = call i64 @ioctl(i32 %91, i32 %92, %union.ccb* %10)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @close(i32 %97)
  store i32 1, i32* %5, align 4
  br label %162

99:                                               ; preds = %90
  br label %109

100:                                              ; preds = %67
  %101 = load %struct.cam_device*, %struct.cam_device** %11, align 8
  %102 = call i64 @cam_send_ccb(%struct.cam_device* %101, %union.ccb* %10)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.cam_device*, %struct.cam_device** %11, align 8
  %107 = call i32 @cam_close_device(%struct.cam_device* %106)
  store i32 1, i32* %5, align 4
  br label %162

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @close(i32 %113)
  br label %118

115:                                              ; preds = %109
  %116 = load %struct.cam_device*, %struct.cam_device** %11, align 8
  %117 = call i32 @cam_close_device(%struct.cam_device* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CAM_STATUS_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @CAM_REQ_CMP, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %126
  %130 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CAM_STATUS_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CAM_BDR_SENT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %129, %118
  %138 = load i32, i32* @stdout, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 (i32, i8*, i8*, i64, i64, i64, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %142, i64 %143, i64 %144, i64 %145)
  store i32 0, i32* %5, align 4
  br label %162

147:                                              ; preds = %129, %126
  %148 = load i32, i32* @stdout, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @CAM_STATUS_MASK, align 4
  %160 = and i32 %158, %159
  %161 = call i32 (i32, i8*, i8*, i64, i64, i64, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %152, i64 %153, i64 %154, i64 %155, i32 %160)
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %147, %137, %104, %95, %56, %42, %30, %23, %16
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @open(i64, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.cam_device* @cam_open_btl(i64, i64, i64, i32, i32*) #1

declare dso_local i64 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @cam_close_device(%struct.cam_device*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
