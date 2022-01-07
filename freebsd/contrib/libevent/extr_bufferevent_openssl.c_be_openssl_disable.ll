; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i64 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_openssl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_openssl* %7, %struct.bufferevent_openssl** %5, align 8
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* @EV_READ, align 2
  %11 = sext i16 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %16 = call i32 @stop_reading(%struct.bufferevent_openssl* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @EV_WRITE, align 2
  %21 = sext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %26 = call i32 @stop_writing(%struct.bufferevent_openssl* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %29 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load i16, i16* %4, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* @EV_READ, align 2
  %36 = sext i16 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %41 = call i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i16, i16* %4, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* @EV_WRITE, align 2
  %46 = sext i16 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %51 = call i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %50)
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %27
  ret i32 0
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @stop_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @stop_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
