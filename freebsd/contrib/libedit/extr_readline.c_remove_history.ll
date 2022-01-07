; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_remove_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_remove_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@H_DELDATA = common dso_local global i32 0, align 4
@H_GETSIZE = common dso_local global i32 0, align 4
@history_length = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @remove_history(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @h, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** @e, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %1
  %12 = call i32 (...) @rl_initialize()
  br label %13

13:                                               ; preds = %11, %8
  %14 = call %struct.TYPE_8__* @el_malloc(i32 8)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %42

17:                                               ; preds = %13
  %18 = load i32*, i32** @h, align 8
  %19 = load i32, i32* @H_DELDATA, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %18, %struct.TYPE_7__* %5, i32 %19, i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @el_free(%struct.TYPE_8__* %26)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %42

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** @h, align 8
  %34 = load i32, i32* @H_GETSIZE, align 4
  %35 = call i64 (i32*, %struct.TYPE_7__*, i32, ...) @history(i32* %33, %struct.TYPE_7__* %5, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @history_length, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %2, align 8
  br label %42

42:                                               ; preds = %40, %25, %16
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %43
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local %struct.TYPE_8__* @el_malloc(i32) #1

declare dso_local i64 @history(i32*, %struct.TYPE_7__*, i32, ...) #1

declare dso_local i32 @el_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
