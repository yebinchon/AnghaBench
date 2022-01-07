; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_TLS_initiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_TLS_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SSL_new error\0A\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SSL_set_fd error\0A\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SSL handshake failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Server presented no peer certificate\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"server SSL certificate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @TLS_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TLS_initiate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @SSL_new(i32* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @verb, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  store i32* null, i32** %3, align 8
  br label %83

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @SSL_set_connect_state(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %24 = call i32 @SSL_set_mode(i32* %22, i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SSL_set_fd(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* @verb, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @SSL_free(i32* %35)
  store i32* null, i32** %3, align 8
  br label %83

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %63
  %39 = call i32 (...) @ERR_clear_error()
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @SSL_do_handshake(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %64

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @SSL_get_error(i32* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i64, i64* @verb, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @SSL_free(i32* %61)
  store i32* null, i32** %3, align 8
  br label %83

63:                                               ; preds = %51, %44
  br label %38

64:                                               ; preds = %43
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @SSL_get_peer_certificate(i32* %65)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* @verb, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @SSL_free(i32* %75)
  store i32* null, i32** %3, align 8
  br label %83

77:                                               ; preds = %64
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @verb_cert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @X509_free(i32* %80)
  %82 = load i32*, i32** %8, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %77, %74, %60, %34, %18
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @verb_cert(i8*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
