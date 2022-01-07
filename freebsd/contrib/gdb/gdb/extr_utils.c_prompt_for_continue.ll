; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_prompt_for_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_prompt_for_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@annotation_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0A\1A\1Apre-prompt-for-continue\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"---Type <return> to continue, or q <return> to quit---\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A\1A\1Aprompt-for-continue\0A\00", align 1
@immediate_quit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"\0A\1A\1Apost-prompt-for-continue\0A\00", align 1
@event_loop_p = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prompt_for_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prompt_for_continue() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [120 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @annotation_level, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @annotation_level, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %15 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  %17 = call i32 (...) @reinitialize_more_filter()
  %18 = load i32, i32* @immediate_quit, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @immediate_quit, align 4
  %20 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %21 = call i8* @gdb_readline_wrapper(i8* %20)
  store i8* %21, i8** %1, align 8
  %22 = load i32, i32* @annotation_level, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i8*, i8** %1, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = load i8*, i8** %1, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %43, %29
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 113
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* @event_loop_p, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @SIGINT, align 4
  %57 = call i32 @request_quit(i32 %56)
  br label %60

58:                                               ; preds = %52
  %59 = call i32 @async_request_quit(i32 0)
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i8*, i8** %1, align 8
  %63 = call i32 @xfree(i8* %62)
  br label %64

64:                                               ; preds = %61, %26
  %65 = load i32, i32* @immediate_quit, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @immediate_quit, align 4
  %67 = call i32 (...) @reinitialize_more_filter()
  %68 = call i32 (...) @dont_repeat()
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @reinitialize_more_filter(...) #1

declare dso_local i8* @gdb_readline_wrapper(i8*) #1

declare dso_local i32 @request_quit(i32) #1

declare dso_local i32 @async_request_quit(i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @dont_repeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
