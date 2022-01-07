; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_sign.c_ECDSA_sign_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_sign.c_ECDSA_sign_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@EC_F_ECDSA_SIGN_EX = common dso_local global i32 0, align 4
@EC_R_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECDSA_sign_ex(i32 %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)**
  %23 = load i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)*, i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)** %22, align 8
  %24 = icmp ne i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)**
  %31 = load i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)*, i32 (i32, i8*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_6__*)** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = call i32 %31(i32 %32, i8* %33, i32 %34, i8* %35, i32* %36, i32* %37, i32* %38, %struct.TYPE_6__* %39)
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %8
  %42 = load i32, i32* @EC_F_ECDSA_SIGN_EX, align 4
  %43 = load i32, i32* @EC_R_OPERATION_NOT_SUPPORTED, align 4
  %44 = call i32 @ECerr(i32 %42, i32 %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %25
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
