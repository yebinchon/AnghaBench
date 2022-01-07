; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_context.c_serf_context_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_context.c_serf_context_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_TIMEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf_context_run(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @serf_context_prerun(%struct.TYPE_10__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @APR_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @apr_pollset_poll(i32 %26, i32 %27, i32* %9, %struct.TYPE_11__** %10)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @APR_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @APR_STATUS_IS_EINTR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %67

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @APR_STATUS_IS_TIMEUP(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @APR_TIMEUP, align 4
  store i32 %42, i32* %4, align 4
  br label %67

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = call i32 @serf_event_trigger(%struct.TYPE_10__* %54, i32* %55, %struct.TYPE_11__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %50
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 1
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %10, align 8
  br label %46

65:                                               ; preds = %46
  %66 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %60, %43, %41, %35, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @serf_context_prerun(%struct.TYPE_10__*) #1

declare dso_local i32 @apr_pollset_poll(i32, i32, i32*, %struct.TYPE_11__**) #1

declare dso_local i64 @APR_STATUS_IS_EINTR(i32) #1

declare dso_local i64 @APR_STATUS_IS_TIMEUP(i32) #1

declare dso_local i32 @serf_event_trigger(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
