; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wpa_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@EVENT_INTERFACE_STATUS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"interface status ifindex %d mismatch (%d)\00", align 1
@EVENT_INTERFACE_ADDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_event_global(i8* %0, i32 %1, %union.wpa_event_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.wpa_event_data*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.wpa_event_data* %2, %union.wpa_event_data** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EVENT_INTERFACE_STATUS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %63

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %16 = bitcast %union.wpa_event_data* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.wpa_supplicant* @wpa_supplicant_get_iface(i8* %14, i32 %18)
  store %struct.wpa_supplicant* %19, %struct.wpa_supplicant** %7, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %21 = icmp ne %struct.wpa_supplicant* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %13
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = icmp ne i32 (i32)* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %34(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %41 = bitcast %union.wpa_event_data* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %29
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %50 = bitcast %union.wpa_event_data* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wpa_dbg(%struct.wpa_supplicant* %46, i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  br label %63

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %22, %13
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %57 = icmp ne %struct.wpa_supplicant* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %62 = call i32 @wpa_supplicant_event(%struct.wpa_supplicant* %59, i32 %60, %union.wpa_event_data* %61)
  br label %63

63:                                               ; preds = %12, %45, %58, %55
  ret void
}

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_get_iface(i8*, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(%struct.wpa_supplicant*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
