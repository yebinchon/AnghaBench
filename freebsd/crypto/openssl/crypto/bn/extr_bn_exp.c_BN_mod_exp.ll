; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32*, i32 }

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %14 = call i32 @bn_check_top(%struct.TYPE_24__* %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %16 = call i32 @bn_check_top(%struct.TYPE_24__* %15)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %18 = call i32 @bn_check_top(%struct.TYPE_24__* %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %20 = call i64 @BN_is_odd(%struct.TYPE_24__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %5
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %34 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %35 = call i64 @BN_get_flags(%struct.TYPE_24__* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %39 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %40 = call i64 @BN_get_flags(%struct.TYPE_24__* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %44 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %45 = call i64 @BN_get_flags(%struct.TYPE_24__* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @BN_mod_exp_mont_word(%struct.TYPE_24__* %53, i32 %54, %struct.TYPE_24__* %55, %struct.TYPE_24__* %56, i32* %57, i32* null)
  store i32 %58, i32* %11, align 4
  br label %66

59:                                               ; preds = %42, %37, %32, %27, %22
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @BN_mod_exp_mont(%struct.TYPE_24__* %60, %struct.TYPE_24__* %61, %struct.TYPE_24__* %62, %struct.TYPE_24__* %63, i32* %64, i32* null)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %59, %47
  br label %74

67:                                               ; preds = %5
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @BN_mod_exp_recp(%struct.TYPE_24__* %68, %struct.TYPE_24__* %69, %struct.TYPE_24__* %70, %struct.TYPE_24__* %71, i32* %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %66
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = call i32 @bn_check_top(%struct.TYPE_24__* %75)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @bn_check_top(%struct.TYPE_24__*) #1

declare dso_local i64 @BN_is_odd(%struct.TYPE_24__*) #1

declare dso_local i64 @BN_get_flags(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @BN_mod_exp_mont_word(%struct.TYPE_24__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_recp(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
