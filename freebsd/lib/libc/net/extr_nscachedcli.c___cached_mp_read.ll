; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_mp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_mp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32 }

@CET_MP_READ_SESSION_READ_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cached_mp_read(%struct.cached_connection_* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.cached_connection_*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cached_connection_* %0, %struct.cached_connection_** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 -1, i32* %8, align 4
  %12 = load i32, i32* @CET_MP_READ_SESSION_READ_REQUEST, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %14 = call i32 @safe_write(%struct.cached_connection_* %13, i32* %10, i32 4)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %20 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %19, i32* %9, i64 4)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %8, align 4
  br label %54

29:                                               ; preds = %24
  %30 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %31 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %30, i64* %7, i64 8)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %54

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  store i32 -2, i32* %8, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load %struct.cached_connection_*, %struct.cached_connection_** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %44, i8* %45, i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load i64*, i64** %6, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %50, %40, %34, %27, %23, %17
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @safe_write(%struct.cached_connection_*, i32*, i32) #1

declare dso_local i32 @safe_read(%struct.cached_connection_*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
