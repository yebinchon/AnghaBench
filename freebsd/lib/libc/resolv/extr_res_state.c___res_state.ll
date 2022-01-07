; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_state.c___res_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_state.c___res_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@_res = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@res_init_once = common dso_local global i32 0, align 4
@res_keycreate = common dso_local global i32 0, align 4
@res_thr_keycreated = common dso_local global i32 0, align 4
@res_key = common dso_local global i32 0, align 4
@RES_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @__res_state() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = call i64 (...) @thr_main()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call %struct.TYPE_10__* @res_check_reload(%struct.TYPE_10__* @_res)
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %1, align 8
  br label %38

7:                                                ; preds = %0
  %8 = load i32, i32* @res_keycreate, align 4
  %9 = call i64 @thr_once(i32* @res_init_once, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @res_thr_keycreated, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %7
  store %struct.TYPE_10__* @_res, %struct.TYPE_10__** %1, align 8
  br label %38

15:                                               ; preds = %11
  %16 = load i32, i32* @res_key, align 4
  %17 = call %struct.TYPE_10__* @thr_getspecific(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %2, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call %struct.TYPE_10__* @res_check_reload(%struct.TYPE_10__* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %1, align 8
  br label %38

23:                                               ; preds = %15
  %24 = call %struct.TYPE_10__* @calloc(i32 1, i32 4)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %2, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_10__* @_res, %struct.TYPE_10__** %1, align 8
  br label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @res_key, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i64 @thr_setspecific(i32 %29, %struct.TYPE_10__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %1, align 8
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = call i32 @free(%struct.TYPE_10__* %36)
  store %struct.TYPE_10__* @_res, %struct.TYPE_10__** %1, align 8
  br label %38

38:                                               ; preds = %35, %33, %27, %20, %14, %5
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %39
}

declare dso_local i64 @thr_main(...) #1

declare dso_local %struct.TYPE_10__* @res_check_reload(%struct.TYPE_10__*) #1

declare dso_local i64 @thr_once(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @thr_getspecific(i32) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i64 @thr_setspecific(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
