; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_renegotiate_abbreviated.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_renegotiate_abbreviated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { {}* }

@SSL_F_SSL_RENEGOTIATE_ABBREVIATED = common dso_local global i32 0, align 4
@SSL_R_WRONG_SSL_VERSION = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL_R_NO_RENEGOTIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_renegotiate_abbreviated(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = call i64 @SSL_IS_TLS13(%struct.TYPE_7__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @SSL_F_SSL_RENEGOTIATE_ABBREVIATED, align 4
  %9 = load i32, i32* @SSL_R_WRONG_SSL_VERSION, align 4
  %10 = call i32 @SSLerr(i32 %8, i32 %9)
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SSL_OP_NO_RENEGOTIATION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @SSL_F_SSL_RENEGOTIATE_ABBREVIATED, align 4
  %20 = load i32, i32* @SSL_R_NO_RENEGOTIATION, align 4
  %21 = call i32 @SSLerr(i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %35

22:                                               ; preds = %11
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.TYPE_7__*)**
  %32 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 %32(%struct.TYPE_7__* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %18, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_7__*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
