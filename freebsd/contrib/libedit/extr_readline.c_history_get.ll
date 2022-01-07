; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@history_get.she = internal global %struct.TYPE_6__ zeroinitializer, align 4
@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@history_base = common dso_local global i32 0, align 4
@H_CURR = common dso_local global i32 0, align 4
@H_DELDATA = common dso_local global i32 0, align 4
@H_NEXT_EVDATA = common dso_local global i32 0, align 4
@H_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @history_get(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
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
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @history_base, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

18:                                               ; preds = %13
  %19 = load i32*, i32** @h, align 8
  %20 = load i32, i32* @H_CURR, align 4
  %21 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %19, %struct.TYPE_5__* %4, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** @h, align 8
  %28 = load i32, i32* @H_DELDATA, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @history_base, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %27, %struct.TYPE_5__* %4, i32 %28, i32 %31, i8** inttoptr (i64 -1 to i8**))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %56

35:                                               ; preds = %24
  %36 = load i32*, i32** @h, align 8
  %37 = load i32, i32* @H_CURR, align 4
  %38 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %36, %struct.TYPE_5__* %4, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %56

41:                                               ; preds = %35
  %42 = load i32*, i32** @h, align 8
  %43 = load i32, i32* @H_NEXT_EVDATA, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %42, %struct.TYPE_5__* %4, i32 %43, i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @history_get.she, i32 0, i32 1))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %56

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @history_get.she, i32 0, i32 0), align 4
  %52 = load i32*, i32** @h, align 8
  %53 = load i32, i32* @H_SET, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %52, %struct.TYPE_5__* %4, i32 %53, i32 %54)
  store %struct.TYPE_6__* @history_get.she, %struct.TYPE_6__** %2, align 8
  br label %61

56:                                               ; preds = %48, %40, %34
  %57 = load i32*, i32** @h, align 8
  %58 = load i32, i32* @H_SET, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 (i32*, %struct.TYPE_5__*, i32, ...) @history(i32* %57, %struct.TYPE_5__* %4, i32 %58, i32 %59)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

61:                                               ; preds = %56, %49, %23, %17
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %62
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i64 @history(i32*, %struct.TYPE_5__*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
