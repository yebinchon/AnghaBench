; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@hash = common dso_local global i32* null, align 8
@once = common dso_local global i32 0, align 4
@initialize_lock = common dso_local global i32 0, align 4
@createlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_hash_create(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @REQUIRE(i32 %11)
  %13 = load i32*, i32** @hash, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @INSIST(i32 %15)
  %17 = load i32, i32* @initialize_lock, align 4
  %18 = call i64 @isc_once_do(i32* @once, i32 %17)
  %19 = load i64, i64* @ISC_R_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @RUNTIME_CHECK(i32 %21)
  %23 = call i32 @LOCK(i32* @createlock)
  %24 = load i32*, i32** @hash, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @isc_hash_ctxcreate(i32* %27, i32* %28, i64 %29, i32** @hash)
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = call i32 @UNLOCK(i32* @createlock)
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i64 @isc_once_do(i32*, i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i64 @isc_hash_ctxcreate(i32*, i32*, i64, i32**) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
