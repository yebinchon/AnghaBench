; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_country.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 }
%struct.wpa_config = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid country set\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"country='%c%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)* @wpa_config_process_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_process_country(%struct.global_parse_data* %0, %struct.wpa_config* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.global_parse_data*, align 8
  %7 = alloca %struct.wpa_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.global_parse_data* %0, %struct.global_parse_data** %6, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %51

22:                                               ; preds = %14
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %25, i8* %29, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %32, i8* %36, align 1
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %39 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %45 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %22, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
