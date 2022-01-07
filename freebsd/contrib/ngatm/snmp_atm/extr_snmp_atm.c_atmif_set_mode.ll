; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmif_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifmediareq = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32, i32, i32 }

@mib_netsock = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SIOCGIFMEDIA: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@ATMIF_SUNI_MODE_SDH = common dso_local global i32 0, align 4
@IFM_ATM_SDH = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SIOCSIFMEDIA: %m\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmif_priv*, i32)* @atmif_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmif_set_mode(%struct.atmif_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmif_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifmediareq, align 4
  %7 = alloca %struct.ifreq, align 4
  store %struct.atmif_priv* %0, %struct.atmif_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.ifmediareq* %6 to %struct.ifreq*
  %9 = call i32 @memset(%struct.ifreq* %8, i32 0, i32 16)
  %10 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %6, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.atmif_priv*, %struct.atmif_priv** %4, align 8
  %13 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %11, i32 %17)
  %19 = load i32, i32* @mib_netsock, align 4
  %20 = load i32, i32* @SIOCGIFMEDIA, align 4
  %21 = bitcast %struct.ifmediareq* %6 to %struct.ifreq*
  %22 = call i64 @ioctl(i32 %19, i32 %20, %struct.ifreq* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = call i32 @syslog(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %2
  %29 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.atmif_priv*, %struct.atmif_priv** %4, align 8
  %33 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %31, i32 %37)
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ATMIF_SUNI_MODE_SDH, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load i32, i32* @IFM_ATM_SDH, align 4
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %28
  %51 = load i32, i32* @IFM_ATM_SDH, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* @mib_netsock, align 4
  %58 = load i32, i32* @SIOCSIFMEDIA, align 4
  %59 = call i64 @ioctl(i32 %57, i32 %58, %struct.ifreq* %7)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = call i32 @syslog(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %64, i32* %3, align 4
  br label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.atmif_priv*, %struct.atmif_priv** %4, align 8
  %68 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %61, %24
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
