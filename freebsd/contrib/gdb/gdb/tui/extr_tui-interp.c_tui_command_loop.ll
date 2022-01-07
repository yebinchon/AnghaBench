; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-interp.c_tui_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-interp.c_tui_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_command_editing_p = common dso_local global i64 0, align 8
@input_handler = common dso_local global i32 0, align 4
@gdb_do_one_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@tui_active = common dso_local global i64 0, align 8
@tui_out = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@tui_old_uiout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tui_command_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_command_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i8* (...) @get_prompt()
  store i8* %7, i8** %5, align 8
  %8 = load i64, i64* @async_command_editing_p, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = call i8* @PREFIX(i32 0)
  %12 = call i32 @strlen(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = call i8* @SUFFIX(i32 0)
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @xmalloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @PREFIX(i32 0)
  %25 = call i32 @strcpy(i8* %23, i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcat(i8* %26, i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @SUFFIX(i32 0)
  %31 = call i32 @strcat(i8* %29, i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @input_handler, align 4
  %34 = call i32 @rl_callback_handler_install(i8* %32, i32 %33)
  br label %37

35:                                               ; preds = %1
  %36 = call i32 @display_gdb_prompt(i32 0)
  br label %37

37:                                               ; preds = %35, %10
  br label %38

38:                                               ; preds = %37, %60
  %39 = load i32, i32* @gdb_do_one_event, align 4
  %40 = load i32, i32* @RETURN_MASK_ALL, align 4
  %41 = call i32 @catch_errors(i32 %39, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  %46 = load i64, i64* @tui_active, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @tui_out, align 4
  store i32 %49, i32* @uiout, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @tui_old_uiout, align 4
  store i32 %51, i32* @uiout, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = call i32 @display_gdb_prompt(i32 0)
  br i1 true, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 (...) @after_char_processing_hook()
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %52
  br label %38

61:                                               ; preds = %44
  ret void
}

declare dso_local i8* @get_prompt(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @PREFIX(i32) #1

declare dso_local i8* @SUFFIX(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @rl_callback_handler_install(i8*, i32) #1

declare dso_local i32 @display_gdb_prompt(i32) #1

declare dso_local i32 @catch_errors(i32, i32, i8*, i32) #1

declare dso_local i32 @after_char_processing_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
