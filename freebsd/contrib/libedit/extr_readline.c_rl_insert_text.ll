; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_insert_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_insert_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_insert_text(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %6
  %13 = load i32*, i32** @h, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** @e, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12
  %19 = call i32 (...) @rl_initialize()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32*, i32** @e, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @el_insertstr(i32* %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %25, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i64 @el_insertstr(i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
