; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_good_xy_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_good_xy_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, %struct.t_switch**** }
%struct.t_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @good_xy_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @good_xy_ring(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t_switch****, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.torus*, %struct.torus** %5, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 2
  %15 = load %struct.t_switch****, %struct.t_switch***** %14, align 8
  store %struct.t_switch**** %15, %struct.t_switch***** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %42, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.torus*, %struct.torus** %5, align 8
  %19 = getelementptr inbounds %struct.torus, %struct.torus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %28, i64 %30
  %32 = load %struct.t_switch***, %struct.t_switch**** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %32, i64 %34
  %36 = load %struct.t_switch**, %struct.t_switch*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %36, i64 %38
  %40 = load %struct.t_switch*, %struct.t_switch** %39, align 8
  %41 = ptrtoint %struct.t_switch* %40 to i32
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %16

45:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.torus*, %struct.torus** %5, align 8
  %49 = getelementptr inbounds %struct.torus, %struct.torus* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i1 [ false, %46 ], [ %54, %52 ]
  br i1 %56, label %57, label %75

57:                                               ; preds = %55
  %58 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %58, i64 %60
  %62 = load %struct.t_switch***, %struct.t_switch**** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %62, i64 %64
  %66 = load %struct.t_switch**, %struct.t_switch*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %66, i64 %68
  %70 = load %struct.t_switch*, %struct.t_switch** %69, align 8
  %71 = ptrtoint %struct.t_switch* %70 to i32
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %46

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
