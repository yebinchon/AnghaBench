; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_init_ccbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_init_ccbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_accept_tio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.atio_descr*, i32 }
%struct.atio_descr = type { i32 }
%struct.ccb_immediate_notify = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@MAX_INITIATORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"malloc ATIO\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"malloc atio_descr\00", align 1
@XPT_ACCEPT_TARGET_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"malloc INOT\00", align 1
@XPT_IMMEDIATE_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_ccbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ccbs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccb_accept_tio*, align 8
  %4 = alloca %struct.atio_descr*, align 8
  %5 = alloca %struct.ccb_immediate_notify*, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %52, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MAX_INITIATORS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = call i64 @malloc(i32 16)
  %12 = inttoptr i64 %11 to %struct.ccb_accept_tio*
  store %struct.ccb_accept_tio* %12, %struct.ccb_accept_tio** %3, align 8
  %13 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %14 = icmp eq %struct.ccb_accept_tio* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %56

17:                                               ; preds = %10
  %18 = call i64 @malloc(i32 4)
  %19 = inttoptr i64 %18 to %struct.atio_descr*
  store %struct.atio_descr* %19, %struct.atio_descr** %4, align 8
  %20 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %21 = icmp eq %struct.atio_descr* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %24 = call i32 @free(%struct.ccb_accept_tio* %23)
  %25 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %56

26:                                               ; preds = %17
  %27 = load i32, i32* @XPT_ACCEPT_TARGET_IO, align 4
  %28 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %29 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %32 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %33 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.atio_descr* %31, %struct.atio_descr** %34, align 8
  %35 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %36 = bitcast %struct.ccb_accept_tio* %35 to %union.ccb*
  %37 = call i32 @send_ccb(%union.ccb* %36, i32 1)
  %38 = call i64 @malloc(i32 4)
  %39 = inttoptr i64 %38 to %struct.ccb_immediate_notify*
  store %struct.ccb_immediate_notify* %39, %struct.ccb_immediate_notify** %5, align 8
  %40 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %5, align 8
  %41 = icmp eq %struct.ccb_immediate_notify* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %56

44:                                               ; preds = %26
  %45 = load i32, i32* @XPT_IMMEDIATE_NOTIFY, align 4
  %46 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %5, align 8
  %47 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %5, align 8
  %50 = bitcast %struct.ccb_immediate_notify* %49 to %union.ccb*
  %51 = call i32 @send_ccb(%union.ccb* %50, i32 1)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %6

55:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %42, %22, %15
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(%struct.ccb_accept_tio*) #1

declare dso_local i32 @send_ccb(%union.ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
