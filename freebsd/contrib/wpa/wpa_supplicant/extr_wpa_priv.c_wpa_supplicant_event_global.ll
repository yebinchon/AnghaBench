; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_supplicant_event_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_supplicant_event_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wpa_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_priv_global = type { %struct.wpa_priv_interface* }
%struct.wpa_priv_interface = type { i32, i32, %struct.TYPE_3__*, %struct.wpa_priv_interface* }
%struct.TYPE_3__ = type { i32 (i32)* }

@EVENT_INTERFACE_STATUS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: interface status ifindex %d mismatch (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_event_global(i8* %0, i32 %1, %union.wpa_event_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.wpa_event_data*, align 8
  %7 = alloca %struct.wpa_priv_global*, align 8
  %8 = alloca %struct.wpa_priv_interface*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.wpa_event_data* %2, %union.wpa_event_data** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wpa_priv_global*
  store %struct.wpa_priv_global* %11, %struct.wpa_priv_global** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EVENT_INTERFACE_STATUS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %85

16:                                               ; preds = %3
  %17 = load %struct.wpa_priv_global*, %struct.wpa_priv_global** %7, align 8
  %18 = getelementptr inbounds %struct.wpa_priv_global, %struct.wpa_priv_global* %17, i32 0, i32 0
  %19 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %18, align 8
  store %struct.wpa_priv_interface* %19, %struct.wpa_priv_interface** %8, align 8
  br label %20

20:                                               ; preds = %35, %16
  %21 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %22 = icmp ne %struct.wpa_priv_interface* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %28 = bitcast %union.wpa_event_data* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @os_strcmp(i32 %26, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %39

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %37 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %36, i32 0, i32 3
  %38 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %37, align 8
  store %struct.wpa_priv_interface* %38, %struct.wpa_priv_interface** %8, align 8
  br label %20

39:                                               ; preds = %33, %20
  %40 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %41 = icmp ne %struct.wpa_priv_interface* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %44 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = icmp ne i32 (i32)* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %51 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %56 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %61 = bitcast %union.wpa_event_data* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %49
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %68 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %72 = bitcast %union.wpa_event_data* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %74)
  br label %85

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %42, %39
  %78 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %79 = icmp ne %struct.wpa_priv_interface* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %union.wpa_event_data*, %union.wpa_event_data** %6, align 8
  %84 = call i32 @wpa_supplicant_event(%struct.wpa_priv_interface* %81, i32 %82, %union.wpa_event_data* %83)
  br label %85

85:                                               ; preds = %15, %65, %80, %77
  ret void
}

declare dso_local i64 @os_strcmp(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(%struct.wpa_priv_interface*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
