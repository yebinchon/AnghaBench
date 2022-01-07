; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_signal.c_evsig_dealloc_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_signal.c_evsig_dealloc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32**, i32, i64 }

@NSIG = common dso_local global i32 0, align 4
@evsig_base = common dso_local global %struct.event_base* null, align 8
@evsig_base_n_signals_added = common dso_local global i64 0, align 8
@evsig_base_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evsig_dealloc_(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.event_base*, %struct.event_base** %2, align 8
  %5 = getelementptr inbounds %struct.event_base, %struct.event_base* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.event_base*, %struct.event_base** %2, align 8
  %11 = getelementptr inbounds %struct.event_base, %struct.event_base* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = call i32 @event_del(i32* %12)
  %14 = load %struct.event_base*, %struct.event_base** %2, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.event_base*, %struct.event_base** %2, align 8
  %19 = getelementptr inbounds %struct.event_base, %struct.event_base* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = call i32 @event_debug_unassign(i32* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %48, %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NSIG, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.event_base*, %struct.event_base** %2, align 8
  %29 = getelementptr inbounds %struct.event_base, %struct.event_base* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.event_base*, %struct.event_base** %2, align 8
  %35 = getelementptr inbounds %struct.event_base, %struct.event_base* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.event_base*, %struct.event_base** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @evsig_restore_handler_(%struct.event_base* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %33, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %22

51:                                               ; preds = %22
  %52 = call i32 (...) @EVSIGBASE_LOCK()
  %53 = load %struct.event_base*, %struct.event_base** %2, align 8
  %54 = load %struct.event_base*, %struct.event_base** @evsig_base, align 8
  %55 = icmp eq %struct.event_base* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store %struct.event_base* null, %struct.event_base** @evsig_base, align 8
  store i64 0, i64* @evsig_base_n_signals_added, align 8
  store i32 -1, i32* @evsig_base_fd, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = call i32 (...) @EVSIGBASE_UNLOCK()
  %59 = load %struct.event_base*, %struct.event_base** %2, align 8
  %60 = getelementptr inbounds %struct.event_base, %struct.event_base* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %79

66:                                               ; preds = %57
  %67 = load %struct.event_base*, %struct.event_base** %2, align 8
  %68 = getelementptr inbounds %struct.event_base, %struct.event_base* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @evutil_closesocket(i32 %72)
  %74 = load %struct.event_base*, %struct.event_base** %2, align 8
  %75 = getelementptr inbounds %struct.event_base, %struct.event_base* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 -1, i32* %78, align 4
  br label %79

79:                                               ; preds = %66, %57
  %80 = load %struct.event_base*, %struct.event_base** %2, align 8
  %81 = getelementptr inbounds %struct.event_base, %struct.event_base* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load %struct.event_base*, %struct.event_base** %2, align 8
  %89 = getelementptr inbounds %struct.event_base, %struct.event_base* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @evutil_closesocket(i32 %93)
  %95 = load %struct.event_base*, %struct.event_base** %2, align 8
  %96 = getelementptr inbounds %struct.event_base, %struct.event_base* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 -1, i32* %99, align 4
  br label %100

100:                                              ; preds = %87, %79
  %101 = load %struct.event_base*, %struct.event_base** %2, align 8
  %102 = getelementptr inbounds %struct.event_base, %struct.event_base* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.event_base*, %struct.event_base** %2, align 8
  %105 = getelementptr inbounds %struct.event_base, %struct.event_base* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32**, i32*** %106, align 8
  %108 = icmp ne i32** %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load %struct.event_base*, %struct.event_base** %2, align 8
  %111 = getelementptr inbounds %struct.event_base, %struct.event_base* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = call i32 @mm_free(i32** %113)
  %115 = load %struct.event_base*, %struct.event_base** %2, align 8
  %116 = getelementptr inbounds %struct.event_base, %struct.event_base* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32** null, i32*** %117, align 8
  br label %118

118:                                              ; preds = %109, %100
  ret void
}

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @evsig_restore_handler_(%struct.event_base*, i32) #1

declare dso_local i32 @EVSIGBASE_LOCK(...) #1

declare dso_local i32 @EVSIGBASE_UNLOCK(...) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @mm_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
