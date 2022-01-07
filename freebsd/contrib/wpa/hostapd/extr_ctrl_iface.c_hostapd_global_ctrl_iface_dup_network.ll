; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_dup_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_dup_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32 }
%struct.hostapd_data = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DUP: no src ifname found in cmd: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DUP: no src ifname found: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DUP: no dst ifname found in cmd: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DUP: no dst ifname found: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*)* @hostapd_global_ctrl_iface_dup_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_global_ctrl_iface_dup_network(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.hostapd_data*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @os_strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  store i8 0, i8* %20, align 1
  %21 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces* %21, i8* %22)
  store %struct.hostapd_data* %23, %struct.hostapd_data** %8, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %25 = icmp ne %struct.hostapd_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %3, align 4
  br label %59

30:                                               ; preds = %19
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @os_strchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_ERROR, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %3, align 4
  br label %59

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  %43 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces* %43, i8* %44)
  store %struct.hostapd_data* %45, %struct.hostapd_data** %9, align 8
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %47 = icmp ne %struct.hostapd_data* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @MSG_ERROR, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %3, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %6, align 8
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @hostapd_ctrl_iface_dup_param(%struct.hostapd_data* %55, %struct.hostapd_data* %56, i8* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %48, %37, %26, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @hostapd_ctrl_iface_dup_param(%struct.hostapd_data*, %struct.hostapd_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
