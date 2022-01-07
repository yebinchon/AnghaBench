; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@mh = common dso_local global i32* null, align 8
@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_mem_debug_free(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %43 [
    i32 0, label %12
    i32 1, label %42
  ]

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %43

16:                                               ; preds = %12
  %17 = call i32 (...) @mem_check_on()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32*, i32** @mh, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %24 = call i32 @CRYPTO_mem_ctrl(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32*, i32** @mh, align 8
  %28 = call %struct.TYPE_5__* @lh_MEM_delete(i32* %27, %struct.TYPE_5__* %9)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @app_info_free(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = call i32 @OPENSSL_free(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %40 = call i32 @CRYPTO_mem_ctrl(i32 %39)
  br label %41

41:                                               ; preds = %38, %19, %16
  br label %43

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %4, %42, %41, %15
  ret void
}

declare dso_local i32 @mem_check_on(...) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local %struct.TYPE_5__* @lh_MEM_delete(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @app_info_free(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
