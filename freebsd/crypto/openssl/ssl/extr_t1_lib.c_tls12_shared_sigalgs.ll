; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_shared_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_shared_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_SECOP_SIGALG_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i64*, i64, i64*, i64)* @tls12_shared_sigalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tls12_shared_sigalgs(i32* %0, i32** %1, i64* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %15, align 8
  %19 = load i64*, i64** %9, align 8
  store i64* %19, i64** %13, align 8
  br label %20

20:                                               ; preds = %63, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load i64*, i64** %13, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @tls1_lookup_sigalg(i64 %26)
  store i32* %27, i32** %18, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @SSL_SECOP_SIGALG_SHARED, align 4
  %30 = load i32*, i32** %18, align 8
  %31 = call i32 @tls12_sigalg_allowed(i32* %28, i32 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %63

34:                                               ; preds = %24
  store i64 0, i64* %16, align 8
  %35 = load i64*, i64** %11, align 8
  store i64* %35, i64** %14, align 8
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i64*, i64** %13, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i64, i64* %17, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %17, align 8
  %49 = load i32**, i32*** %8, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %18, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 1
  store i32** %54, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %62

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %16, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %14, align 8
  br label %36

62:                                               ; preds = %55, %36
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i64, i64* %15, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %15, align 8
  %66 = load i64*, i64** %13, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %13, align 8
  br label %20

68:                                               ; preds = %20
  %69 = load i64, i64* %17, align 8
  ret i64 %69
}

declare dso_local i32* @tls1_lookup_sigalg(i64) #1

declare dso_local i32 @tls12_sigalg_allowed(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
