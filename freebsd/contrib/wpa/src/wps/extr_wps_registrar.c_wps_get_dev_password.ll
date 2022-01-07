; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_get_dev_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_get_dev_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS: Use default PIN for PBC\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"WPS: No match for OOB Device Password ID, but PIN found\00", align 1
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"WPS: No Device Password available for the Enrollee (context %p registrar %p)\00", align 1
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*)* @wps_get_dev_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_get_dev_password(%struct.wps_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @bin_clear_free(i32* %8, i64 %11)
  %13 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %14 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32* bitcast ([9 x i8]* @.str.1 to i32*), i32** %4, align 8
  store i64 8, i64* %5, align 8
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %29 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @wps_registrar_get_pin(i32 %27, i32 %30, i64* %5)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %36 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 16
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %43 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %34, %22
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32*, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %53, i32 %58)
  %60 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 5
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %66 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 3
  %70 = call i32 @wps_cb_pin_needed(i32 %64, i32 %67, i32* %69)
  store i32 -1, i32* %2, align 4
  br label %86

71:                                               ; preds = %46
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32* @os_memdup(i32* %72, i64 %73)
  %75 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %78 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %81, %49
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @bin_clear_free(i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wps_registrar_get_pin(i32, i32, i64*) #1

declare dso_local i32 @wps_cb_pin_needed(i32, i32, i32*) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
