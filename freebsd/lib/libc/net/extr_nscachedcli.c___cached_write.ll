; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32 }

@CET_WRITE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cached_write(%struct.cached_connection_* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.cached_connection_*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cached_connection_* %0, %struct.cached_connection_** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %17 = load i32, i32* @CET_WRITE_REQUEST, align 4
  %18 = call i32 @send_credentials(%struct.cached_connection_* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %73

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %26 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %25, i64* %13, i64 8)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %32 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %31, i64* %10, i64 8)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %73

36:                                               ; preds = %30
  %37 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %38 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %37, i64* %12, i64 8)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %73

42:                                               ; preds = %36
  %43 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %43, i8* %44, i64 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %73

50:                                               ; preds = %42
  %51 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %51, i8* %52, i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %73

58:                                               ; preds = %50
  %59 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %59, i8* %60, i64 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %73

66:                                               ; preds = %58
  %67 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %68 = call i32 @safe_read(%struct.cached_connection_* %67, i32* %14, i32 4)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %14, align 4
  br label %72

72:                                               ; preds = %71, %66
  br label %73

73:                                               ; preds = %72, %65, %57, %49, %41, %35, %29, %21
  %74 = load i32, i32* %14, align 4
  ret i32 %74
}

declare dso_local i32 @send_credentials(%struct.cached_connection_*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @safe_write(%struct.cached_connection_*, ...) #1

declare dso_local i32 @safe_read(%struct.cached_connection_*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
