; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_add_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_add_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@H_ENTER = common dso_local global i32 0, align 4
@H_GETSIZE = common dso_local global i32 0, align 4
@history_length = common dso_local global i64 0, align 8
@history_base = common dso_local global i32 0, align 4
@history_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_history(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
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
  %13 = load i32*, i32** @h, align 8
  %14 = load i32, i32* @H_ENTER, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i32*, %struct.TYPE_3__*, i32, ...) @history(i32* %13, %struct.TYPE_3__* %4, i32 %14, i8* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

19:                                               ; preds = %12
  %20 = load i32*, i32** @h, align 8
  %21 = load i32, i32* @H_GETSIZE, align 4
  %22 = call i32 (i32*, %struct.TYPE_3__*, i32, ...) @history(i32* %20, %struct.TYPE_3__* %4, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @history_length, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @history_base, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @history_base, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load i32, i32* @history_offset, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @history_offset, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @history_length, align 8
  br label %35

35:                                               ; preds = %30, %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i32 @history(i32*, %struct.TYPE_3__*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
