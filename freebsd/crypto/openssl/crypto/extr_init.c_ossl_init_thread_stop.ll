; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_thread_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_ossl_init_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_local_inits_st = type { i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_local_inits_st*)* @ossl_init_thread_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ossl_init_thread_stop(%struct.thread_local_inits_st* %0) #0 {
  %2 = alloca %struct.thread_local_inits_st*, align 8
  store %struct.thread_local_inits_st* %0, %struct.thread_local_inits_st** %2, align 8
  %3 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  %4 = icmp eq %struct.thread_local_inits_st* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  %8 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (...) @async_delete_thread_state()
  br label %13

13:                                               ; preds = %11, %6
  %14 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  %15 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @err_delete_thread_state()
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  %22 = getelementptr inbounds %struct.thread_local_inits_st, %struct.thread_local_inits_st* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @drbg_delete_thread_state()
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.thread_local_inits_st*, %struct.thread_local_inits_st** %2, align 8
  %29 = call i32 @OPENSSL_free(%struct.thread_local_inits_st* %28)
  br label %30

30:                                               ; preds = %27, %5
  ret void
}

declare dso_local i32 @async_delete_thread_state(...) #1

declare dso_local i32 @err_delete_thread_state(...) #1

declare dso_local i32 @drbg_delete_thread_state(...) #1

declare dso_local i32 @OPENSSL_free(%struct.thread_local_inits_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
