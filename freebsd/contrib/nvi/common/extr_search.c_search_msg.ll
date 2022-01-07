; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_search_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_search_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"072|File empty; nothing to search\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"073|Reached end-of-file without finding the pattern\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"074|No previous search pattern\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"075|Pattern not found\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"076|Reached top-of-file without finding the pattern\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"077|Search wrapped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @search_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_msg(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %30 [
    i32 133, label %6
    i32 132, label %10
    i32 131, label %14
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @M_ERR, align 4
  %9 = call i32 @msgq(i32* %7, i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @M_ERR, align 4
  %13 = call i32 @msgq(i32* %11, i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %32

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @M_ERR, align 4
  %17 = call i32 @msgq(i32* %15, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %32

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @M_ERR, align 4
  %21 = call i32 @msgq(i32* %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %32

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @M_ERR, align 4
  %25 = call i32 @msgq(i32* %23, i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %32

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @M_ERR, align 4
  %29 = call i32 @msgq(i32* %27, i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %32

30:                                               ; preds = %2
  %31 = call i32 (...) @abort() #3
  unreachable

32:                                               ; preds = %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @msgq(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
