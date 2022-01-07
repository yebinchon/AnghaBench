; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_incoming.c_serf__process_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_incoming.c_serf__process_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_POLLIN = common dso_local global i32 0, align 4
@APR_POLLHUP = common dso_local global i32 0, align 4
@APR_ECONNRESET = common dso_local global i64 0, align 8
@APR_POLLERR = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i64 0, align 8
@APR_POLLOUT = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf__process_client(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @APR_POLLIN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @read_from_client(i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %48

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @APR_POLLHUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @APR_ECONNRESET, align 8
  store i64 %25, i64* %3, align 8
  br label %48

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @APR_POLLERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @APR_EGENERAL, align 8
  store i64 %32, i64* %3, align 8
  br label %48

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @APR_POLLOUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @write_to_client(i32* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %48

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %43, %31, %24, %16
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @read_from_client(i32*) #1

declare dso_local i64 @write_to_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
