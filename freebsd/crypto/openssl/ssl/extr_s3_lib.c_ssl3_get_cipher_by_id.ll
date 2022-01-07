; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher_by_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@tls13_ciphers = common dso_local global i32 0, align 4
@TLS13_NUM_CIPHERS = common dso_local global i32 0, align 4
@ssl3_ciphers = common dso_local global i32 0, align 4
@SSL3_NUM_CIPHERS = common dso_local global i32 0, align 4
@ssl3_scsvs = common dso_local global i32 0, align 4
@SSL3_NUM_SCSVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ssl3_get_cipher_by_id(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @tls13_ciphers, align 4
  %9 = load i32, i32* @TLS13_NUM_CIPHERS, align 4
  %10 = call %struct.TYPE_5__* @OBJ_bsearch_ssl_cipher_id(%struct.TYPE_5__* %4, i32 %8, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @ssl3_ciphers, align 4
  %17 = load i32, i32* @SSL3_NUM_CIPHERS, align 4
  %18 = call %struct.TYPE_5__* @OBJ_bsearch_ssl_cipher_id(%struct.TYPE_5__* %4, i32 %16, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %2, align 8
  br label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @ssl3_scsvs, align 4
  %25 = load i32, i32* @SSL3_NUM_SCSVS, align 4
  %26 = call %struct.TYPE_5__* @OBJ_bsearch_ssl_cipher_id(%struct.TYPE_5__* %4, i32 %24, i32 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %2, align 8
  br label %27

27:                                               ; preds = %23, %21, %13
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %28
}

declare dso_local %struct.TYPE_5__* @OBJ_bsearch_ssl_cipher_id(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
