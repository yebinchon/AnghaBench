; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, %struct.netif_driver* }
%struct.netif_driver = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@netif_select.best_if = internal global %struct.netif zeroinitializer, align 8
@netif_drivers = common dso_local global %struct.netif_driver** null, align 8
@netif_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netif* @netif_select(i8* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netif_driver*, align 8
  %9 = alloca %struct.netif, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %10, align 4
  store %struct.netif_driver* null, %struct.netif_driver** getelementptr inbounds (%struct.netif, %struct.netif* @netif_select.best_if, i32 0, i32 2), align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %82, %1
  %13 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %13, i64 %15
  %17 = load %struct.netif_driver*, %struct.netif_driver** %16, align 8
  %18 = icmp ne %struct.netif_driver* %17, null
  br i1 %18, label %19, label %85

19:                                               ; preds = %12
  %20 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %20, i64 %22
  %24 = load %struct.netif_driver*, %struct.netif_driver** %23, align 8
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 2
  store %struct.netif_driver* %24, %struct.netif_driver** %25, align 8
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 2
  %27 = load %struct.netif_driver*, %struct.netif_driver** %26, align 8
  store %struct.netif_driver* %27, %struct.netif_driver** %8, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %78, %19
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.netif_driver*, %struct.netif_driver** %8, align 8
  %31 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %74, %34
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.netif_driver*, %struct.netif_driver** %8, align 8
  %40 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %38, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.netif_driver*, %struct.netif_driver** %8, align 8
  %52 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %74

64:                                               ; preds = %48
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @netif_match(%struct.netif* %9, i8* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %10, align 4
  %72 = bitcast %struct.netif* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.netif* @netif_select.best_if to i8*), i8* align 8 %72, i64 16, i1 false)
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %37

77:                                               ; preds = %37
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %28

81:                                               ; preds = %28
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %12

85:                                               ; preds = %12
  %86 = load %struct.netif_driver*, %struct.netif_driver** getelementptr inbounds (%struct.netif, %struct.netif* @netif_select.best_if, i32 0, i32 2), align 8
  %87 = icmp eq %struct.netif_driver* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store %struct.netif* null, %struct.netif** %2, align 8
  br label %101

89:                                               ; preds = %85
  %90 = load i32, i32* getelementptr inbounds (%struct.netif, %struct.netif* @netif_select.best_if, i32 0, i32 1), align 4
  %91 = shl i32 1, %90
  %92 = load %struct.netif_driver*, %struct.netif_driver** getelementptr inbounds (%struct.netif, %struct.netif* @netif_select.best_if, i32 0, i32 2), align 8
  %93 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.netif, %struct.netif* @netif_select.best_if, i32 0, i32 0), align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %91
  store i32 %100, i32* %98, align 4
  store %struct.netif* @netif_select.best_if, %struct.netif** %2, align 8
  br label %101

101:                                              ; preds = %89, %88
  %102 = load %struct.netif*, %struct.netif** %2, align 8
  ret %struct.netif* %102
}

declare dso_local i32 @netif_match(%struct.netif*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
