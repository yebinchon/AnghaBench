; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_start_reading.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_start_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32, i32, i32, i32 }

@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @start_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_reading(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent_openssl*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %3, align 8
  %6 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %15 = call i32 @bufferevent_unsuspend_read_(i64 %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %18 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.bufferevent* %19, %struct.bufferevent** %4, align 8
  %20 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 3
  %22 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 2
  %24 = call i32 @bufferevent_add_event_(i32* %21, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %29 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 1
  %35 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 0
  %37 = call i32 @bufferevent_add_event_(i32* %34, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %27, %16
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @bufferevent_unsuspend_read_(i64, i32) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
