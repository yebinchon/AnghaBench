; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_send_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_send_request(%struct.rad_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  %9 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %10 = call i32 @rad_init_send_request(%struct.rad_handle* %9, i32* %6, %struct.timeval* %5)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %17 = call i32 @timeradd(%struct.timeval* %5, %struct.timeval* %4, %struct.timeval* %4)
  br label %18

18:                                               ; preds = %60, %50, %15
  %19 = call i32 @FD_ZERO(i32* %8)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @FD_SET(i32 %20, i32* %8)
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @select(i32 %23, i32* %8, i32* null, i32* null, %struct.timeval* %5)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @generr(%struct.rad_handle* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  br label %63

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @FD_ISSET(i32 %33, i32* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %38 = call i32 @timersub(%struct.timeval* %4, %struct.timeval* %5, %struct.timeval* %5)
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %36
  br label %18

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rad_continue_send_request(%struct.rad_handle* %53, i32 %54, i32* %6, %struct.timeval* %5)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %52
  %61 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %62 = call i32 @timeradd(%struct.timeval* %5, %struct.timeval* %4, %struct.timeval* %4)
  br label %18

63:                                               ; preds = %58, %27, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @rad_init_send_request(%struct.rad_handle*, i32*, %struct.timeval*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timeradd(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @generr(%struct.rad_handle*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @rad_continue_send_request(%struct.rad_handle*, i32, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
