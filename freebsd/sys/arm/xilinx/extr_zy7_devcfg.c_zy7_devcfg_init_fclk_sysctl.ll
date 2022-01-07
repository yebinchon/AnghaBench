; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_init_fclk_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_init_fclk_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.zy7_devcfg_softc = type { i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@_hw_fpga = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fclk\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FCLK_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"actual_freq\00", align 1
@fclk_configs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Actual frequency\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@zy7_devcfg_fclk_sysctl_freq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Configured frequency\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@zy7_devcfg_fclk_sysctl_source = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Clock source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zy7_devcfg_softc*)* @zy7_devcfg_init_fclk_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_devcfg_init_fclk_sysctl(%struct.zy7_devcfg_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zy7_devcfg_softc*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.zy7_devcfg_softc* %0, %struct.zy7_devcfg_softc** %3, align 8
  %7 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %8 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %7, i32 0, i32 0
  %9 = call i32 @sysctl_ctx_init(i32* %8)
  %10 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %10, i32 0, i32 0
  %12 = load i32, i32* @_hw_fpga, align 4
  %13 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %12)
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i32, i32* @CTLFLAG_RD, align 4
  %16 = call i8* @SYSCTL_ADD_NODE(i32* %11, i32 %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = bitcast i8* %16 to %struct.sysctl_oid*
  %18 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %19 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %18, i32 0, i32 1
  store %struct.sysctl_oid* %17, %struct.sysctl_oid** %19, align 8
  %20 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %21 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %20, i32 0, i32 1
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %21, align 8
  %23 = icmp eq %struct.sysctl_oid* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %26 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %25, i32 0, i32 0
  %27 = call i32 @sysctl_ctx_free(i32* %26)
  store i32 -1, i32* %2, align 4
  br label %95

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %91, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FCLK_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %29
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @snprintf(i8* %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %38 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %37, i32 0, i32 0
  %39 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %40 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %39, i32 0, i32 1
  %41 = load %struct.sysctl_oid*, %struct.sysctl_oid** %40, align 8
  %42 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %41)
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* @CTLFLAG_RD, align 4
  %46 = call i8* @SYSCTL_ADD_NODE(i32* %38, i32 %42, i32 %43, i8* %44, i32 %45, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = bitcast i8* %46 to %struct.sysctl_oid*
  store %struct.sysctl_oid* %47, %struct.sysctl_oid** %4, align 8
  %48 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %49 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %48, i32 0, i32 0
  %50 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %51 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %50)
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fclk_configs, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @SYSCTL_ADD_INT(i32* %49, i32 %51, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32* %58, i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %62 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %61, i32 0, i32 0
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RW, align 4
  %67 = load i32, i32* @CTLTYPE_INT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fclk_configs, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @zy7_devcfg_fclk_sysctl_freq, align 4
  %75 = call i32 @SYSCTL_ADD_PROC(i32* %62, i32 %64, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %68, %struct.TYPE_3__* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %76 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %77 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %76, i32 0, i32 0
  %78 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %79 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RW, align 4
  %82 = load i32, i32* @CTLTYPE_STRING, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fclk_configs, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @zy7_devcfg_fclk_sysctl_source, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(i32* %77, i32 %79, i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %83, %struct.TYPE_3__* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %91

91:                                               ; preds = %33
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %29

94:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %24
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i8* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.TYPE_3__*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
