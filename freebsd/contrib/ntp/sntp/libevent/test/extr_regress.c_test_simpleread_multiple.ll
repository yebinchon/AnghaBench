; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_simpleread_multiple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_simpleread_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Simple read to multiple evens: \00", align 1
@pair = common dso_local global i32* null, align 8
@TEST1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@simpleread_multiple_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simpleread_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simpleread_multiple() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca %struct.event, align 4
  %3 = call i32 @setup_test(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** @pair, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TEST1, align 4
  %8 = load i32, i32* @TEST1, align 4
  %9 = call i64 @strlen(i32 %8)
  %10 = add nsw i64 %9, 1
  %11 = call i64 @write(i32 %6, i32 %7, i64 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32*, i32** @pair, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SHUT_WR, align 4
  %20 = call i32 @shutdown(i32 %18, i32 %19)
  %21 = load i32*, i32** @pair, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EV_READ, align 4
  %25 = load i32, i32* @simpleread_multiple_cb, align 4
  %26 = call i32 @event_set(%struct.event* %1, i32 %23, i32 %24, i32 %25, i32* null)
  %27 = call i32 @event_add(%struct.event* %1, i32* null)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %15
  %32 = load i32*, i32** @pair, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EV_READ, align 4
  %36 = load i32, i32* @simpleread_multiple_cb, align 4
  %37 = call i32 @event_set(%struct.event* %2, i32 %34, i32 %35, i32 %36, i32* null)
  %38 = call i32 @event_add(%struct.event* %2, i32* null)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %31
  %43 = call i32 (...) @event_dispatch()
  %44 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, i32*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
