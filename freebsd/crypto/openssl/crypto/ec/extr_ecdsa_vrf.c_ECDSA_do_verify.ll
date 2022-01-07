; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_vrf.c_ECDSA_do_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_vrf.c_ECDSA_do_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@EC_F_ECDSA_DO_VERIFY = common dso_local global i32 0, align 4
@EC_R_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECDSA_do_verify(i8* %0, i32 %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (i8*, i32, i32*, %struct.TYPE_6__*)**
  %15 = load i32 (i8*, i32, i32*, %struct.TYPE_6__*)*, i32 (i8*, i32, i32*, %struct.TYPE_6__*)** %14, align 8
  %16 = icmp ne i32 (i8*, i32, i32*, %struct.TYPE_6__*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (i8*, i32, i32*, %struct.TYPE_6__*)**
  %23 = load i32 (i8*, i32, i32*, %struct.TYPE_6__*)*, i32 (i8*, i32, i32*, %struct.TYPE_6__*)** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = call i32 %23(i8* %24, i32 %25, i32* %26, %struct.TYPE_6__* %27)
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @EC_F_ECDSA_DO_VERIFY, align 4
  %31 = load i32, i32* @EC_R_OPERATION_NOT_SUPPORTED, align 4
  %32 = call i32 @ECerr(i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
