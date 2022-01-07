; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_dtls1_check_timeout_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_dtls1_check_timeout_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SSL_OP_NO_QUERY_MTU = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_GET_FALLBACK_MTU = common dso_local global i32 0, align 4
@DTLS1_TMO_ALERT_COUNT = common dso_local global i32 0, align 4
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_F_DTLS1_CHECK_TIMEOUT_NUM = common dso_local global i32 0, align 4
@SSL_R_READ_TIMEOUT_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_check_timeout_num(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @SSL_get_options(%struct.TYPE_10__* %20)
  %22 = load i32, i32* @SSL_OP_NO_QUERY_MTU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @SSL_get_wbio(%struct.TYPE_10__* %26)
  %28 = load i32, i32* @BIO_CTRL_DGRAM_GET_FALLBACK_MTU, align 4
  %29 = call i64 @BIO_ctrl(i32 %27, i32 %28, i32 0, i32* null)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %25
  br label %44

44:                                               ; preds = %43, %19, %1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DTLS1_TMO_ALERT_COUNT, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %56 = load i32, i32* @SSL_F_DTLS1_CHECK_TIMEOUT_NUM, align 4
  %57 = load i32, i32* @SSL_R_READ_TIMEOUT_EXPIRED, align 4
  %58 = call i32 @SSLfatal(%struct.TYPE_10__* %54, i32 %55, i32 %56, i32 %57)
  store i32 -1, i32* %2, align 4
  br label %60

59:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @SSL_get_options(%struct.TYPE_10__*) #1

declare dso_local i64 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_10__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
