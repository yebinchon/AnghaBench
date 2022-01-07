; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_dgram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_dgram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@MSG_PEEK = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_SET_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32)* @dgram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_read(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 4, i32* %11, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %3
  %19 = call i32 (...) @clear_socket_error()
  %20 = call i32 @memset(i32* %10, i32 0, i32 4)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = call i32 @dgram_adjust_rcv_timeout(%struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @MSG_PEEK, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BIO_ADDR_sockaddr_noconst(i32* %10)
  %37 = call i32 @recvfrom(i32 %32, i8* %33, i32 %34, i32 %35, i32 %36, i32* %11)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i32, i32* @BIO_CTRL_DGRAM_SET_PEER, align 4
  %48 = call i32 @BIO_ctrl(%struct.TYPE_10__* %46, i32 %47, i32 0, i32* %10)
  br label %49

49:                                               ; preds = %45, %42, %29
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @BIO_clear_retry_flags(%struct.TYPE_10__* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @BIO_dgram_should_retry(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = call i32 @BIO_set_retry_read(%struct.TYPE_10__* %59)
  %61 = call i32 (...) @get_last_socket_error()
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = call i32 @dgram_reset_rcv_timeout(%struct.TYPE_10__* %66)
  br label %68

68:                                               ; preds = %65, %3
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @clear_socket_error(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dgram_adjust_rcv_timeout(%struct.TYPE_10__*) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @BIO_ADDR_sockaddr_noconst(i32*) #1

declare dso_local i32 @BIO_ctrl(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_10__*) #1

declare dso_local i64 @BIO_dgram_should_retry(i32) #1

declare dso_local i32 @BIO_set_retry_read(%struct.TYPE_10__*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @dgram_reset_rcv_timeout(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
