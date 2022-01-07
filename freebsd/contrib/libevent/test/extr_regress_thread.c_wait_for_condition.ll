; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_thread.c_wait_for_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_thread.c_wait_for_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alerted_record = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wait_for_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_condition(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.alerted_record*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.alerted_record*
  store %struct.alerted_record* %7, %struct.alerted_record** %4, align 8
  %8 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %9 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EVLOCK_LOCK(i32 %12, i32 0)
  %14 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %15 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %21 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19, %1
  %26 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %27 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %32 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %37 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %36, i32 0, i32 3
  %38 = call i32 @EVTHREAD_COND_WAIT_TIMED(i32 %30, i32 %35, %struct.TYPE_4__* %37)
  store i32 %38, i32* %5, align 4
  br label %51

39:                                               ; preds = %19
  %40 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %41 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %46 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @EVTHREAD_COND_WAIT(i32 %44, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %39, %25
  %52 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %53 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EVLOCK_UNLOCK(i32 %56, i32 0)
  %58 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %59 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %58, i32 0, i32 1
  %60 = call i32 @evutil_gettimeofday(i32* %59, i32* null)
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.alerted_record*, %struct.alerted_record** %4, align 8
  %65 = getelementptr inbounds %struct.alerted_record, %struct.alerted_record* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %51
  %67 = call i32 (...) @THREAD_RETURN()
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local i32 @EVTHREAD_COND_WAIT_TIMED(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @EVTHREAD_COND_WAIT(i32, i32) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

declare dso_local i32 @THREAD_RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
