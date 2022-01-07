; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_interactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_interactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"\0AInteractive mode\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c".hostapd_cli_history\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@hostapd_cli_eloop_terminate = common dso_local global i32 0, align 4
@hostapd_cli_edit_cmd_cb = common dso_local global i32 0, align 4
@hostapd_cli_edit_eof_cb = common dso_local global i32 0, align 4
@hostapd_cli_edit_completion_cb = common dso_local global i32 0, align 4
@ping_interval = common dso_local global i32 0, align 4
@hostapd_cli_ping = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@CONFIG_HOSTAPD_CLI_HISTORY_DIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hostapd_cli_interactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_cli_interactive() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @os_strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @os_strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @os_malloc(i32 %17)
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load i8*, i8** %1, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @os_snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %21, %9
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @hostapd_cli_eloop_terminate, align 4
  %30 = call i32 @eloop_register_signal_terminate(i32 %29, i32* null)
  %31 = load i32, i32* @hostapd_cli_edit_cmd_cb, align 4
  %32 = load i32, i32* @hostapd_cli_edit_eof_cb, align 4
  %33 = load i32, i32* @hostapd_cli_edit_completion_cb, align 4
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @edit_init(i32 %31, i32 %32, i32 %33, i32* null, i8* %34, i32* null)
  %36 = load i32, i32* @ping_interval, align 4
  %37 = load i32, i32* @hostapd_cli_ping, align 4
  %38 = call i32 @eloop_register_timeout(i32 %36, i32 0, i32 %37, i32* null, i32* null)
  %39 = call i32 (...) @eloop_run()
  %40 = call i32 @cli_txt_list_flush(i32* @stations)
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 @edit_deinit(i8* %41, i32* null)
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @os_free(i8* %43)
  %45 = load i32, i32* @hostapd_cli_ping, align 4
  %46 = call i32 @eloop_cancel_timeout(i32 %45, i32* null, i32* null)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @eloop_register_signal_terminate(i32, i32*) #1

declare dso_local i32 @edit_init(i32, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @eloop_run(...) #1

declare dso_local i32 @cli_txt_list_flush(i32*) #1

declare dso_local i32 @edit_deinit(i8*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
