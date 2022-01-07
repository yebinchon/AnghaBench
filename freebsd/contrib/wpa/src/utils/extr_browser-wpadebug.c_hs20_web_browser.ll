; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-wpadebug.c_hs20_web_browser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-wpadebug.c_hs20_web_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_server = type { i32 }
%struct.in_addr = type { i32 }
%struct.browser_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Launching wpadebug browser to %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"eloop_init failed\00", align 1
@http_req = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"http_server_init failed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"PATH=/system/bin:/vendor/bin\00", align 1
@__const.hs20_web_browser.envp = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"browser-wpadebug\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"android.action.MAIN\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"android.intent.category.LAUNCHER\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"w1.fi.wpadebug/.WpaWebViewActivity\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"w1.fi.wpadebug.URL\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--user\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"/system/bin/am\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"execve: %s\00", align 1
@browser_timeout = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"Closing Android browser\00", align 1
@.str.20 = private unnamed_addr constant [132 x i8] c"start -a android.action.MAIN -c android.intent.category.LAUNCHER -n w1.fi.wpadebug/.WpaWebViewActivity -e w1.fi.wpadebug.URL FINISH\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to close wpadebug browser\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_web_browser(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_server*, align 8
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.browser_data, align 4
  %7 = alloca i64, align 8
  %8 = alloca [14 x i8*], align 16
  %9 = alloca [2 x i8*], align 16
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MSG_INFO, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @os_memset(%struct.browser_data* %6, i32 0, i32 4)
  %14 = call i64 (...) @eloop_init()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %89

19:                                               ; preds = %1
  %20 = call i32 @htonl(i32 2130706433)
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @http_req, align 4
  %23 = call %struct.http_server* @http_server_init(%struct.in_addr* %5, i32 12345, i32 %22, %struct.browser_data* %6)
  store %struct.http_server* %23, %struct.http_server** %4, align 8
  %24 = load %struct.http_server*, %struct.http_server** %4, align 8
  %25 = icmp eq %struct.http_server* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (...) @eloop_destroy()
  store i32 -1, i32* %2, align 4
  br label %89

30:                                               ; preds = %19
  %31 = call i64 (...) @fork()
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* @MSG_ERROR, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.http_server*, %struct.http_server** %4, align 8
  %40 = call i32 @http_server_deinit(%struct.http_server* %39)
  %41 = call i32 (...) @eloop_destroy()
  store i32 -1, i32* %2, align 4
  br label %89

42:                                               ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %46, i8* align 16 bitcast ([2 x i8*]* @__const.hs20_web_browser.envp to i8*), i64 16, i1 false)
  %47 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 5
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 7
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 9
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %56, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 10
  store i8* %57, i8** %58, align 16
  %59 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 11
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 12
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %60, align 16
  %61 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 13
  store i8* null, i8** %61, align 8
  %62 = getelementptr inbounds [14 x i8*], [14 x i8*]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %64 = call i32 @execve(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %62, i8** %63)
  %65 = load i32, i32* @MSG_ERROR, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %67)
  %69 = call i32 @exit(i32 0) #4
  unreachable

70:                                               ; preds = %42
  %71 = load i32, i32* @browser_timeout, align 4
  %72 = call i32 @eloop_register_timeout(i32 300, i32 0, i32 %71, %struct.browser_data* %6, i32* null)
  %73 = call i32 (...) @eloop_run()
  %74 = load i32, i32* @browser_timeout, align 4
  %75 = call i32 @eloop_cancel_timeout(i32 %74, %struct.browser_data* %6, i32* null)
  %76 = load %struct.http_server*, %struct.http_server** %4, align 8
  %77 = call i32 @http_server_deinit(%struct.http_server* %76)
  %78 = call i32 (...) @eloop_destroy()
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %81 = call i64 @os_exec(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.20, i64 0, i64 0), i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %70
  %87 = getelementptr inbounds %struct.browser_data, %struct.browser_data* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %34, %26, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @execve(i8*, i8**, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.browser_data*, i32*) #1

declare dso_local i32 @eloop_run(...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.browser_data*, i32*) #1

declare dso_local i64 @os_exec(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
