; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_key_exchange_expected.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_key_exchange_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @key_exchange_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_exchange_expected(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @SSL_kDHE, align 8
  %15 = load i64, i64* @SSL_kECDHE, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @SSL_kDHEPSK, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @SSL_kECDHEPSK, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @SSL_kSRP, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %13, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
