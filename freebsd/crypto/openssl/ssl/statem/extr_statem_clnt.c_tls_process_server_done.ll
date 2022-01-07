; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_server_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_server_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SERVER_DONE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_kSRP = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_SRP_A_CALC = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_server_done(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @PACKET_remaining(i32* %6)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %12 = load i32, i32* @SSL_F_TLS_PROCESS_SERVER_DONE, align 4
  %13 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %14 = call i32 @SSLfatal(%struct.TYPE_12__* %10, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SSL_kSRP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i64 @SRP_Calc_A_param(%struct.TYPE_12__* %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %35 = load i32, i32* @SSL_F_TLS_PROCESS_SERVER_DONE, align 4
  %36 = load i32, i32* @SSL_R_SRP_A_CALC, align 4
  %37 = call i32 @SSLfatal(%struct.TYPE_12__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = call i32 @tls_process_initial_server_flight(%struct.TYPE_12__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %44, %32, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @SRP_Calc_A_param(%struct.TYPE_12__*) #1

declare dso_local i32 @tls_process_initial_server_flight(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
