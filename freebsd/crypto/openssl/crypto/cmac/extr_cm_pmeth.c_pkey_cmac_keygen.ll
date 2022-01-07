; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_keygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@EVP_PKEY_CMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @pkey_cmac_keygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_cmac_keygen(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32* (...) @CMAC_CTX_new()
  store i32* %8, i32** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @CMAC_CTX_copy(i32* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @CMAC_CTX_free(i32* %21)
  store i32 0, i32* %3, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @EVP_PKEY_CMAC, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @EVP_PKEY_assign(i32* %24, i32 %25, i32* %26)
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @CMAC_CTX_new(...) #1

declare dso_local i32 @CMAC_CTX_copy(i32*, i32*) #1

declare dso_local i32 @CMAC_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_assign(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
