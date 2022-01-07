; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_setup_ui_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_setup_ui_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui_fallback_method = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"OpenSSL application user interface\00", align 1
@ui_method = common dso_local global i32 0, align 4
@ui_open = common dso_local global i32 0, align 4
@ui_read = common dso_local global i32 0, align 4
@ui_write = common dso_local global i32 0, align 4
@ui_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_ui_method() #0 {
  %1 = call i32 (...) @UI_null()
  store i32 %1, i32* @ui_fallback_method, align 4
  %2 = call i32 (...) @UI_OpenSSL()
  store i32 %2, i32* @ui_fallback_method, align 4
  %3 = call i32 @UI_create_method(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @ui_method, align 4
  %4 = load i32, i32* @ui_method, align 4
  %5 = load i32, i32* @ui_open, align 4
  %6 = call i32 @UI_method_set_opener(i32 %4, i32 %5)
  %7 = load i32, i32* @ui_method, align 4
  %8 = load i32, i32* @ui_read, align 4
  %9 = call i32 @UI_method_set_reader(i32 %7, i32 %8)
  %10 = load i32, i32* @ui_method, align 4
  %11 = load i32, i32* @ui_write, align 4
  %12 = call i32 @UI_method_set_writer(i32 %10, i32 %11)
  %13 = load i32, i32* @ui_method, align 4
  %14 = load i32, i32* @ui_close, align 4
  %15 = call i32 @UI_method_set_closer(i32 %13, i32 %14)
  ret i32 0
}

declare dso_local i32 @UI_null(...) #1

declare dso_local i32 @UI_OpenSSL(...) #1

declare dso_local i32 @UI_create_method(i8*) #1

declare dso_local i32 @UI_method_set_opener(i32, i32) #1

declare dso_local i32 @UI_method_set_reader(i32, i32) #1

declare dso_local i32 @UI_method_set_writer(i32, i32) #1

declare dso_local i32 @UI_method_set_closer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
