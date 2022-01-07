; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_send_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_send_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"sending ccb (%#x)\00", align 1
@pending_queue = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"write ccb\00", align 1
@CAM_PROVIDE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_ccb(%union.ccb* %0, i32 %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* %4, align 4
  %15 = load %union.ccb*, %union.ccb** %3, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %union.ccb*, %union.ccb** %3, align 8
  %20 = call i64 @XPT_FC_IS_QUEUED(%union.ccb* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %union.ccb*, %union.ccb** %3, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_6__*
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @periph_links, i32 0, i32 0), align 4
  %26 = call i32 @TAILQ_INSERT_TAIL(i32* @pending_queue, %struct.TYPE_6__* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load i32, i32* @targ_fd, align 4
  %29 = call i32 @write(i32 %28, %union.ccb** %3, i32 8)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @CAM_PROVIDE_FAIL, align 4
  %35 = load %union.ccb*, %union.ccb** %3, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @XPT_FC_IS_QUEUED(%union.ccb*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @write(i32, %union.ccb**, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
