; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_work_inot.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_work_inot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ccb_immediate_notify = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Working on INOT %p\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@UA_BUS_RESET = common dso_local global i32 0, align 4
@UA_BDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"INOT message %#x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"INOT %p aborted\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unhandled INOT status %#x\00", align 1
@work_queue = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_immediate_notify*)* @work_inot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @work_inot(%struct.ccb_immediate_notify* %0) #0 {
  %2 = alloca %struct.ccb_immediate_notify*, align 8
  %3 = alloca i32, align 4
  store %struct.ccb_immediate_notify* %0, %struct.ccb_immediate_notify** %2, align 8
  %4 = load i64, i64* @debug, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %8 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ccb_immediate_notify* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %11 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @CAM_STATUS_MASK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %42 [
    i32 137, label %18
    i32 140, label %23
    i32 139, label %28
    i32 138, label %39
  ]

18:                                               ; preds = %9
  %19 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %20 = load i32, i32* @UA_BUS_RESET, align 4
  %21 = call i32 @tcmd_ua(i32 %19, i32 %20)
  %22 = call i32 (...) @abort_all_pending()
  br label %45

23:                                               ; preds = %9
  %24 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %25 = load i32, i32* @UA_BDR, align 4
  %26 = call i32 @tcmd_ua(i32 %24, i32 %25)
  %27 = call i32 (...) @abort_all_pending()
  br label %45

28:                                               ; preds = %9
  %29 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %30 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %33 [
    i32 128, label %32
    i32 133, label %32
    i32 135, label %32
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 129, label %32
    i32 136, label %32
    i32 134, label %32
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %33

33:                                               ; preds = %28, %32
  %34 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %35 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %9
  %40 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.ccb_immediate_notify* %40)
  br label %45

42:                                               ; preds = %9
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39, %38, %23, %18
  %46 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %47 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %46, i32 0, i32 1
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @periph_links, i32 0, i32 0), align 4
  %49 = call i32 @TAILQ_REMOVE(i32* @work_queue, %struct.TYPE_4__* %47, i32 %48)
  %50 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %2, align 8
  %51 = bitcast %struct.ccb_immediate_notify* %50 to %union.ccb*
  %52 = call i32 @send_ccb(%union.ccb* %51, i32 1)
  ret i32 1
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @tcmd_ua(i32, i32) #1

declare dso_local i32 @abort_all_pending(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @send_ccb(%union.ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
