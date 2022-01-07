; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_sock.c_BIO_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_F_BIO_GET_PORT = common dso_local global i32 0, align 4
@BIO_R_NO_PORT_DEFINED = common dso_local global i32 0, align 4
@BIO_LOOKUP_CLIENT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"host=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_get_port(i8* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @BIO_F_BIO_GET_PORT, align 4
  %12 = load i32, i32* @BIO_R_NO_PORT_DEFINED, align 4
  %13 = call i32 @BIOerr(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = call i32 (...) @BIO_sock_init()
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @BIO_LOOKUP_CLIENT, align 4
  %21 = load i64, i64* @AF_INET, align 8
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = call i64 @BIO_lookup(i32* null, i8* %19, i32 %20, i64 %21, i32 %22, i32** %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @BIO_ADDRINFO_family(i32* %26)
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @BIO_F_BIO_GET_PORT, align 4
  %32 = load i32, i32* @BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET, align 4
  %33 = call i32 @BIOerr(i32 %31, i32 %32)
  br label %40

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @BIO_ADDRINFO_address(i32* %35)
  %37 = call i32 @BIO_ADDR_rawport(i32 %36)
  %38 = call zeroext i16 @ntohs(i32 %37)
  %39 = load i16*, i16** %5, align 8
  store i16 %38, i16* %39, align 2
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @BIO_ADDRINFO_free(i32* %41)
  br label %46

43:                                               ; preds = %18
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %17, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i64 @BIO_lookup(i32*, i8*, i32, i64, i32, i32**) #1

declare dso_local i64 @BIO_ADDRINFO_family(i32*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @BIO_ADDR_rawport(i32) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
