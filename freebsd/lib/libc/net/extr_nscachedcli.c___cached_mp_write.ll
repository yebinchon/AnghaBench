; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_mp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_mp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32 }

@CET_MP_WRITE_SESSION_WRITE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cached_mp_write(%struct.cached_connection_* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.cached_connection_*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cached_connection_* %0, %struct.cached_connection_** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* @CET_MP_WRITE_SESSION_WRITE_REQUEST, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %12 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %11, i32* %7, i64 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %18 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %17, i64* %6, i64 8)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %23, i8* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %37

30:                                               ; preds = %22
  %31 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %32 = call i32 @safe_read(%struct.cached_connection_* %31, i32* %9, i32 4)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %29, %21, %15
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @safe_write(%struct.cached_connection_*, ...) #1

declare dso_local i32 @safe_read(%struct.cached_connection_*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
