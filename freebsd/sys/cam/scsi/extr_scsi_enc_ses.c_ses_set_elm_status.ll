; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_elm_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_elm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@SESCTL_CSEL = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@SES_PROCESS_CONTROL_REQS = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encstat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @ses_set_elm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_elm_status(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SESCTL_CSEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %9, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @memcpy(i32* %27, i32* %30, i32 4)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* @links, align 4
  %35 = call i32 @TAILQ_INSERT_TAIL(i32* %33, %struct.TYPE_11__* %8, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i32, i32* @SES_PROCESS_CONTROL_REQS, align 4
  %38 = call i32 @enc_update_request(%struct.TYPE_13__* %36, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PUSER, align 4
  %43 = call i32 @cam_periph_sleep(i32 %41, %struct.TYPE_11__* %8, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %19, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @enc_update_request(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cam_periph_sleep(i32, %struct.TYPE_11__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
