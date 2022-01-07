; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_addrinfo_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_addrinfo_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i64 }

@BIO_F_ADDRINFO_WRAP = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i16, %struct.TYPE_5__**)* @addrinfo_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrinfo_wrap(i32 %0, i32 %1, i8* %2, i64 %3, i16 zeroext %4, %struct.TYPE_5__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.TYPE_5__**, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i16 %4, i16* %12, align 2
  store %struct.TYPE_5__** %5, %struct.TYPE_5__*** %13, align 8
  %15 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 32)
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %16, align 8
  %17 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i32, i32* @BIO_F_ADDRINFO_WRAP, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @BIOerr(i32 %19, i32 %20)
  store i32 0, i32* %7, align 4
  br label %79

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i64, i64* @IPPROTO_TCP, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %22
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SOCK_DGRAM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* @IPPROTO_UDP, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = call i32* (...) @BIO_ADDR_new()
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i16, i16* %12, align 2
  %58 = call i32 @BIO_ADDR_rawmake(i32* %53, i32 %54, i8* %55, i64 %56, i16 zeroext %57)
  %59 = load i32*, i32** %14, align 8
  %60 = call i32* @BIO_ADDR_sockaddr_noconst(i32* %59)
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32* %60, i32** %63, align 8
  br label %64

64:                                               ; preds = %52, %48
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @BIO_ADDRINFO_free(%struct.TYPE_5__* %75)
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  store i32 0, i32* %7, align 4
  br label %79

78:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %73, %18
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32* @BIO_ADDR_new(...) #1

declare dso_local i32 @BIO_ADDR_rawmake(i32*, i32, i8*, i64, i16 zeroext) #1

declare dso_local i32* @BIO_ADDR_sockaddr_noconst(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
