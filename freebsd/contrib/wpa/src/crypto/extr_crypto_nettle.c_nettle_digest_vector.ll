; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_nettle_digest_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_nettle_digest_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nettle_hash = type { i32, i32, i32 (i8*, i32, i32*)*, i32 (i8*, i64, i32*)*, i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nettle_hash*, i64, i32**, i64*, i32*)* @nettle_digest_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nettle_digest_vector(%struct.nettle_hash* %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nettle_hash*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.nettle_hash* %0, %struct.nettle_hash** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i64 (...) @TEST_FAIL()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %67

17:                                               ; preds = %5
  %18 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %19 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @os_malloc(i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %67

25:                                               ; preds = %17
  %26 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %27 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %26, i32 0, i32 4
  %28 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 %28(i8* %29)
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %49, %25
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %37 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %36, i32 0, i32 3
  %38 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %37, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32**, i32*** %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 %38(i8* %39, i64 %43, i32* %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %54 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %53, i32 0, i32 2
  %55 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %58 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 %55(i8* %56, i32 %59, i32* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.nettle_hash*, %struct.nettle_hash** %7, align 8
  %64 = getelementptr inbounds %struct.nettle_hash, %struct.nettle_hash* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bin_clear_free(i8* %62, i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %52, %24, %16
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @bin_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
