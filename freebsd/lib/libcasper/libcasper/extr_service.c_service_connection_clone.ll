; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_connection_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service = type { i32 }
%struct.service_connection = type { i32 }

@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @service_connection_clone(%struct.service* %0, %struct.service_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.service*, align 8
  %5 = alloca %struct.service_connection*, align 8
  %6 = alloca %struct.service_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.service* %0, %struct.service** %4, align 8
  store %struct.service_connection* %1, %struct.service_connection** %5, align 8
  %9 = load i32, i32* @PF_UNIX, align 4
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = load i32, i32* @SOCK_NONBLOCK, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %14 = call i64 @socketpair(i32 %9, i32 %12, i32 0, i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.service*, %struct.service** %4, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.service_connection*, %struct.service_connection** %5, align 8
  %22 = call i32 @service_connection_get_limits(%struct.service_connection* %21)
  %23 = call %struct.service_connection* @service_connection_add(%struct.service* %18, i32 %20, i32 %22)
  store %struct.service_connection* %23, %struct.service_connection** %6, align 8
  %24 = load %struct.service_connection*, %struct.service_connection** %6, align 8
  %25 = icmp eq %struct.service_connection* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %38

35:                                               ; preds = %17
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %26, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local %struct.service_connection* @service_connection_add(%struct.service*, i32, i32) #1

declare dso_local i32 @service_connection_get_limits(%struct.service_connection*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
