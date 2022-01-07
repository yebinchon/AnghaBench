; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_SEARCH_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_SEARCH_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@OSSL_STORE_F_OSSL_STORE_SEARCH_BY_NAME = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@OSSL_STORE_SEARCH_BY_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @OSSL_STORE_SEARCH_by_name(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_4__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_SEARCH_BY_NAME, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @OSSL_STOREerr(i32 %9, i32 %10)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @OSSL_STORE_SEARCH_BY_NAME, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  br label %20

20:                                               ; preds = %12, %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %21
}

declare dso_local %struct.TYPE_4__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
