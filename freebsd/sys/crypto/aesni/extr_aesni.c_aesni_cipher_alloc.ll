; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i32, i32 }
%struct.cryptop = type { i32, i32 }

@M_AESNI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cryptodesc*, %struct.cryptop*, i32*)* @aesni_cipher_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @aesni_cipher_alloc(%struct.cryptodesc* %0, %struct.cryptop* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cryptodesc* %0, %struct.cryptodesc** %5, align 8
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %10 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %13 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %16 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %19 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @crypto_contiguous_subsegment(i32 %11, i32 %14, i32 %17, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %4, align 8
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_AESNI, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call i32* @malloc(i32 %30, i32 %31, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  store i32 1, i32* %37, align 4
  %38 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %39 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %42 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %45 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %48 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @crypto_copydata(i32 %40, i32 %43, i32 %46, i32 %49, i32* %50)
  br label %54

52:                                               ; preds = %27
  %53 = load i32*, i32** %7, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %36
  %55 = load i32*, i32** %8, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32* @crypto_contiguous_subsegment(i32, i32, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
