; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_ifname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.hostapd_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"FAIL-NO-IFNAME-MATCH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*, i8*, i8*, i32, %struct.sockaddr_storage*, i32)* @hostapd_global_ctrl_iface_ifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_global_ctrl_iface_ifname(%struct.hapd_interfaces* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.sockaddr_storage* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hapd_interfaces*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hostapd_data*, align 8
  %17 = alloca i32, align 4
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sockaddr_storage* %5, %struct.sockaddr_storage** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces* %18, i8* %19)
  store %struct.hostapd_data* %20, %struct.hostapd_data** %16, align 8
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  %22 = icmp eq %struct.hostapd_data* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %7
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @os_snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %17, align 4
  %29 = call i64 @os_snprintf_error(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %8, align 4
  br label %42

34:                                               ; preds = %7
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @hostapd_ctrl_iface_receive_process(%struct.hostapd_data* %35, i8* %36, i8* %37, i32 %38, %struct.sockaddr_storage* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %34, %32, %31
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.hostapd_data* @hostapd_interfaces_get_hapd(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @hostapd_ctrl_iface_receive_process(%struct.hostapd_data*, i8*, i8*, i32, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
