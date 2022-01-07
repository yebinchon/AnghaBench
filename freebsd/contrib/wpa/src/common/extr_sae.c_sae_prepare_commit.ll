; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_prepare_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_prepare_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sae_prepare_commit(i32* %0, i32* %1, i32* %2, i64 %3, i8* %4, %struct.sae_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sae_data*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sae_data* %5, %struct.sae_data** %13, align 8
  %14 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %15 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %6
  %19 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %20 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i64 @sae_derive_pwe_ecc(%struct.sae_data* %26, i32* %27, i32* %28, i32* %29, i64 %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %25, %18
  %35 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @sae_derive_pwe_ffc(%struct.sae_data* %42, i32* %43, i32* %44, i32* %45, i64 %46, i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.sae_data*, %struct.sae_data** %13, align 8
  %52 = call i64 @sae_derive_commit(%struct.sae_data* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %41, %25, %6
  store i32 -1, i32* %7, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @sae_derive_pwe_ecc(%struct.sae_data*, i32*, i32*, i32*, i64, i8*) #1

declare dso_local i64 @sae_derive_pwe_ffc(%struct.sae_data*, i32*, i32*, i32*, i64, i8*) #1

declare dso_local i64 @sae_derive_commit(%struct.sae_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
