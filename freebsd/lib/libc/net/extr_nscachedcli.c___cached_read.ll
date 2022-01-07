; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___cached_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32 }

@CET_READ_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cached_read(%struct.cached_connection_* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca %struct.cached_connection_*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cached_connection_* %0, %struct.cached_connection_** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %19 = icmp ne %struct.cached_connection_* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %15, align 4
  %22 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %23 = load i32, i32* @CET_READ_REQUEST, align 4
  %24 = call i32 @send_credentials(%struct.cached_connection_* %22, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %94

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %32 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %31, i64* %13, i64 8)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %94

36:                                               ; preds = %28
  %37 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %38 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %37, i64* %10, i64 8)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %94

42:                                               ; preds = %36
  %43 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %43, i8* %44, i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %94

50:                                               ; preds = %42
  %51 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %51, i8* %52, i64 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %94

58:                                               ; preds = %50
  %59 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %60 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %59, i32* %16, i64 4)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %94

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %15, align 4
  br label %94

69:                                               ; preds = %64
  %70 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %71 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %70, i64* %14, i64 8)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %94

75:                                               ; preds = %69
  %76 = load i64, i64* %14, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %14, align 8
  %82 = load i64*, i64** %12, align 8
  store i64 %81, i64* %82, align 8
  store i32 -2, i32* %15, align 4
  br label %94

83:                                               ; preds = %75
  %84 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 (%struct.cached_connection_*, ...) @safe_read(%struct.cached_connection_* %84, i8* %85, i64 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %94

91:                                               ; preds = %83
  %92 = load i64, i64* %14, align 8
  %93 = load i64*, i64** %12, align 8
  store i64 %92, i64* %93, align 8
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %91, %90, %80, %74, %67, %63, %57, %49, %41, %35, %27
  %95 = load i32, i32* %15, align 4
  ret i32 %95
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_credentials(%struct.cached_connection_*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @safe_write(%struct.cached_connection_*, ...) #1

declare dso_local i32 @safe_read(%struct.cached_connection_*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
