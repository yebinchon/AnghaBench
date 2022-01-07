; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_get_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmif_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@mib_netsock = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SIOCGIFMEDIA: %m\00", align 1
@ATMIF_SUNI_MODE_UNKNOWN = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@IFM_ATM_SDH = common dso_local global i32 0, align 4
@ATMIF_SUNI_MODE_SDH = common dso_local global i32 0, align 4
@ATMIF_SUNI_MODE_SONET = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmif_priv*)* @atmif_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmif_get_mode(%struct.atmif_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmif_priv*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  store %struct.atmif_priv* %0, %struct.atmif_priv** %3, align 8
  %5 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.atmif_priv*, %struct.atmif_priv** %3, align 8
  %9 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %7, i32 %13)
  %15 = load i32, i32* @mib_netsock, align 4
  %16 = load i32, i32* @SIOCGIFMEDIA, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.ifmediareq* %4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = call i32 @syslog(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ATMIF_SUNI_MODE_UNKNOWN, align 4
  %23 = load %struct.atmif_priv*, %struct.atmif_priv** %3, align 8
  %24 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFM_ATM_SDH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @ATMIF_SUNI_MODE_SDH, align 4
  %35 = load %struct.atmif_priv*, %struct.atmif_priv** %3, align 8
  %36 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %43

38:                                               ; preds = %27
  %39 = load i32, i32* @ATMIF_SUNI_MODE_SONET, align 4
  %40 = load %struct.atmif_priv*, %struct.atmif_priv** %3, align 8
  %41 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifmediareq*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
