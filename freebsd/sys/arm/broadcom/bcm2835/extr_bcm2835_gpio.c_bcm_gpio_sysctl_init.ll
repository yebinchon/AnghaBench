; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, %struct.TYPE_2__*, %struct.bcm_gpio_sysctl*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bcm_gpio_sysctl = type { i32, %struct.bcm_gpio_softc* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"GPIO Pins\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"GPIO Pin\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@bcm_gpio_func_proc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Pin Function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_gpio_softc*)* @bcm_gpio_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_sysctl_init(%struct.bcm_gpio_softc* %0) #0 {
  %2 = alloca %struct.bcm_gpio_softc*, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.bcm_gpio_sysctl*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca %struct.sysctl_oid_list*, align 8
  %12 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %2, align 8
  %13 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %15)
  store %struct.sysctl_ctx_list* %16, %struct.sysctl_ctx_list** %5, align 8
  %17 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %19)
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %6, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %9, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %7, align 8
  %28 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %29 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %28)
  store %struct.sysctl_oid_list* %29, %struct.sysctl_oid_list** %10, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %84, %1
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %30
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @snprintf(i8* %37, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %44 = load i32, i32* @CTLFLAG_RD, align 4
  %45 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* %43, i32 %44, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %45, %struct.sysctl_oid** %8, align 8
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %47 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  store %struct.sysctl_oid_list* %47, %struct.sysctl_oid_list** %11, align 8
  %48 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %49 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %49, i32 0, i32 2
  %51 = load %struct.bcm_gpio_sysctl*, %struct.bcm_gpio_sysctl** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bcm_gpio_sysctl, %struct.bcm_gpio_sysctl* %51, i64 %53
  %55 = getelementptr inbounds %struct.bcm_gpio_sysctl, %struct.bcm_gpio_sysctl* %54, i32 0, i32 1
  store %struct.bcm_gpio_softc* %48, %struct.bcm_gpio_softc** %55, align 8
  %56 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %56, i32 0, i32 2
  %58 = load %struct.bcm_gpio_sysctl*, %struct.bcm_gpio_sysctl** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bcm_gpio_sysctl, %struct.bcm_gpio_sysctl* %58, i64 %60
  store %struct.bcm_gpio_sysctl* %61, %struct.bcm_gpio_sysctl** %4, align 8
  %62 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %63 = load %struct.bcm_gpio_sysctl*, %struct.bcm_gpio_sysctl** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_gpio_sysctl, %struct.bcm_gpio_sysctl* %63, i32 0, i32 1
  store %struct.bcm_gpio_softc* %62, %struct.bcm_gpio_softc** %64, align 8
  %65 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bcm_gpio_sysctl*, %struct.bcm_gpio_sysctl** %4, align 8
  %74 = getelementptr inbounds %struct.bcm_gpio_sysctl, %struct.bcm_gpio_sysctl* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %11, align 8
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLFLAG_RW, align 4
  %79 = load i32, i32* @CTLTYPE_STRING, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.bcm_gpio_sysctl*, %struct.bcm_gpio_sysctl** %4, align 8
  %82 = load i32, i32* @bcm_gpio_func_proc, align 4
  %83 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %75, %struct.sysctl_oid_list* %76, i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %80, %struct.bcm_gpio_sysctl* %81, i32 16, i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %36
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %30

87:                                               ; preds = %30
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.bcm_gpio_sysctl*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
