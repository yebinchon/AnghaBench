; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i32, i64 }
%struct.cryptop = type { i32, i64 }
%struct.uio = type { i32, %struct.iovec* }
%struct.iovec = type { i64 }

@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@M_PADLOCK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cryptodesc*, %struct.cryptop*, i32*)* @padlock_cipher_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @padlock_cipher_alloc(%struct.cryptodesc* %0, %struct.cryptop* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.iovec*, align 8
  store %struct.cryptodesc* %0, %struct.cryptodesc** %5, align 8
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %12 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %20 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CRYPTO_F_IOV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %27 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.uio*
  store %struct.uio* %29, %struct.uio** %9, align 8
  %30 = load %struct.uio*, %struct.uio** %9, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %62

35:                                               ; preds = %25
  %36 = load %struct.uio*, %struct.uio** %9, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 1
  %38 = load %struct.iovec*, %struct.iovec** %37, align 8
  store %struct.iovec* %38, %struct.iovec** %10, align 8
  %39 = load %struct.iovec*, %struct.iovec** %10, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %44 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %8, align 8
  br label %53

48:                                               ; preds = %18
  %49 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %50 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %48, %35
  %54 = load i32*, i32** %8, align 8
  %55 = ptrtoint i32* %54 to i64
  %56 = and i64 %55, 15
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %4, align 8
  br label %72

62:                                               ; preds = %58, %34, %17
  %63 = load i32*, i32** %7, align 8
  store i32 1, i32* %63, align 4
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 16
  %68 = load i32, i32* @M_PADLOCK, align 4
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = call i32* @malloc(i64 %67, i32 %68, i32 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  store i32* %71, i32** %4, align 8
  br label %72

72:                                               ; preds = %62, %59
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
