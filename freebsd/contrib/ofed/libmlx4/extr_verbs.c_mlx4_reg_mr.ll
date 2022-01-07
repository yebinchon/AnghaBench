; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_reg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mr = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.ibv_reg_mr = type { i32 }
%struct.ibv_reg_mr_resp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_mr* @mlx4_reg_mr(%struct.ibv_pd* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_mr*, align 8
  %6 = alloca %struct.ibv_pd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_mr*, align 8
  %11 = alloca %struct.ibv_reg_mr, align 4
  %12 = alloca %struct.ibv_reg_mr_resp, align 4
  %13 = alloca i32, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call %struct.ibv_mr* @malloc(i32 4)
  store %struct.ibv_mr* %14, %struct.ibv_mr** %10, align 8
  %15 = load %struct.ibv_mr*, %struct.ibv_mr** %10, align 8
  %16 = icmp ne %struct.ibv_mr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.ibv_mr* null, %struct.ibv_mr** %5, align 8
  br label %34

18:                                               ; preds = %4
  %19 = load %struct.ibv_pd*, %struct.ibv_pd** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ibv_mr*, %struct.ibv_mr** %10, align 8
  %26 = call i32 @ibv_cmd_reg_mr(%struct.ibv_pd* %19, i8* %20, i64 %21, i64 %23, i32 %24, %struct.ibv_mr* %25, %struct.ibv_reg_mr* %11, i32 4, %struct.ibv_reg_mr_resp* %12, i32 4)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.ibv_mr*, %struct.ibv_mr** %10, align 8
  %31 = call i32 @free(%struct.ibv_mr* %30)
  store %struct.ibv_mr* null, %struct.ibv_mr** %5, align 8
  br label %34

32:                                               ; preds = %18
  %33 = load %struct.ibv_mr*, %struct.ibv_mr** %10, align 8
  store %struct.ibv_mr* %33, %struct.ibv_mr** %5, align 8
  br label %34

34:                                               ; preds = %32, %29, %17
  %35 = load %struct.ibv_mr*, %struct.ibv_mr** %5, align 8
  ret %struct.ibv_mr* %35
}

declare dso_local %struct.ibv_mr* @malloc(i32) #1

declare dso_local i32 @ibv_cmd_reg_mr(%struct.ibv_pd*, i8*, i64, i64, i32, %struct.ibv_mr*, %struct.ibv_reg_mr*, i32, %struct.ibv_reg_mr_resp*, i32) #1

declare dso_local i32 @free(%struct.ibv_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
