; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_softc = type { i32, i32, i32, i32, i32 }

@cfiscsi_softc = common dso_local global %struct.cfiscsi_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"cfiscsi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cfiscsi_sessions\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cfiscsi_data_wait\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@cfiscsi_data_wait_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cfiscsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfiscsi_init() #0 {
  %1 = alloca %struct.cfiscsi_softc*, align 8
  store %struct.cfiscsi_softc* @cfiscsi_softc, %struct.cfiscsi_softc** %1, align 8
  %2 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %1, align 8
  %3 = call i32 @bzero(%struct.cfiscsi_softc* %2, i32 20)
  %4 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %1, align 8
  %5 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %4, i32 0, i32 4
  %6 = load i32, i32* @MTX_DEF, align 4
  %7 = call i32 @mtx_init(i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %6)
  %8 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %1, align 8
  %9 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %8, i32 0, i32 3
  %10 = call i32 @cv_init(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %1, align 8
  %12 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %11, i32 0, i32 1
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %1, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %14, i32 0, i32 0
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %18 = call i32 @uma_zcreate(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %17, i32 0)
  store i32 %18, i32* @cfiscsi_data_wait_zone, align 4
  ret i32 0
}

declare dso_local i32 @bzero(%struct.cfiscsi_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
