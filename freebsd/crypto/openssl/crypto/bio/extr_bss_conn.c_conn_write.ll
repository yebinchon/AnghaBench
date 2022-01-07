; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_conn.c_conn_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_conn.c_conn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }

@BIO_CONN_S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @conn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_write(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BIO_CONN_S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = call i32 @conn_state(%struct.TYPE_9__* %20, %struct.TYPE_8__* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %3
  %29 = call i32 (...) @clear_socket_error()
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @writesocket(i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i32 @BIO_clear_retry_flags(%struct.TYPE_9__* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @BIO_sock_should_retry(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = call i32 @BIO_set_retry_write(%struct.TYPE_9__* %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @conn_state(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @clear_socket_error(...) #1

declare dso_local i32 @writesocket(i32, i8*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_9__*) #1

declare dso_local i64 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @BIO_set_retry_write(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
