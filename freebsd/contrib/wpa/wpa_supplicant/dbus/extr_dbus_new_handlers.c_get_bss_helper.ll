; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_get_bss_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_get_bss_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }
%struct.bss_handler_args = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s[dbus]: no bss with id %d found\00", align 1
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: BSS %d not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_bss* (%struct.bss_handler_args*, i32*, i8*)* @get_bss_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_bss* @get_bss_helper(%struct.bss_handler_args* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.bss_handler_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  store %struct.bss_handler_args* %0, %struct.bss_handler_args** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.bss_handler_args*, %struct.bss_handler_args** %4, align 8
  %9 = getelementptr inbounds %struct.bss_handler_args, %struct.bss_handler_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bss_handler_args*, %struct.bss_handler_args** %4, align 8
  %12 = getelementptr inbounds %struct.bss_handler_args, %struct.bss_handler_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.wpa_bss* @wpa_bss_get_id(i32 %10, i32 %13)
  store %struct.wpa_bss* %14, %struct.wpa_bss** %7, align 8
  %15 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %16 = icmp ne %struct.wpa_bss* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.bss_handler_args*, %struct.bss_handler_args** %4, align 8
  %21 = getelementptr inbounds %struct.bss_handler_args, %struct.bss_handler_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.bss_handler_args*, %struct.bss_handler_args** %4, align 8
  %28 = getelementptr inbounds %struct.bss_handler_args, %struct.bss_handler_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dbus_set_error(i32* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29)
  br label %31

31:                                               ; preds = %17, %3
  %32 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  ret %struct.wpa_bss* %32
}

declare dso_local %struct.wpa_bss* @wpa_bss_get_id(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
