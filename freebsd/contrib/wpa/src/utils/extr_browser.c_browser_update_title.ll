; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser.c_browser_update_title.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser.c_browser_update_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.browser_context = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Hotspot 2.0 client\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[%d%%] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.browser_context*)* @browser_update_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @browser_update_title(%struct.browser_context* %0) #0 {
  %2 = alloca %struct.browser_context*, align 8
  %3 = alloca [100 x i8], align 16
  store %struct.browser_context* %0, %struct.browser_context** %2, align 8
  %4 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %5 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %10 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @GTK_WINDOW(i32 %11)
  %13 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %14 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @gtk_window_set_title(i32 %12, i8* %15)
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %19 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 100
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %24 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @GTK_WINDOW(i32 %25)
  %27 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %28 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %33 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %35 ]
  %38 = call i32 @gtk_window_set_title(i32 %26, i8* %37)
  br label %62

39:                                               ; preds = %17
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %41 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %42 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %45 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %50 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %52 ]
  %55 = call i32 @snprintf(i8* %40, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %54)
  %56 = load %struct.browser_context*, %struct.browser_context** %2, align 8
  %57 = getelementptr inbounds %struct.browser_context, %struct.browser_context* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @GTK_WINDOW(i32 %58)
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %61 = call i32 @gtk_window_set_title(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %53, %36, %8
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
