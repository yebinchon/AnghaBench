; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_scalarmult_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_scalarmult_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ge25519_scalarmult_base(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [85 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [85 x i8], [85 x i8]* %5, i64 0, i64 0
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @sc25519_window3(i8* %8, i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = bitcast %struct.TYPE_4__* %11 to i32*
  %13 = getelementptr inbounds [85 x i8], [85 x i8]* %5, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = call i32 @choose_t(i32* %12, i64 0, i8 signext %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = call i32 @fe25519_setone(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @fe25519_mul(i32* %20, i32* %22, i32* %24)
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 85
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [85 x i8], [85 x i8]* %5, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @choose_t(i32* %7, i64 %31, i8 signext %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = call i32 @ge25519_mixadd2(%struct.TYPE_4__* %37, i32* %7)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26

42:                                               ; preds = %26
  ret void
}

declare dso_local i32 @sc25519_window3(i8*, i32*) #1

declare dso_local i32 @choose_t(i32*, i64, i8 signext) #1

declare dso_local i32 @fe25519_setone(i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @ge25519_mixadd2(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
