; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evhttp_bound_socket = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not start web server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp*, i64*, i32)* @http_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_bind(%struct.evhttp* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evhttp_bound_socket*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %15)
  store %struct.evhttp_bound_socket* %16, %struct.evhttp_bound_socket** %9, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  store %struct.evhttp_bound_socket* %21, %struct.evhttp_bound_socket** %9, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %9, align 8
  %24 = icmp eq %struct.evhttp_bound_socket* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %43

29:                                               ; preds = %25
  %30 = call i32 @event_errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %9, align 8
  %34 = call i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket* %33)
  %35 = call i32 @regress_get_socket_port(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %38, %28
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp*, i8*, i64) #1

declare dso_local i32 @event_errx(i32, i8*) #1

declare dso_local i32 @regress_get_socket_port(i32) #1

declare dso_local i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
