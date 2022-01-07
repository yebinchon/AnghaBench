; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_bgscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_bgscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 }
%struct.wpa_config = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Line %d: failed to parse %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)* @wpa_config_process_bgscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_process_bgscan(%struct.global_parse_data* %0, %struct.wpa_config* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.global_parse_data*, align 8
  %7 = alloca %struct.wpa_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.global_parse_data* %0, %struct.global_parse_data** %6, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i8* @wpa_config_parse_string(i8* %13, i64* %10)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.global_parse_data*, %struct.global_parse_data** %6, align 8
  %21 = getelementptr inbounds %struct.global_parse_data, %struct.global_parse_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  store i32 -1, i32* %5, align 4
  br label %33

24:                                               ; preds = %4
  %25 = load %struct.global_parse_data*, %struct.global_parse_data** %6, align 8
  %26 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @wpa_global_config_parse_str(%struct.global_parse_data* %25, %struct.wpa_config* %26, i32 %27, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @os_free(i8* %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i8* @wpa_config_parse_string(i8*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_global_config_parse_str(%struct.global_parse_data*, %struct.wpa_config*, i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
