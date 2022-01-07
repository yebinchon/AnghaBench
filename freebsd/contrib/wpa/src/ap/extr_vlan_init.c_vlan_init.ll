; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.hostapd_vlan*, i32, %struct.TYPE_3__ }
%struct.hostapd_vlan = type { %struct.hostapd_vlan*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@DYNAMIC_VLAN_DISABLED = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Out of memory while assigning VLAN interfaces\00", align 1
@VLAN_ID_WILDCARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.#\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"VLAN: Interface name was truncated to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_init(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_vlan*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DYNAMIC_VLAN_DISABLED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %14, %1
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %26, align 8
  %28 = icmp ne %struct.hostapd_vlan* %27, null
  br i1 %28, label %78, label %29

29:                                               ; preds = %22
  %30 = call %struct.hostapd_vlan* @os_zalloc(i32 16)
  store %struct.hostapd_vlan* %30, %struct.hostapd_vlan** %4, align 8
  %31 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %32 = icmp eq %struct.hostapd_vlan* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %89

36:                                               ; preds = %29
  %37 = load i32, i32* @VLAN_ID_WILDCARD, align 4
  %38 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %39 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %41 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @os_snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32, i32* @MSG_WARNING, align 4
  %53 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %54 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %65

57:                                               ; preds = %36
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %62 = call i32 @os_free(%struct.hostapd_vlan* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %89

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %67 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %69, align 8
  %71 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %72 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %71, i32 0, i32 0
  store %struct.hostapd_vlan* %70, %struct.hostapd_vlan** %72, align 8
  %73 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  %74 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %75 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.hostapd_vlan* %73, %struct.hostapd_vlan** %77, align 8
  br label %78

78:                                               ; preds = %65, %22, %14
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %80 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %81 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %83, align 8
  %85 = call i64 @vlan_dynamic_add(%struct.hostapd_data* %79, %struct.hostapd_vlan* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %89

88:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %87, %60, %33
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.hostapd_vlan* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @os_free(%struct.hostapd_vlan*) #1

declare dso_local i64 @vlan_dynamic_add(%struct.hostapd_data*, %struct.hostapd_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
