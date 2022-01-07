; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.cpsw_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Enable switch debug messages\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"attachedSecs\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@cpsw_stat_attached = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Time since driver attach\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"intr_coalesce_us\00", align 1
@cpsw_intr_coalesce = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"minimum time between interrupts\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CPSW Ports Statistics\00", align 1
@CPSW_PORTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"CPSW Port Statistics\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@cpsw_stat_uptime = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Seconds since driver init\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"CPSW Statistics\00", align 1
@CPSW_SYSCTL_COUNT = common dso_local global i32 0, align 4
@cpsw_stat_sysctls = common dso_local global %struct.TYPE_2__* null, align 8
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@cpsw_stats_sysctl = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"CPSW Queue Statistics\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"TX Queue Statistics\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"RX Queue Statistics\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Watchdog Statistics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_add_sysctls(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca %struct.sysctl_oid_list*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %15 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %16)
  store %struct.sysctl_ctx_list* %17, %struct.sysctl_ctx_list** %3, align 8
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %20)
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %7, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RW, align 4
  %27 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %28 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %27, i32 0, i32 4
  %29 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32* %28, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_UINT, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %37 = load i32, i32* @cpsw_stat_attached, align 4
  %38 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %35, %struct.cpsw_softc* %36, i32 0, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %40 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLTYPE_UINT, align 4
  %43 = load i32, i32* @CTLFLAG_RW, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %46 = load i32, i32* @cpsw_intr_coalesce, align 4
  %47 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %39, %struct.sysctl_oid_list* %40, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %44, %struct.cpsw_softc* %45, i32 0, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %49 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %50 = load i32, i32* @OID_AUTO, align 4
  %51 = load i32, i32* @CTLFLAG_RD, align 4
  %52 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %48, %struct.sysctl_oid_list* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store %struct.sysctl_oid* %52, %struct.sysctl_oid** %6, align 8
  %53 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %54 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %53)
  store %struct.sysctl_oid_list* %54, %struct.sysctl_oid_list** %10, align 8
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %95, %1
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @CPSW_PORTS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %61 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %67 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %95

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 48, %72
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8 %74, i8* %75, align 16
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 1
  store i8 0, i8* %76, align 1
  %77 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %78 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %77, %struct.sysctl_oid_list* %78, i32 %79, i8* %80, i32 %81, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %82, %struct.sysctl_oid** %6, align 8
  %83 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %84 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %83)
  store %struct.sysctl_oid_list* %84, %struct.sysctl_oid_list** %11, align 8
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %11, align 8
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLTYPE_UINT, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @cpsw_stat_uptime, align 4
  %94 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %85, %struct.sysctl_oid_list* %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %90, %struct.cpsw_softc* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %71, %70
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %55

98:                                               ; preds = %55
  %99 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %100 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %99, %struct.sysctl_oid_list* %100, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %102, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store %struct.sysctl_oid* %103, %struct.sysctl_oid** %4, align 8
  %104 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %105 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %104)
  store %struct.sysctl_oid_list* %105, %struct.sysctl_oid_list** %8, align 8
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %132, %98
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @CPSW_SYSCTL_COUNT, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %106
  %111 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %112 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_stat_sysctls, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @CTLTYPE_U64, align 4
  %121 = load i32, i32* @CTLFLAG_RD, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %124 = load i32, i32* @cpsw_stats_sysctl, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_stat_sysctls, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %111, %struct.sysctl_oid_list* %112, i32 %113, i8* %119, i32 %122, %struct.cpsw_softc* %123, i32 0, i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %110
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %106

135:                                              ; preds = %106
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %138 = load i32, i32* @OID_AUTO, align 4
  %139 = load i32, i32* @CTLFLAG_RD, align 4
  %140 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i32 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %139, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store %struct.sysctl_oid* %140, %struct.sysctl_oid** %5, align 8
  %141 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %142 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %141)
  store %struct.sysctl_oid_list* %142, %struct.sysctl_oid_list** %9, align 8
  %143 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %144 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RD, align 4
  %147 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %143, %struct.sysctl_oid_list* %144, i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %146, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store %struct.sysctl_oid* %147, %struct.sysctl_oid** %6, align 8
  %148 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %149 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %150 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %151 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %150, i32 0, i32 2
  %152 = call i32 @cpsw_add_queue_sysctls(%struct.sysctl_ctx_list* %148, %struct.sysctl_oid* %149, i32* %151)
  %153 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %154 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %155 = load i32, i32* @OID_AUTO, align 4
  %156 = load i32, i32* @CTLFLAG_RD, align 4
  %157 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %153, %struct.sysctl_oid_list* %154, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %156, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  store %struct.sysctl_oid* %157, %struct.sysctl_oid** %6, align 8
  %158 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %159 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %160 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %161 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %160, i32 0, i32 1
  %162 = call i32 @cpsw_add_queue_sysctls(%struct.sysctl_ctx_list* %158, %struct.sysctl_oid* %159, i32* %161)
  %163 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %164 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %165 = load i32, i32* @OID_AUTO, align 4
  %166 = load i32, i32* @CTLFLAG_RD, align 4
  %167 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %163, %struct.sysctl_oid_list* %164, i32 %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %166, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  store %struct.sysctl_oid* %167, %struct.sysctl_oid** %6, align 8
  %168 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %169 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %170 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %171 = call i32 @cpsw_add_watchdog_sysctls(%struct.sysctl_ctx_list* %168, %struct.sysctl_oid* %169, %struct.cpsw_softc* %170)
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.cpsw_softc*, i32, i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @cpsw_add_queue_sysctls(%struct.sysctl_ctx_list*, %struct.sysctl_oid*, i32*) #1

declare dso_local i32 @cpsw_add_watchdog_sysctls(%struct.sysctl_ctx_list*, %struct.sysctl_oid*, %struct.cpsw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
