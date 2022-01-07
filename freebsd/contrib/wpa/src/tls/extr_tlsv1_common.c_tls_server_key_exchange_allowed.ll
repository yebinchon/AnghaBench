; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_server_key_exchange_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_server_key_exchange_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_cipher_suite = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_server_key_exchange_allowed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_cipher_suite*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %5)
  store %struct.tls_cipher_suite* %6, %struct.tls_cipher_suite** %4, align 8
  %7 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %4, align 8
  %8 = icmp eq %struct.tls_cipher_suite* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %4, align 8
  %12 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 134, label %14
    i32 133, label %14
    i32 132, label %14
    i32 131, label %14
    i32 129, label %14
    i32 130, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %10, %10, %10, %10, %10, %10
  store i32 1, i32* %2, align 4
  br label %17

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
