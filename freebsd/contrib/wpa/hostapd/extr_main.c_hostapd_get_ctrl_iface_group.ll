; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_get_ctrl_iface_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_get_ctrl_iface_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32 }
%struct.group = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown group '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*)* @hostapd_get_ctrl_iface_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_get_ctrl_iface_group(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.group* @getgrnam(i8* %7)
  store %struct.group* %8, %struct.group** %6, align 8
  %9 = load %struct.group*, %struct.group** %6, align 8
  %10 = icmp eq %struct.group* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.group*, %struct.group** %6, align 8
  %17 = getelementptr inbounds %struct.group, %struct.group* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %20 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
