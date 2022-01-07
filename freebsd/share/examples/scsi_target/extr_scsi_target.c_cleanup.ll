; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ccb_hdr = type { i32 }
%union.ccb = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"cleanup called\00", align 1
@targ_fd = common dso_local global i32 0, align 4
@TARGIOCDEBUG = common dso_local global i32 0, align 4
@TARGIOCDISABLE = common dso_local global i32 0, align 4
@pending_queue = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@work_queue = common dso_local global i32 0, align 4
@kq_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = alloca %struct.ccb_hdr*, align 8
  %2 = load i64, i64* @debug, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @debug, align 8
  %6 = load i32, i32* @targ_fd, align 4
  %7 = load i32, i32* @TARGIOCDEBUG, align 4
  %8 = call i32 @ioctl(i32 %6, i32 %7, i64* @debug)
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @targ_fd, align 4
  %11 = load i32, i32* @TARGIOCDISABLE, align 4
  %12 = call i32 @ioctl(i32 %10, i32 %11, i64* null)
  %13 = load i32, i32* @targ_fd, align 4
  %14 = call i32 @close(i32 %13)
  br label %15

15:                                               ; preds = %18, %9
  %16 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* @pending_queue)
  store %struct.ccb_hdr* %16, %struct.ccb_hdr** %1, align 8
  %17 = icmp ne %struct.ccb_hdr* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.ccb_hdr*, %struct.ccb_hdr** %1, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @periph_links, i32 0, i32 0), align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @pending_queue, %struct.ccb_hdr* %19, i32 %20)
  %22 = load %struct.ccb_hdr*, %struct.ccb_hdr** %1, align 8
  %23 = bitcast %struct.ccb_hdr* %22 to %union.ccb*
  %24 = call i32 @free_ccb(%union.ccb* %23)
  br label %15

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %29, %25
  %27 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* @work_queue)
  store %struct.ccb_hdr* %27, %struct.ccb_hdr** %1, align 8
  %28 = icmp ne %struct.ccb_hdr* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %1, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @periph_links, i32 0, i32 0), align 4
  %32 = call i32 @TAILQ_REMOVE(i32* @work_queue, %struct.ccb_hdr* %30, i32 %31)
  %33 = load %struct.ccb_hdr*, %struct.ccb_hdr** %1, align 8
  %34 = bitcast %struct.ccb_hdr* %33 to %union.ccb*
  %35 = call i32 @free_ccb(%union.ccb* %34)
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* @kq_fd, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @kq_fd, align 4
  %41 = call i32 @close(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
