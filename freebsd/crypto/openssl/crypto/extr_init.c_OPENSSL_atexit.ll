; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_atexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_atexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (...)*, %struct.TYPE_4__* }
%union.anon = type { i8* }

@DSO_FLAG_NO_UNLOAD_ON_FREE = common dso_local global i32 0, align 4
@CRYPTO_F_OPENSSL_ATEXIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@stop_handlers = common dso_local global %struct.TYPE_4__* null, align 8
@GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = common dso_local global i32 0, align 4
@GET_MODULE_HANDLE_EX_FLAG_PIN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_atexit(void ()* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32*, align 8
  store void ()* %0, void ()** %3, align 8
  %7 = load void ()*, void ()** %3, align 8
  %8 = bitcast %union.anon* %5 to void ()**
  store void ()* %7, void ()** %8, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32 (...) @ERR_set_mark()
  %10 = bitcast %union.anon* %5 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @DSO_FLAG_NO_UNLOAD_ON_FREE, align 4
  %13 = call i32* @DSO_dsobyaddr(i8* %11, i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @DSO_free(i32* %14)
  %16 = call i32 (...) @ERR_pop_to_mark()
  %17 = call %struct.TYPE_4__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @CRYPTO_F_OPENSSL_ATEXIT, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @CRYPTOerr(i32 %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load void ()*, void ()** %3, align 8
  %25 = bitcast void ()* %24 to void (...)*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store void (...)* %25, void (...)** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stop_handlers, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** @stop_handlers, align 8
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local i32* @DSO_dsobyaddr(i8*, i32) #1

declare dso_local i32 @DSO_free(i32*) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local %struct.TYPE_4__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
