; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_iocp.c_init_extension_functions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_iocp.c_init_extension_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.win32_extension_fns = type { i8*, i8*, i8* }

@WSAID_ACCEPTEX = common dso_local global i32 0, align 4
@WSAID_CONNECTEX = common dso_local global i32 0, align 4
@WSAID_GETACCEPTEXSOCKADDRS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@extension_fns_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.win32_extension_fns*)* @init_extension_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_extension_functions(%struct.win32_extension_fns* %0) #0 {
  %2 = alloca %struct.win32_extension_fns*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.win32_extension_fns* %0, %struct.win32_extension_fns** %2, align 8
  %7 = load i32, i32* @WSAID_ACCEPTEX, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @WSAID_CONNECTEX, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @WSAID_GETACCEPTEXSOCKADDRS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i64 @socket(i32 %10, i32 %11, i32 0)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @INVALID_SOCKET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %32

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @get_extension_function(i64 %18, i32* %3)
  %20 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %2, align 8
  %21 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @get_extension_function(i64 %22, i32* %4)
  %24 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %2, align 8
  %25 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @get_extension_function(i64 %26, i32* %5)
  %28 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %2, align 8
  %29 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @closesocket(i64 %30)
  store i32 1, i32* @extension_fns_initialized, align 4
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i8* @get_extension_function(i64, i32*) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
