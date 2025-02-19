; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_hessid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_process_hessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_parse_data = type { i32 }
%struct.wpa_config = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Line %d: Invalid hessid '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.global_parse_data*, %struct.wpa_config*, i32, i8*)* @wpa_config_process_hessid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_process_hessid(%struct.global_parse_data* %0, %struct.wpa_config* %1, i32 %2, i8* %3) #0 {
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
  %11 = load %struct.wpa_config*, %struct.wpa_config** %7, align 8
  %12 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @hwaddr_aton2(i8* %10, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  store i32 -1, i32* %5, align 4
  br label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i64 @hwaddr_aton2(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
