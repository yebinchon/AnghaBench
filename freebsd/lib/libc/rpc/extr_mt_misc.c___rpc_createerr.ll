; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_mt_misc.c___rpc_createerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_mt_misc.c___rpc_createerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_createerr = type { i32 }

@rpc_createerr = common dso_local global %struct.rpc_createerr zeroinitializer, align 4
@rce_once = common dso_local global i32 0, align 4
@rce_key_init = common dso_local global i32 0, align 4
@rce_key_error = common dso_local global i64 0, align 8
@rce_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_createerr* @__rpc_createerr() #0 {
  %1 = alloca %struct.rpc_createerr*, align 8
  %2 = alloca %struct.rpc_createerr*, align 8
  store %struct.rpc_createerr* null, %struct.rpc_createerr** %2, align 8
  %3 = call i64 (...) @thr_main()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.rpc_createerr* @rpc_createerr, %struct.rpc_createerr** %1, align 8
  br label %37

6:                                                ; preds = %0
  %7 = load i32, i32* @rce_key_init, align 4
  %8 = call i64 @thr_once(i32* @rce_once, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @rce_key_error, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %6
  store %struct.rpc_createerr* @rpc_createerr, %struct.rpc_createerr** %1, align 8
  br label %37

14:                                               ; preds = %10
  %15 = load i32, i32* @rce_key, align 4
  %16 = call i64 @thr_getspecific(i32 %15)
  %17 = inttoptr i64 %16 to %struct.rpc_createerr*
  store %struct.rpc_createerr* %17, %struct.rpc_createerr** %2, align 8
  %18 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %19 = icmp ne %struct.rpc_createerr* %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = call i64 @malloc(i32 4)
  %22 = inttoptr i64 %21 to %struct.rpc_createerr*
  store %struct.rpc_createerr* %22, %struct.rpc_createerr** %2, align 8
  %23 = load i32, i32* @rce_key, align 4
  %24 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %25 = bitcast %struct.rpc_createerr* %24 to i8*
  %26 = call i64 @thr_setspecific(i32 %23, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %30 = call i32 @free(%struct.rpc_createerr* %29)
  store %struct.rpc_createerr* @rpc_createerr, %struct.rpc_createerr** %1, align 8
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  %33 = call i32 @memset(%struct.rpc_createerr* %32, i32 0, i32 4)
  %34 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  store %struct.rpc_createerr* %34, %struct.rpc_createerr** %1, align 8
  br label %37

35:                                               ; preds = %14
  %36 = load %struct.rpc_createerr*, %struct.rpc_createerr** %2, align 8
  store %struct.rpc_createerr* %36, %struct.rpc_createerr** %1, align 8
  br label %37

37:                                               ; preds = %35, %31, %28, %13, %5
  %38 = load %struct.rpc_createerr*, %struct.rpc_createerr** %1, align 8
  ret %struct.rpc_createerr* %38
}

declare dso_local i64 @thr_main(...) #1

declare dso_local i64 @thr_once(i32*, i32) #1

declare dso_local i64 @thr_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @thr_setspecific(i32, i8*) #1

declare dso_local i32 @free(%struct.rpc_createerr*) #1

declare dso_local i32 @memset(%struct.rpc_createerr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
