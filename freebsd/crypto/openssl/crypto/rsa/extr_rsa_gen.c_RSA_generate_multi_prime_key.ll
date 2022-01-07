; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_gen.c_RSA_generate_multi_prime_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_gen.c_RSA_generate_multi_prime_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_generate_multi_prime_key(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)**
  %17 = load i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)**
  %25 = load i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32*)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 %25(%struct.TYPE_8__* %26, i32 %27, i32 %28, i32* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %62

32:                                               ; preds = %5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_8__*, i32, i32*, i32*)* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 %47(%struct.TYPE_8__* %48, i32 %49, i32* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %62

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @rsa_builtin_keygen(%struct.TYPE_8__* %56, i32 %57, i32 %58, i32* %59, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %55, %53, %42, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @rsa_builtin_keygen(%struct.TYPE_8__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
