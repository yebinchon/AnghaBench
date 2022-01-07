; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_host_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_host_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_LOOKUP_CLIENT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@BIO_F_BIO_GET_HOST_IP = common dso_local global i32 0, align 4
@BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"host=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_get_host_ip(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @BIO_sock_init()
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @BIO_LOOKUP_CLIENT, align 4
  %15 = load i64, i64* @AF_INET, align 8
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = call i64 @BIO_lookup(i8* %13, i32* null, i32 %14, i64 %15, i32 %16, i32** %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @BIO_ADDRINFO_family(i32* %20)
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @BIO_F_BIO_GET_HOST_IP, align 4
  %26 = load i32, i32* @BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET, align 4
  %27 = call i32 @BIOerr(i32 %25, i32 %26)
  br label %46

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @BIO_ADDRINFO_address(i32* %29)
  %31 = call i32 @BIO_ADDR_rawaddress(i32 %30, i8* null, i64* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i64 @ossl_assert(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @BIO_ADDRINFO_address(i32* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @BIO_ADDR_rawaddress(i32 %41, i8* %42, i64* %8)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @BIO_ADDRINFO_free(i32* %47)
  br label %52

49:                                               ; preds = %12
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i64 @BIO_lookup(i8*, i32*, i32, i64, i32, i32**) #1

declare dso_local i64 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_ADDR_rawaddress(i32, i8*, i64*) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i64 @ossl_assert(i32) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
