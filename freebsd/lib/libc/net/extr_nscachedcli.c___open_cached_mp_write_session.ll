; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___open_cached_mp_write_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c___open_cached_mp_write_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32 }
%struct.cached_connection_params = type { i32 }

@CET_MP_WRITE_SESSION_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cached_connection_* @__open_cached_mp_write_session(%struct.cached_connection_params* %0, i8* %1) #0 {
  %3 = alloca %struct.cached_connection_*, align 8
  %4 = alloca %struct.cached_connection_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cached_connection_*, align 8
  %7 = alloca %struct.cached_connection_*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cached_connection_params* %0, %struct.cached_connection_params** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cached_connection_* null, %struct.cached_connection_** %7, align 8
  %11 = load %struct.cached_connection_params*, %struct.cached_connection_params** %4, align 8
  %12 = call %struct.cached_connection_* @__open_cached_connection(%struct.cached_connection_params* %11)
  store %struct.cached_connection_* %12, %struct.cached_connection_** %6, align 8
  %13 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %14 = icmp eq %struct.cached_connection_* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.cached_connection_* null, %struct.cached_connection_** %3, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %18 = getelementptr inbounds %struct.cached_connection_, %struct.cached_connection_* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %20 = load i32, i32* @CET_MP_WRITE_SESSION_REQUEST, align 4
  %21 = call i32 @send_credentials(%struct.cached_connection_* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %53

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %29 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %28, i64* %8, i64 8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (%struct.cached_connection_*, ...) @safe_write(%struct.cached_connection_* %34, i8* %35, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %43 = call i32 @safe_read(%struct.cached_connection_* %42, i32* %9, i32 4)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %46, %40, %32, %24
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  %58 = call i32 @__close_cached_connection(%struct.cached_connection_* %57)
  br label %61

59:                                               ; preds = %53
  %60 = load %struct.cached_connection_*, %struct.cached_connection_** %6, align 8
  store %struct.cached_connection_* %60, %struct.cached_connection_** %7, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.cached_connection_*, %struct.cached_connection_** %7, align 8
  store %struct.cached_connection_* %62, %struct.cached_connection_** %3, align 8
  br label %63

63:                                               ; preds = %61, %15
  %64 = load %struct.cached_connection_*, %struct.cached_connection_** %3, align 8
  ret %struct.cached_connection_* %64
}

declare dso_local %struct.cached_connection_* @__open_cached_connection(%struct.cached_connection_params*) #1

declare dso_local i32 @send_credentials(%struct.cached_connection_*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @safe_write(%struct.cached_connection_*, ...) #1

declare dso_local i32 @safe_read(%struct.cached_connection_*, i32*, i32) #1

declare dso_local i32 @__close_cached_connection(%struct.cached_connection_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
