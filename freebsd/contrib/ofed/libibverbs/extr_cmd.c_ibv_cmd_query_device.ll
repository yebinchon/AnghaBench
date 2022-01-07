; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_device_attr = type { i32 }
%struct.ibv_query_device = type { i32 }
%struct.ibv_query_device_resp = type { i32 }

@QUERY_DEVICE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_query_device(%struct.ibv_context* %0, %struct.ibv_device_attr* %1, i32* %2, %struct.ibv_query_device* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_context*, align 8
  %8 = alloca %struct.ibv_device_attr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ibv_query_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibv_query_device_resp, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %7, align 8
  store %struct.ibv_device_attr* %1, %struct.ibv_device_attr** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ibv_query_device* %3, %struct.ibv_query_device** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.ibv_query_device*, %struct.ibv_query_device** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i32, i32* @QUERY_DEVICE, align 4
  %16 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_device* %13, i64 %14, i32 %15, %struct.ibv_query_device_resp* %12, i32 4)
  %17 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %18 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ibv_query_device*, %struct.ibv_query_device** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @write(i32 %19, %struct.ibv_query_device* %20, i64 %21)
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %5
  %28 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_device_resp* %12, i32 4)
  %29 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %8, align 8
  %30 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @copy_query_dev_fields(%struct.ibv_device_attr* %33, %struct.ibv_query_device_resp* %12, i32* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_device*, i64, i32, %struct.ibv_query_device_resp*, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_query_device*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_device_resp*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @copy_query_dev_fields(%struct.ibv_device_attr*, %struct.ibv_query_device_resp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
