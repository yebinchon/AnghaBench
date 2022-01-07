; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i64, i64 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i64 0, align 8
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_openssl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %8 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %7)
  store %struct.bufferevent_openssl* %8, %struct.bufferevent_openssl** %6, align 8
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BUFFEREVENT_SSL_OPEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i16, i16* %5, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @EV_READ, align 2
  %19 = sext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %24 = call i32 @stop_reading(%struct.bufferevent_openssl* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* @EV_WRITE, align 2
  %29 = sext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %34 = call i32 @stop_writing(%struct.bufferevent_openssl* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %6, align 8
  %37 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i16, i16* %5, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* @EV_READ, align 2
  %44 = sext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %49 = call i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i16, i16* %5, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* @EV_WRITE, align 2
  %54 = sext i16 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %59 = call i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %35
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
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
