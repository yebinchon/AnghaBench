; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-android.c_hs20_web_browser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-android.c_hs20_web_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_server = type { i32 }
%struct.in_addr = type { i32 }
%struct.browser_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Launching Android browser to %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"eloop_init failed\00", align 1
@http_req = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"http_server_init failed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"browser-android\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"android.intent.action.VIEW\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"/system/bin/am\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"execv: %s\00", align 1
@browser_timeout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Closing Android browser\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"/system/bin/input keyevent KEYCODE_HOME\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to inject keyevent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_web_browser(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_server*, align 8
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.browser_data, align 4
  %7 = alloca i64, align 8
  %8 = alloca [7 x i8*], align 16
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MSG_INFO, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call i32 @os_memset(%struct.browser_data* %6, i32 0, i32 4)
  %13 = call i64 (...) @eloop_init()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = call i32 @htonl(i32 2130706433)
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @http_req, align 4
  %22 = call %struct.http_server* @http_server_init(%struct.in_addr* %5, i32 12345, i32 %21, %struct.browser_data* %6)
  store %struct.http_server* %22, %struct.http_server** %4, align 8
  %23 = load %struct.http_server*, %struct.http_server** %4, align 8
  %24 = icmp eq %struct.http_server* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 (...) @eloop_destroy()
  store i32 -1, i32* %2, align 4
  br label %79

29:                                               ; preds = %18
  %30 = call i64 (...) @fork()
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.http_server*, %struct.http_server** %4, align 8
  %39 = call i32 @http_server_deinit(%struct.http_server* %38)
  %40 = call i32 (...) @eloop_destroy()
  store i32 -1, i32* %2, align 4
  br label %79

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %49, align 16
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 5
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 6
  store i8* null, i8** %52, align 16
  %53 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  %54 = call i32 @execv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %53)
  %55 = load i32, i32* @MSG_ERROR, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %57)
  %59 = call i32 @exit(i32 0) #3
  unreachable

60:                                               ; preds = %41
  %61 = load i32, i32* @browser_timeout, align 4
  %62 = call i32 @eloop_register_timeout(i32 30, i32 0, i32 %61, %struct.browser_data* %6, i32* null)
  %63 = call i32 (...) @eloop_run()
  %64 = load i32, i32* @browser_timeout, align 4
  %65 = call i32 @eloop_cancel_timeout(i32 %64, %struct.browser_data* %6, i32* null)
  %66 = load %struct.http_server*, %struct.http_server** %4, align 8
  %67 = call i32 @http_server_deinit(%struct.http_server* %66)
  %68 = call i32 (...) @eloop_destroy()
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %71 = call i64 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %60
  %77 = getelementptr inbounds %struct.browser_data, %struct.browser_data* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %33, %25, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.browser_data*, i32, i32) #1

declare dso_local i64 @eloop_init(...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.http_server* @http_server_init(%struct.in_addr*, i32, i32, %struct.browser_data*) #1

declare dso_local i32 @eloop_destroy(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @http_server_deinit(%struct.http_server*) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.browser_data*, i32*) #1

declare dso_local i32 @eloop_run(...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.browser_data*, i32*) #1

declare dso_local i64 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
