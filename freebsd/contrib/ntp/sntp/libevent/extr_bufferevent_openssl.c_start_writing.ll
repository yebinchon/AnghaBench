; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_start_writing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_start_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @start_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_writing(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.bufferevent* %13, %struct.bufferevent** %4, align 8
  %14 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 3
  %16 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 2
  %18 = call i32 @bufferevent_add_event_(i32* %15, i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %10
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %23 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %28 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %27, i32 0, i32 1
  %29 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 0
  %31 = call i32 @bufferevent_add_event_(i32* %28, i32* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %21, %10
  br label %33

33:                                               ; preds = %32, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
