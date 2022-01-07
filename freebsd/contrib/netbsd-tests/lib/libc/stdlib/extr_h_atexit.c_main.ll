; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_h_atexit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_h_atexit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exiting_state = common dso_local global i32 0, align 4
@normal_handler_0 = common dso_local global i32 0, align 4
@normal_handler_1 = common dso_local global i32 0, align 4
@cxa_handler_4 = common dso_local global i32 0, align 4
@arg_1 = common dso_local global i32 0, align 4
@dso_handle_1 = common dso_local global i32************************ null, align 8
@cxa_handler_5 = common dso_local global i32 0, align 4
@cxa_handler_3 = common dso_local global i32 0, align 4
@arg_2 = common dso_local global i32 0, align 4
@dso_handle_2 = common dso_local global i32************************ null, align 8
@cxa_handler_2 = common dso_local global i32 0, align 4
@arg_3 = common dso_local global i32 0, align 4
@dso_handle_3 = common dso_local global i32************************ null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 5, i32* @exiting_state, align 4
  %6 = load i32, i32* @normal_handler_0, align 4
  %7 = call i64 @atexit(i32 %6)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @normal_handler_1, align 4
  %12 = call i64 @atexit(i32 %11)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @cxa_handler_4, align 4
  %17 = call i64 @__cxa_atexit(i32 %16, i32* @arg_1, i32************************* @dso_handle_1)
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* @cxa_handler_5, align 4
  %22 = call i64 @__cxa_atexit(i32 %21, i32* @arg_1, i32************************* @dso_handle_1)
  %23 = icmp eq i64 0, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @cxa_handler_3, align 4
  %27 = call i64 @__cxa_atexit(i32 %26, i32* @arg_2, i32************************* @dso_handle_2)
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* @cxa_handler_2, align 4
  %32 = call i64 @__cxa_atexit(i32 %31, i32* @arg_3, i32************************* @dso_handle_3)
  %33 = icmp eq i64 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = call i32 @__cxa_finalize(i32************************* @dso_handle_1)
  %37 = call i32 @__cxa_finalize(i32************************* @dso_handle_2)
  %38 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i64 @__cxa_atexit(i32, i32*, i32*************************) #1

declare dso_local i32 @__cxa_finalize(i32*************************) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
