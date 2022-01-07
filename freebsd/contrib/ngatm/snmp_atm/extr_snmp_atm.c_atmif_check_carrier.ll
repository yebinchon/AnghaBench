; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_check_carrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_check_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmif_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@mib_netsock = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@ATMIF_CARRIER_UNKNOWN = common dso_local global i8* null, align 8
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@ATMIF_CARRIER_ON = common dso_local global i32 0, align 4
@ATMIF_CARRIER_OFF = common dso_local global i32 0, align 4
@ATMIF_NOTIFY_CARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmif_check_carrier(%struct.atmif_priv* %0) #0 {
  %2 = alloca %struct.atmif_priv*, align 8
  %3 = alloca %struct.ifmediareq, align 4
  %4 = alloca i32, align 4
  store %struct.atmif_priv* %0, %struct.atmif_priv** %2, align 8
  %5 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %6 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 @memset(%struct.ifmediareq* %3, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %13 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %11, i32 %17)
  %19 = load i32, i32* @mib_netsock, align 4
  %20 = load i32, i32* @SIOCGIFMEDIA, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, %struct.ifmediareq* %3)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i8*, i8** @ATMIF_CARRIER_UNKNOWN, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %27 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %70

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFM_AVALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** @ATMIF_CARRIER_UNKNOWN, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %39 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %70

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @ATMIF_CARRIER_ON, align 4
  %49 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %50 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @ATMIF_CARRIER_OFF, align 4
  %54 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %55 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %60 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %66 = load i32, i32* @ATMIF_NOTIFY_CARRIER, align 4
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = call i32 @atmif_send_notification(%struct.atmif_priv* %65, i32 %66, i64 %68)
  br label %70

70:                                               ; preds = %23, %35, %64, %57
  ret void
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifmediareq*) #1

declare dso_local i32 @atmif_send_notification(%struct.atmif_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
