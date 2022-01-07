; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rl_complete.wbreak_conv = internal global i32 0, align 4
@rl_complete.sprefix_conv = internal global i32 0, align 4
@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@rl_inhibit_completion = common dso_local global i64 0, align 8
@CC_REFRESH = common dso_local global i32 0, align 4
@rl_completion_entry_function = common dso_local global i64 0, align 8
@rl_attempted_completion_function = common dso_local global i32 0, align 4
@rl_basic_word_break_characters = common dso_local global i8* null, align 8
@_rl_completion_append_character_function = common dso_local global i32 0, align 4
@rl_completion_query_items = common dso_local global i64 0, align 8
@rl_completion_type = common dso_local global i32 0, align 4
@rl_attempted_completion_over = common dso_local global i32 0, align 4
@rl_point = common dso_local global i32 0, align 4
@rl_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_complete(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @h, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** @e, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = call i32 (...) @rl_initialize()
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i64, i64* @rl_inhibit_completion, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %22, align 1
  %23 = load i32*, i32** @e, align 8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %25 = call i32 @el_insertstr(i32* %23, i8* %24)
  %26 = load i32, i32* @CC_REFRESH, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %15
  %28 = call i8* (...) @rl_completion_word_break_hook()
  store i8* %28, i8** %6, align 8
  %29 = call i32 (...) @_rl_update_pos()
  %30 = load i32*, i32** @e, align 8
  %31 = load i64, i64* @rl_completion_entry_function, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* @rl_attempted_completion_function, align 4
  %34 = load i8*, i8** @rl_basic_word_break_characters, align 8
  %35 = call i32 @ct_decode_string(i8* %34, i32* @rl_complete.wbreak_conv)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @ct_decode_string(i8* %36, i32* @rl_complete.sprefix_conv)
  %38 = load i32, i32* @_rl_completion_append_character_function, align 4
  %39 = load i64, i64* @rl_completion_query_items, align 8
  %40 = call i32 @fn_complete(i32* %30, i32* %32, i32 %33, i32 %35, i32 %37, i32 %38, i64 %39, i32* @rl_completion_type, i32* @rl_attempted_completion_over, i32* @rl_point, i32* @rl_end)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i32 @el_insertstr(i32*, i8*) #1

declare dso_local i8* @rl_completion_word_break_hook(...) #1

declare dso_local i32 @_rl_update_pos(...) #1

declare dso_local i32 @fn_complete(i32*, i32*, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ct_decode_string(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
