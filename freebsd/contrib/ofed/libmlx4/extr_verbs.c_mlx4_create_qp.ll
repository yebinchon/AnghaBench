; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.ibv_qp_init_attr = type { %struct.ibv_pd*, i32 }
%struct.ibv_qp_init_attr_ex = type { %struct.ibv_pd*, i32 }

@IBV_QP_INIT_ATTR_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_qp* @mlx4_create_qp(%struct.ibv_pd* %0, %struct.ibv_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_pd*, align 8
  %4 = alloca %struct.ibv_qp_init_attr*, align 8
  %5 = alloca %struct.ibv_qp_init_attr_ex, align 8
  %6 = alloca %struct.ibv_qp*, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %3, align 8
  store %struct.ibv_qp_init_attr* %1, %struct.ibv_qp_init_attr** %4, align 8
  %7 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %8 = bitcast %struct.ibv_qp_init_attr* %7 to %struct.ibv_qp_init_attr_ex*
  %9 = call i32 @memcpy(%struct.ibv_qp_init_attr_ex* %5, %struct.ibv_qp_init_attr_ex* %8, i32 16)
  %10 = load i32, i32* @IBV_QP_INIT_ATTR_PD, align 4
  %11 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %13 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %5, i32 0, i32 0
  store %struct.ibv_pd* %12, %struct.ibv_pd** %13, align 8
  %14 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %15 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ibv_qp* @mlx4_create_qp_ex(i32 %16, %struct.ibv_qp_init_attr_ex* %5)
  store %struct.ibv_qp* %17, %struct.ibv_qp** %6, align 8
  %18 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %19 = icmp ne %struct.ibv_qp* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %22 = bitcast %struct.ibv_qp_init_attr* %21 to %struct.ibv_qp_init_attr_ex*
  %23 = call i32 @memcpy(%struct.ibv_qp_init_attr_ex* %22, %struct.ibv_qp_init_attr_ex* %5, i32 16)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  ret %struct.ibv_qp* %25
}

declare dso_local i32 @memcpy(%struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex*, i32) #1

declare dso_local %struct.ibv_qp* @mlx4_create_qp_ex(i32, %struct.ibv_qp_init_attr_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
