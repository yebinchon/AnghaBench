; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sigver.c_EVP_DigestSign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sigver.c_EVP_DigestSign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestSign(%struct.TYPE_10__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)**
  %19 = load i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)**
  %29 = load i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 %29(%struct.TYPE_10__* %30, i8* %31, i64* %32, i8* %33, i64 %34)
  store i32 %35, i32* %6, align 4
  br label %51

36:                                               ; preds = %5
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @EVP_DigestSignUpdate(%struct.TYPE_10__* %40, i8* %41, i64 %42)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %51

46:                                               ; preds = %39, %36
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @EVP_DigestSignFinal(%struct.TYPE_10__* %47, i8* %48, i64* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %45, %21
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @EVP_DigestSignUpdate(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @EVP_DigestSignFinal(%struct.TYPE_10__*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
