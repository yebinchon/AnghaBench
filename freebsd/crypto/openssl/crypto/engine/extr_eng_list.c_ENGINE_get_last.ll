; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_list.c_ENGINE_get_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_list.c_ENGINE_get_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@engine_lock_init = common dso_local global i32 0, align 4
@do_engine_lock_init = common dso_local global i32 0, align 4
@ENGINE_F_ENGINE_GET_LAST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@engine_list_tail = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ENGINE_get_last() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32, i32* @do_engine_lock_init, align 4
  %4 = call i32 @RUN_ONCE(i32* @engine_lock_init, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENGINE_F_ENGINE_GET_LAST, align 4
  %8 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %9 = call i32 @ENGINEerr(i32 %7, i32 %8)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %27

10:                                               ; preds = %0
  %11 = load i32, i32* @global_engine_lock, align 4
  %12 = call i32 @CRYPTO_THREAD_write_lock(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @engine_list_tail, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = call i32 @engine_ref_debug(%struct.TYPE_5__* %21, i32 0, i32 1)
  br label %23

23:                                               ; preds = %16, %10
  %24 = load i32, i32* @global_engine_lock, align 4
  %25 = call i32 @CRYPTO_THREAD_unlock(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %1, align 8
  br label %27

27:                                               ; preds = %23, %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %28
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @engine_ref_debug(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
