; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_register.c_ossl_store_destroy_loaders_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_register.c_ossl_store_destroy_loaders_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loader_register = common dso_local global i32* null, align 8
@registry_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ossl_store_destroy_loaders_int() #0 {
  %1 = load i32*, i32** @loader_register, align 8
  %2 = call i64 @lh_OSSL_STORE_LOADER_num_items(i32* %1)
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = load i32*, i32** @loader_register, align 8
  %7 = call i32 @lh_OSSL_STORE_LOADER_free(i32* %6)
  store i32* null, i32** @loader_register, align 8
  %8 = load i32*, i32** @registry_lock, align 8
  %9 = call i32 @CRYPTO_THREAD_lock_free(i32* %8)
  store i32* null, i32** @registry_lock, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lh_OSSL_STORE_LOADER_num_items(i32*) #1

declare dso_local i32 @lh_OSSL_STORE_LOADER_free(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
