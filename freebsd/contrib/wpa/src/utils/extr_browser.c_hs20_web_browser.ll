; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser.c_hs20_web_browser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser.c_hs20_web_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.browser_context = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"ssl-ca-file\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"/etc/ssl/certs/ca-certificates.crt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ssl-strict\00", align 1
@FALSE = common dso_local global i8* null, align 8
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Hotspot 2.0 client\00", align 1
@GTK_POLICY_NEVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@win_cb_destroy = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"notify::progress\00", align 1
@view_cb_notify_progress = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"notify::load-status\00", align 1
@view_cb_notify_load_status = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"resource-request-starting\00", align 1
@view_cb_resource_request_starting = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"mime-type-policy-decision-requested\00", align 1
@view_cb_mime_type_policy_decision = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"download-requested\00", align 1
@view_cb_download_requested = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"hovering-over-link\00", align 1
@view_cb_hovering_over_link = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"title-changed\00", align 1
@view_cb_title_changed = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"user-agent\00", align 1
@.str.13 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (X11; U; Unix; en-US) AppleWebKit/537.15 (KHTML, like Gecko) hs20-client/1.0\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"auto-load-images\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_web_browser(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.browser_context, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i32 @memset(%struct.browser_context* %8, i32 0, i32 24)
  %10 = call i32 @gtk_init_check(i32* null, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %129

13:                                               ; preds = %1
  %14 = call i32* (...) @webkit_get_default_session()
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @G_OBJECT(i32* %15)
  %17 = call i32 @g_object_set(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @G_OBJECT(i32* %18)
  %20 = load i8*, i8** @FALSE, align 8
  %21 = call i32 @g_object_set(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32* null)
  %22 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %23 = call i32* @gtk_window_new(i32 %22)
  %24 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @GTK_WINDOW(i32* %26)
  %28 = call i32 @gtk_window_set_role(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @GTK_WINDOW(i32* %30)
  %32 = call i32 @gtk_window_set_default_size(i32 %31, i32 800, i32 600)
  %33 = call i32* @gtk_scrolled_window_new(i32* null, i32* null)
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @GTK_SCROLLED_WINDOW(i32* %34)
  %36 = load i32, i32* @GTK_POLICY_NEVER, align 4
  %37 = load i32, i32* @GTK_POLICY_NEVER, align 4
  %38 = call i32 @gtk_scrolled_window_set_policy(i32 %35, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @G_OBJECT(i32* %40)
  %42 = load i32, i32* @win_cb_destroy, align 4
  %43 = call i32 @G_CALLBACK(i32 %42)
  %44 = call i32 @g_signal_connect(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %43, %struct.browser_context* %8)
  %45 = call i32 (...) @webkit_web_view_new()
  %46 = call i32* @WEBKIT_WEB_VIEW(i32 %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @G_OBJECT(i32* %47)
  %49 = load i32, i32* @view_cb_notify_progress, align 4
  %50 = call i32 @G_CALLBACK(i32 %49)
  %51 = call i32 @g_signal_connect(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %50, %struct.browser_context* %8)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @G_OBJECT(i32* %52)
  %54 = load i32, i32* @view_cb_notify_load_status, align 4
  %55 = call i32 @G_CALLBACK(i32 %54)
  %56 = call i32 @g_signal_connect(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %55, %struct.browser_context* %8)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @G_OBJECT(i32* %57)
  %59 = load i32, i32* @view_cb_resource_request_starting, align 4
  %60 = call i32 @G_CALLBACK(i32 %59)
  %61 = call i32 @g_signal_connect(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %60, %struct.browser_context* %8)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @G_OBJECT(i32* %62)
  %64 = load i32, i32* @view_cb_mime_type_policy_decision, align 4
  %65 = call i32 @G_CALLBACK(i32 %64)
  %66 = call i32 @g_signal_connect(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %65, %struct.browser_context* %8)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @G_OBJECT(i32* %67)
  %69 = load i32, i32* @view_cb_download_requested, align 4
  %70 = call i32 @G_CALLBACK(i32 %69)
  %71 = call i32 @g_signal_connect(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %70, %struct.browser_context* %8)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @G_OBJECT(i32* %72)
  %74 = load i32, i32* @view_cb_hovering_over_link, align 4
  %75 = call i32 @G_CALLBACK(i32 %74)
  %76 = call i32 @g_signal_connect(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %75, %struct.browser_context* %8)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @G_OBJECT(i32* %77)
  %79 = load i32, i32* @view_cb_title_changed, align 4
  %80 = call i32 @G_CALLBACK(i32 %79)
  %81 = call i32 @g_signal_connect(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %80, %struct.browser_context* %8)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @GTK_CONTAINER(i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @GTK_WIDGET(i32* %84)
  %86 = call i32 @gtk_container_add(i32 %83, i32 %85)
  %87 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @GTK_CONTAINER(i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @GTK_WIDGET(i32* %90)
  %92 = call i32 @gtk_container_add(i32 %89, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @GTK_WIDGET(i32* %93)
  %95 = call i32 @gtk_widget_grab_focus(i32 %94)
  %96 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @gtk_widget_show_all(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32* @webkit_web_view_get_settings(i32* %99)
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @G_OBJECT(i32* %101)
  %103 = call i32 @g_object_set(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @G_OBJECT(i32* %104)
  %106 = load i8*, i8** @TRUE, align 8
  %107 = call i32 @g_object_set(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %106, i32* null)
  %108 = load i32*, i32** %6, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @webkit_web_view_load_uri(i32* %108, i8* %109)
  %111 = call i32 (...) @gtk_main()
  %112 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @gtk_widget_destroy(i32* %113)
  br label %115

115:                                              ; preds = %118, %13
  %116 = call i64 (...) @gtk_events_pending()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (...) @gtk_main_iteration()
  br label %115

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @free(i32 %122)
  %124 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @free(i32 %125)
  %127 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %120, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.browser_context*, i32, i32) #1

declare dso_local i32 @gtk_init_check(i32*, i32*) #1

declare dso_local i32* @webkit_get_default_session(...) #1

declare dso_local i32 @g_object_set(i32, i8*, i8*, i32*) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32 @gtk_window_set_role(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @gtk_window_set_default_size(i32, i32, i32) #1

declare dso_local i32* @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local i32 @gtk_scrolled_window_set_policy(i32, i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(i32*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.browser_context*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32* @WEBKIT_WEB_VIEW(i32) #1

declare dso_local i32 @webkit_web_view_new(...) #1

declare dso_local i32 @gtk_container_add(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_widget_grab_focus(i32) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32* @webkit_web_view_get_settings(i32*) #1

declare dso_local i32 @webkit_web_view_load_uri(i32*, i8*) #1

declare dso_local i32 @gtk_main(...) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i64 @gtk_events_pending(...) #1

declare dso_local i32 @gtk_main_iteration(...) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
