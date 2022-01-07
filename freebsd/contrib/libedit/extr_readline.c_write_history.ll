; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_write_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_write_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@H_SAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_history(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32*, i32** @h, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** @e, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %1
  %11 = call i32 (...) @rl_initialize()
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i8* (...) @_default_history_file()
  store i8* %16, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %15, %12
  %21 = load i32*, i32** @h, align 8
  %22 = load i32, i32* @H_SAVE, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @history(i32* %21, i32* %4, i32 %22, i8* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @errno, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  br label %36

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i8* @_default_history_file(...) #1

declare dso_local i32 @history(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
