; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_ap_vendor_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_ap_vendor_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 }
%struct.wpa_config = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Line %d: invalid ap_vendor_elements\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot allocate memory for ap_vendor_elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)* @wpa_config_process_ap_vendor_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_process_ap_vendor_elements(%struct.global_parse_data* %0, %struct.wpa_config* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.global_parse_data*, align 8
  %7 = alloca %struct.wpa_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.global_parse_data* %0, %struct.global_parse_data** %6, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @os_strlen(i8* %13)
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %5, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.wpabuf* @wpabuf_alloc(i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %10, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32* @wpabuf_put(%struct.wpabuf* %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @hexstr2bin(i8* %31, i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32, i32* @MSG_ERROR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %41 = call i32 @wpabuf_free(%struct.wpabuf* %40)
  store i32 -1, i32* %5, align 4
  br label %54

42:                                               ; preds = %27
  %43 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %44 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %43, i32 0, i32 0
  %45 = load %struct.wpabuf*, %struct.wpabuf** %44, align 8
  %46 = call i32 @wpabuf_free(%struct.wpabuf* %45)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %48 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %49 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %48, i32 0, i32 0
  store %struct.wpabuf* %47, %struct.wpabuf** %49, align 8
  br label %53

50:                                               ; preds = %22
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %50, %36, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
