; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_set_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__*, %struct.hostapd_config* }
%struct.TYPE_3__ = type { i64 }
%struct.hostapd_config = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@DENY_UNLESS_ACCEPTED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set accept acl\00", align 1
@ACCEPT_UNLESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to set deny acl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @hostapd_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_set_acl(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.hostapd_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 1
  %8 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  store %struct.hostapd_config* %8, %struct.hostapd_config** %3, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DENY_UNLESS_ACCEPTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %28 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %29 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @hostapd_set_acl_list(%struct.hostapd_data* %27, i32 %34, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %85

49:                                               ; preds = %26
  br label %85

50:                                               ; preds = %16
  %51 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %52 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACCEPT_UNLESS_DENIED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %62 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %63 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hostapd_config*, %struct.hostapd_config** %3, align 8
  %70 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @hostapd_set_acl_list(%struct.hostapd_data* %61, i32 %68, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %60
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %85

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %15, %46, %80, %84, %49
  ret void
}

declare dso_local i32 @hostapd_set_acl_list(%struct.hostapd_data*, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
