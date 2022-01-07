; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_dev_pw_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_dev_pw_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i64, i64, i32*, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WPS: Device Password ID\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WPS: Device Password ID %u\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS: Registrar trying to change Device Password ID from %u to %u\00", align 1
@DEV_PW_PUSHBUTTON = common dso_local global i64 0, align 8
@DEV_PW_DEFAULT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"WPS: Workaround - ignore PBC-to-PIN change\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"WPS: Found a matching Device Password\00", align 1
@DEV_PW_REGISTRAR_SPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, i32*)* @wps_process_dev_pw_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_dev_pw_id(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %84

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @WPA_GET_BE16(i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  store i32 0, i32* %3, align 4
  br label %84

24:                                               ; preds = %12
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %32 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEV_PW_PUSHBUTTON, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @DEV_PW_DEFAULT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

43:                                               ; preds = %36, %24
  %44 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %45 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %50 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bin_clear_free(i32* %59, i64 %62)
  %64 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %65 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %70 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %73 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %75 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %78 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %80 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %79, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %48, %43
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %54, %40, %20, %9
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
