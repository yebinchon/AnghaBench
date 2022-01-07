; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_try_pass_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_try_pass_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.ccb_pathinq = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"couldn't get CPI\00", align 1
@PROTO_SCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*)* @ata_try_pass_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_try_pass_16(%struct.cam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca %struct.ccb_pathinq, align 8
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  %5 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %6 = call i64 @get_cpi(%struct.cam_device* %5, %struct.ccb_pathinq* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PROTO_SCSI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @get_cpi(%struct.cam_device*, %struct.ccb_pathinq*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
