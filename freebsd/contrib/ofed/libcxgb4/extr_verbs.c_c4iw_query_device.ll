; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_device_attr = type { i32 }
%struct.ibv_query_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_query_device(%struct.ibv_context* %0, %struct.ibv_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_device_attr*, align 8
  %6 = alloca %struct.ibv_query_device, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_device_attr* %1, %struct.ibv_device_attr** %5, align 8
  %13 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %14 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %5, align 8
  %15 = call i32 @ibv_cmd_query_device(%struct.ibv_context* %13, %struct.ibv_device_attr* %14, i32* %7, %struct.ibv_query_device* %6, i32 4)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 24
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %20, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ibv_cmd_query_device(%struct.ibv_context*, %struct.ibv_device_attr*, i32*, %struct.ibv_query_device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
