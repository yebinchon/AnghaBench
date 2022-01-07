; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_get_global_ctrl_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_get_global_ctrl_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i8*, i32* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"No '/' in the global control interface file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*)* @hostapd_get_global_ctrl_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_get_global_ctrl_iface(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %8 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @os_free(i32* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @os_strdup(i8* %11)
  %13 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %14 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %16 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %22 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i8* @os_strrchr(i32* %23, i8 signext 47)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %31 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @os_free(i32* %32)
  %34 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %35 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  store i32 -1, i32* %3, align 4
  br label %42

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %41 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %27, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i8* @os_strrchr(i32*, i8 signext) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
