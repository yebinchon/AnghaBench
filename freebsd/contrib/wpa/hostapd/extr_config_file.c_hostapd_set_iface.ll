; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_set_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_set_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_config = type { i64, i32* }
%struct.hostapd_bss_config = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to set configuration field '%s' to value '%s'\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Configuration check failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_iface(%struct.hostapd_config* %0, %struct.hostapd_bss_config* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_config*, align 8
  %7 = alloca %struct.hostapd_bss_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.hostapd_config* %0, %struct.hostapd_config** %6, align 8
  store %struct.hostapd_bss_config* %1, %struct.hostapd_bss_config** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %13 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @hostapd_config_fill(%struct.hostapd_config* %12, %struct.hostapd_bss_config* %13, i8* %14, i8* %15, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %50

24:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %28 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %33 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hostapd_set_security_params(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %44 = call i64 @hostapd_config_check(%struct.hostapd_config* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_ERROR, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %46, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @hostapd_config_fill(%struct.hostapd_config*, %struct.hostapd_bss_config*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_set_security_params(i32, i32) #1

declare dso_local i64 @hostapd_config_check(%struct.hostapd_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
