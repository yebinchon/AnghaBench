; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32 }
%struct.t_switch = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*, i32*)* @next_hop_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_hop_idx(%struct.torus* %0, i32 %1, %struct.t_switch* %2, %struct.t_switch* %3, i32* %4) #0 {
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t_switch*, align 8
  %9 = alloca %struct.t_switch*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.t_switch* %2, %struct.t_switch** %8, align 8
  store %struct.t_switch* %3, %struct.t_switch** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %48 [
    i32 0, label %15
    i32 1, label %26
    i32 2, label %37
  ]

15:                                               ; preds = %5
  %16 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %17 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %20 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.torus*, %struct.torus** %6, align 8
  %23 = getelementptr inbounds %struct.torus, %struct.torus* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ring_dir_idx(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  br label %49

26:                                               ; preds = %5
  %27 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %28 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %31 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.torus*, %struct.torus** %6, align 8
  %34 = getelementptr inbounds %struct.torus, %struct.torus* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ring_dir_idx(i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %49

37:                                               ; preds = %5
  %38 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %39 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %42 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.torus*, %struct.torus** %6, align 8
  %45 = getelementptr inbounds %struct.torus, %struct.torus* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ring_dir_idx(i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %49

48:                                               ; preds = %5
  br label %78

49:                                               ; preds = %37, %26, %15
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %50, 2
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %12, align 4
  br label %63

62:                                               ; preds = %57
  br label %78

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %66 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %74, %62, %48
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @ring_dir_idx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
