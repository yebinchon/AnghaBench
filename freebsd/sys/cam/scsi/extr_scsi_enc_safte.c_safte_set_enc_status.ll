; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_set_enc_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_set_enc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.scfg* }
%struct.scfg = type { i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SES_SETSTATUS_ENC_IDX = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@SAFTE_PROCESS_CONTROL_REQS = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encstat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @safte_set_enc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_set_enc_status(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scfg*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.scfg*, %struct.scfg** %11, align 8
  store %struct.scfg* %12, %struct.scfg** %8, align 8
  %13 = load %struct.scfg*, %struct.scfg** %8, align 8
  %14 = icmp eq %struct.scfg* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* @SES_SETSTATUS_ENC_IDX, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 15
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.scfg*, %struct.scfg** %8, align 8
  %27 = getelementptr inbounds %struct.scfg, %struct.scfg* %26, i32 0, i32 0
  %28 = load i32, i32* @links, align 4
  %29 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.TYPE_7__* %9, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* @SAFTE_PROCESS_CONTROL_REQS, align 4
  %32 = call i32 @enc_update_request(%struct.TYPE_8__* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PUSER, align 4
  %37 = call i32 @cam_periph_sleep(i32 %35, %struct.TYPE_7__* %9, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %17, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @enc_update_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cam_periph_sleep(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
