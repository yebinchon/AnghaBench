; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_socket_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_socket_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32* @SSL_get_wbio(i32* %14)
  store i32* %15, i32** %12, align 8
  store i64 -1, i64* %13, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %12, align 8
  %20 = call i64 @BIO_get_fd(i32* %19, i32* null)
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i64, i64* %13, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %8, align 8
  br label %36

29:                                               ; preds = %24
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  br label %58

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @BIO_set_close(i32* %37, i32 0)
  br label %51

39:                                               ; preds = %21
  %40 = load i64, i64* %8, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = call i32* @BIO_new_socket(i64 %43, i32 0)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @SSL_set_bio(i32* %45, i32* %46, i32* %47)
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.event_base*, %struct.event_base** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base* %52, i32* null, i64 %53, i32* %54, i32 %55, i32 %56)
  store %struct.bufferevent* %57, %struct.bufferevent** %6, align 8
  br label %58

58:                                               ; preds = %51, %34
  %59 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  ret %struct.bufferevent* %59
}

declare dso_local i32* @SSL_get_wbio(i32*) #1

declare dso_local i64 @BIO_get_fd(i32*, i32*) #1

declare dso_local i32 @BIO_set_close(i32*, i32) #1

declare dso_local i32* @BIO_new_socket(i64, i32) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base*, i32*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
