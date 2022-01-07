; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_from_shortsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sc25519.c_crypto_sign_ed25519_ref_sc25519_from_shortsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc25519_from_shortsc(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %16, i64* %22, align 8
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 16, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %27

41:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
