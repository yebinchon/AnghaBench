; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_unix.c_rand_pool_add_nonce_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_unix.c_rand_pool_add_nonce_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand_pool_add_nonce_data(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.anon, align 4
  store i32* %0, i32** %2, align 8
  %4 = bitcast %struct.anon* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 12, i1 false)
  %5 = call i32 (...) @getpid()
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = call i32 (...) @get_time_stamp()
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast %struct.anon* %3 to i8*
  %13 = call i32 @rand_pool_add(i32* %11, i8* %12, i32 12, i32 0)
  ret i32 %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #2

declare dso_local i32 @get_time_stamp(...) #2

declare dso_local i32 @rand_pool_add(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
