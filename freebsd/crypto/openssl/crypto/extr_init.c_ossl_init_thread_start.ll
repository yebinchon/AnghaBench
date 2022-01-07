; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_thread_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_local_inits_st = type { i32, i32, i32 }

@OPENSSL_INIT_THREAD_ASYNC = common dso_local global i32 0, align 4
@OPENSSL_INIT_THREAD_ERR_STATE = common dso_local global i32 0, align 4
@OPENSSL_INIT_THREAD_RAND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_init_thread_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_local_inits_st*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @OPENSSL_init_crypto(i32 0, i32* null)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = call %struct.thread_local_inits_st* @ossl_init_get_thread_local(i32 1)
  store %struct.thread_local_inits_st* %9, %struct.thread_local_inits_st** %4, align 8
  %10 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %11 = icmp eq %struct.thread_local_inits_st* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %38

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @OPENSSL_INIT_THREAD_ASYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %20 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @OPENSSL_INIT_THREAD_ERR_STATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %28 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @OPENSSL_INIT_THREAD_RAND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %4, align 8
  %36 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %12, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.thread_local_inits_st* @ossl_init_get_thread_local(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
