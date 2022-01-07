; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cm_pmeth.c_pkey_cmac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i8*)* @pkey_cmac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_cmac_ctrl(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %65 [
    i32 128, label %15
    i32 130, label %30
    i32 129, label %40
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  store i32 0, i32* %5, align 4
  br label %67

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @CMAC_Init(i32* %23, i8* %24, i32 %25, i8* null, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %67

29:                                               ; preds = %22
  br label %66

30:                                               ; preds = %4
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @CMAC_Init(i32* %31, i8* null, i32 0, i8* %32, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %67

39:                                               ; preds = %30
  br label %66

40:                                               ; preds = %4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @CMAC_CTX_copy(i32* %48, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %67

59:                                               ; preds = %45, %40
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @CMAC_Init(i32* %60, i8* null, i32 0, i8* null, i32* null)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %67

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %67

66:                                               ; preds = %64, %39, %29
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65, %63, %58, %38, %28, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @CMAC_Init(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @CMAC_CTX_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
