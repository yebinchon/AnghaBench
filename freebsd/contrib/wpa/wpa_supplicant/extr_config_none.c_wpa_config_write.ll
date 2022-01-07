; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_none.c_wpa_config_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_none.c_wpa_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_config_blob*, %struct.wpa_ssid* }
%struct.wpa_config_blob = type { %struct.wpa_config_blob* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Writing configuration file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_write(i8* %0, %struct.wpa_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_config*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_config_blob*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %4, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %10, i32 0, i32 1
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %5, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %15 = icmp ne %struct.wpa_ssid* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 0
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  store %struct.wpa_ssid* %20, %struct.wpa_ssid** %5, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %22, i32 0, i32 0
  %24 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %23, align 8
  store %struct.wpa_config_blob* %24, %struct.wpa_config_blob** %6, align 8
  br label %25

25:                                               ; preds = %29, %21
  %26 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  %27 = icmp ne %struct.wpa_config_blob* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %30, i32 0, i32 0
  %32 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %31, align 8
  store %struct.wpa_config_blob* %32, %struct.wpa_config_blob** %6, align 8
  br label %25

33:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
