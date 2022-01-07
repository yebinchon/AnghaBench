; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_device_attr = type { i32 }
%struct.ibv_query_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%d.%d.%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_query_device(%struct.ibv_context* %0, %struct.ibv_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_device_attr*, align 8
  %6 = alloca %struct.ibv_query_device, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_device_attr* %1, %struct.ibv_device_attr** %5, align 8
  %12 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %13 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %5, align 8
  %14 = call i32 @ibv_cmd_query_device(%struct.ibv_context* %12, %struct.ibv_device_attr* %13, i32* %7, %struct.ibv_query_device* %6, i32 4)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 32
  %22 = and i32 %21, 65535
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 65535
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 65535
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ibv_cmd_query_device(%struct.ibv_context*, %struct.ibv_device_attr*, i32*, %struct.ibv_query_device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
