; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_setup_ssl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_setup_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"could not SSL_new\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"could not SSL_set_fd\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SSL handshake failed\00", align 1
@X509_V_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"SSL verification failed\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Server presented no peer certificate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @setup_ssl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_ssl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %70

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @SSL_new(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @ssl_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @SSL_set_connect_state(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %24 = call i32 @SSL_set_mode(i32* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SSL_set_fd(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = call i32 @ssl_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %19
  br label %32

32:                                               ; preds = %31, %51
  %33 = call i32 (...) @ERR_clear_error()
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @SSL_do_handshake(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %52

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @SSL_get_error(i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @ssl_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45, %38
  br label %32

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @SSL_get_verify_result(i32* %53)
  %55 = load i64, i64* @X509_V_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @ssl_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @SSL_get_peer_certificate(i32* %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 @ssl_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @X509_free(i32* %67)
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %66, %11
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @ssl_err(i8*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i64 @SSL_get_verify_result(i32*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
