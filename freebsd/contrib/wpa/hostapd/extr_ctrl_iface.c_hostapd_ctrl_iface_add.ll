; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Adding interface %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*)* @hostapd_ctrl_iface_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_add(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @hostapd_add_iface(%struct.hapd_interfaces* %6, i8* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_ERROR, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %3, align 4
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @hostapd_add_iface(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
