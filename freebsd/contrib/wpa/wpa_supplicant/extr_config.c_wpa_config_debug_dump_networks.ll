; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_debug_dump_networks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_debug_dump_networks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { i32, %struct.wpa_ssid** }
%struct.wpa_ssid = type { %struct.wpa_ssid*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Priority group %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"   id=%d ssid='%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_debug_dump_networks(%struct.wpa_config* %0) #0 {
  %2 = alloca %struct.wpa_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %12, i32 0, i32 1
  %14 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %14, i64 %16
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %4, align 8
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %27, %11
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %26 = icmp ne %struct.wpa_ssid* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wpa_ssid_txt(i32 %34, i32 %37)
  %39 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %38)
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 0
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %41, align 8
  store %struct.wpa_ssid* %42, %struct.wpa_ssid** %4, align 8
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @wpa_ssid_txt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
