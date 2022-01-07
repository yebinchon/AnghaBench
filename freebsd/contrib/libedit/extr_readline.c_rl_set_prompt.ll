; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_set_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_set_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rl_prompt = common dso_local global i32* null, align 8
@RL_PROMPT_END_IGNORE = common dso_local global i32 0, align 4
@RL_PROMPT_START_IGNORE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_set_prompt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32*, i32** @rl_prompt, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** @rl_prompt, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i32* %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %57

17:                                               ; preds = %11, %8
  %18 = load i32*, i32** @rl_prompt, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** @rl_prompt, align 8
  %22 = call i32 @el_free(i32* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32* @strdup(i8* %24)
  store i32* %25, i32** @rl_prompt, align 8
  %26 = load i32*, i32** @rl_prompt, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %57

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32*, i32** @rl_prompt, align 8
  %32 = load i32, i32* @RL_PROMPT_END_IGNORE, align 4
  %33 = call i8* @strchr(i32* %31, i32 %32)
  store i8* %33, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @RL_PROMPT_START_IGNORE, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 1, %49
  %51 = call i32 @memmove(i8* %44, i8* %46, i64 %50)
  br label %55

52:                                               ; preds = %35
  %53 = load i8, i8* @RL_PROMPT_START_IGNORE, align 1
  %54 = load i8*, i8** %4, align 8
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %52, %43
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %28, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @el_free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i8* @strchr(i32*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
