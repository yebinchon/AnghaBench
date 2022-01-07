; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistz256.c_ecp_nistz256_pre_comp_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistz256.c_ecp_nistz256_pre_comp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32* }

@EC_F_ECP_NISTZ256_PRE_COMP_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*)* @ecp_nistz256_pre_comp_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ecp_nistz256_pre_comp_new(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %40

8:                                                ; preds = %1
  %9 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @EC_F_ECP_NISTZ256_PRE_COMP_NEW, align 4
  %14 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %2, align 8
  br label %40

17:                                               ; preds = %8
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 6, i32* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* @EC_F_ECP_NISTZ256_PRE_COMP_NEW, align 4
  %34 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %35 = call i32 @ECerr(i32 %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = call i32 @OPENSSL_free(%struct.TYPE_5__* %36)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %40

38:                                               ; preds = %17
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %2, align 8
  br label %40

40:                                               ; preds = %38, %32, %12, %7
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %41
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
