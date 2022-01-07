; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_combined.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.both = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Combined read/write: \00", align 1
@pair = common dso_local global i32* null, align 8
@EV_READ = common dso_local global i32 0, align 4
@combined_read_cb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@combined_write_cb = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_combined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_combined() #0 {
  %1 = alloca %struct.both, align 4
  %2 = alloca %struct.both, align 4
  %3 = alloca %struct.both, align 4
  %4 = alloca %struct.both, align 4
  %5 = call i32 @setup_test(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @memset(%struct.both* %1, i32 0, i32 8)
  %7 = call i32 @memset(%struct.both* %2, i32 0, i32 8)
  %8 = call i32 @memset(%struct.both* %3, i32 0, i32 8)
  %9 = call i32 @memset(%struct.both* %4, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.both, %struct.both* %3, i32 0, i32 0
  store i32 4096, i32* %10, align 4
  %11 = getelementptr inbounds %struct.both, %struct.both* %4, i32 0, i32 0
  store i32 8192, i32* %11, align 4
  %12 = getelementptr inbounds %struct.both, %struct.both* %1, i32 0, i32 1
  %13 = load i32*, i32** @pair, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EV_READ, align 4
  %17 = load i32, i32* @combined_read_cb, align 4
  %18 = call i32 @event_set(i32* %12, i32 %15, i32 %16, i32 %17, %struct.both* %1)
  %19 = getelementptr inbounds %struct.both, %struct.both* %3, i32 0, i32 1
  %20 = load i32*, i32** @pair, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EV_WRITE, align 4
  %24 = load i32, i32* @combined_write_cb, align 4
  %25 = call i32 @event_set(i32* %19, i32 %22, i32 %23, i32 %24, %struct.both* %3)
  %26 = getelementptr inbounds %struct.both, %struct.both* %2, i32 0, i32 1
  %27 = load i32*, i32** @pair, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EV_READ, align 4
  %31 = load i32, i32* @combined_read_cb, align 4
  %32 = call i32 @event_set(i32* %26, i32 %29, i32 %30, i32 %31, %struct.both* %2)
  %33 = getelementptr inbounds %struct.both, %struct.both* %4, i32 0, i32 1
  %34 = load i32*, i32** @pair, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EV_WRITE, align 4
  %38 = load i32, i32* @combined_write_cb, align 4
  %39 = call i32 @event_set(i32* %33, i32 %36, i32 %37, i32 %38, %struct.both* %4)
  %40 = getelementptr inbounds %struct.both, %struct.both* %1, i32 0, i32 1
  %41 = call i32 @event_add(i32* %40, i32* null)
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @tt_assert(i32 %43)
  %45 = getelementptr inbounds %struct.both, %struct.both* %3, i32 0, i32 1
  %46 = call i32 @event_add(i32* %45, i32* null)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @tt_assert(i32 %49)
  %51 = getelementptr inbounds %struct.both, %struct.both* %2, i32 0, i32 1
  %52 = call i32 @event_add(i32* %51, i32* null)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @tt_assert(i32 %55)
  %57 = getelementptr inbounds %struct.both, %struct.both* %4, i32 0, i32 1
  %58 = call i32 @event_add(i32* %57, i32* null)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @tt_assert(i32 %61)
  %63 = call i32 (...) @event_dispatch()
  %64 = getelementptr inbounds %struct.both, %struct.both* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 8192
  br i1 %66, label %67, label %72

67:                                               ; preds = %0
  %68 = getelementptr inbounds %struct.both, %struct.both* %2, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 4096
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* @test_ok, align 4
  br label %72

72:                                               ; preds = %71, %67, %0
  br label %73

73:                                               ; preds = %72
  %74 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @memset(%struct.both*, i32, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.both*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
