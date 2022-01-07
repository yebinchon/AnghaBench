; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_compare_dbg_hang.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_compare_dbg_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@dcu_chain_state = common dso_local global i32 0, align 4
@dcu_complete_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i64, i32, i64, i32, i32*)* @ar9300_compare_dbg_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_compare_dbg_hang(%struct.ath_hal* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.ath_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %1, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %2, i32* %16, align 4
  %17 = bitcast %struct.TYPE_5__* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = bitcast %struct.TYPE_6__* %9 to i64*
  store i64 %3, i64* %19, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @dcu_chain_state, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = mul nsw i32 5, %31
  %33 = ashr i32 %30, %32
  %34 = and i32 %33, 31
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @dcu_chain_state, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %25

48:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 5, %55
  %57 = ashr i32 %54, %56
  %58 = and i32 %57, 31
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i32, i32* @dcu_chain_state, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 6
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %6
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @dcu_complete_state, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @dcu_complete_state, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %14, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
