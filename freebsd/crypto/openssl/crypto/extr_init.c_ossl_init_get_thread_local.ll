; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_get_thread_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_get_thread_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread_local_inits_st = type { i32 }

@destructor_key = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_local_inits_st* (i32)* @ossl_init_get_thread_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_local_inits_st* @ossl_init_get_thread_local(i32 %0) #0 {
  %2 = alloca %struct.thread_local_inits_st*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_local_inits_st*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.thread_local_inits_st* @CRYPTO_THREAD_get_local(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @destructor_key, i32 0, i32 0))
  store %struct.thread_local_inits_st* %5, %struct.thread_local_inits_st** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %10 = icmp eq %struct.thread_local_inits_st* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = call %struct.thread_local_inits_st* @OPENSSL_zalloc(i32 4)
  store %struct.thread_local_inits_st* %12, %struct.thread_local_inits_st** %4, align 8
  %13 = icmp ne %struct.thread_local_inits_st* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %16 = call i32 @CRYPTO_THREAD_set_local(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @destructor_key, i32 0, i32 0), %struct.thread_local_inits_st* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %20 = call i32 @OPENSSL_free(%struct.thread_local_inits_st* %19)
  store %struct.thread_local_inits_st* null, %struct.thread_local_inits_st** %2, align 8
  br label %26

21:                                               ; preds = %14, %11, %8
  br label %24

22:                                               ; preds = %1
  %23 = call i32 @CRYPTO_THREAD_set_local(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @destructor_key, i32 0, i32 0), %struct.thread_local_inits_st* null)
  br label %24

24:                                               ; preds = %22, %21
  %25 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  store %struct.thread_local_inits_st* %25, %struct.thread_local_inits_st** %2, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  ret %struct.thread_local_inits_st* %27
}

declare dso_local %struct.thread_local_inits_st* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local %struct.thread_local_inits_st* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, %struct.thread_local_inits_st*) #1

declare dso_local i32 @OPENSSL_free(%struct.thread_local_inits_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
