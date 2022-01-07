; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }

@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SWRAP_PENDING_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_ioctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.socket_info* @find_socket_info(i32 %11)
  store %struct.socket_info* %12, %struct.socket_info** %9, align 8
  %13 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %14 = icmp ne %struct.socket_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @real_ioctl(i32 %16, i32 %17, i8* %18)
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @real_ioctl(i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %53 [
    i32 128, label %26
  ]

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* @errno, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %42 = load i32, i32* @SWRAP_PENDING_RST, align 4
  %43 = call i32 @swrap_dump_packet(%struct.socket_info* %41, i32* null, i32 %42, i32* null, i32 0)
  br label %52

44:                                               ; preds = %36, %32, %26
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.socket_info*, %struct.socket_info** %9, align 8
  %49 = load i32, i32* @SWRAP_PENDING_RST, align 4
  %50 = call i32 @swrap_dump_packet(%struct.socket_info* %48, i32* null, i32 %49, i32* null, i32 0)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %20, %52
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_ioctl(i32, i32, i8*) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
