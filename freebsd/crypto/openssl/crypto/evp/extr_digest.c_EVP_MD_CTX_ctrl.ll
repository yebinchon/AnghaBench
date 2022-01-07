; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_MD_CTX_ctrl(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_6__*, i32, i32, i8*)**
  %21 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_6__*, i32, i32, i8*)* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_6__*, i32, i32, i8*)**
  %29 = load i32 (%struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i32, i8*)** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 %29(%struct.TYPE_6__* %30, i32 %31, i32 %32, i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %40

38:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %40

39:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %38, %37
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
