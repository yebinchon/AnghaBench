; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_bridge_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_bridge_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.hostapd_vlan = type { i64* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"br%s.%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"brvlan%d\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"VLAN: Interface name was truncated to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hostapd_data*, %struct.hostapd_vlan*, i32)* @vlan_bridge_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_bridge_name(i8* %0, %struct.hostapd_data* %1, %struct.hostapd_vlan* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.hostapd_vlan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %6, align 8
  store %struct.hostapd_vlan* %2, %struct.hostapd_vlan** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %18 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %26 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = call i32 @os_strlcpy(i8* %24, i64* %27, i32 %28)
  store i32 0, i32* %10, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @IFNAMSIZ, align 4
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %64

49:                                               ; preds = %30
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @IFNAMSIZ, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IFNAMSIZ, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @MSG_WARNING, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @os_strlcpy(i8*, i64*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
