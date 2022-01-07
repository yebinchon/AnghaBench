; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_accept_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_accept_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_SOCKET = common dso_local global i32 0, align 4
@BIO_PARSE_PRIO_SERV = common dso_local global i32 0, align 4
@BIO_LOOKUP_SERVER = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@BIO_SOCK_REUSEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_get_accept_socket(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %10, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @BIO_PARSE_PRIO_SERV, align 4
  %13 = call i32 @BIO_parse_hostserv(i8* %11, i8** %7, i8** %8, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = call i32 (...) @BIO_sock_init()
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @BIO_LOOKUP_SERVER, align 4
  %26 = load i32, i32* @AF_UNSPEC, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = call i64 @BIO_lookup(i8* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32** %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %61

31:                                               ; preds = %22
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @BIO_ADDRINFO_family(i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @BIO_ADDRINFO_socktype(i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @BIO_ADDRINFO_protocol(i32* %36)
  %38 = call i32 @BIO_socket(i32 %33, i32 %35, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @INVALID_SOCKET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @BIO_ADDRINFO_address(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @BIO_SOCK_REUSEADDR, align 4
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = call i32 @BIO_listen(i32 %44, i32 %46, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BIO_closesocket(i32 %57)
  %59 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %41, %30
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @BIO_ADDRINFO_free(i32* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @OPENSSL_free(i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %20, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BIO_parse_hostserv(i8*, i8**, i8**, i32) #1

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i64 @BIO_lookup(i8*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @BIO_socket(i32, i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_socktype(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_protocol(i32*) #1

declare dso_local i32 @BIO_listen(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
