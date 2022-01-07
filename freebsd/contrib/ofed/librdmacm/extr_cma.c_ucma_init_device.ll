; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i32, i32*, i8*, i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_port_attr = type { i32 }
%struct.ibv_device_attr = type { i32, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IBV_LINK_LAYER_UNSPECIFIED = common dso_local global i32 0, align 4
@cma_init_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_device*)* @ucma_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_init_device(%struct.cma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cma_device*, align 8
  %4 = alloca %struct.ibv_port_attr, align 4
  %5 = alloca %struct.ibv_device_attr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cma_device* %0, %struct.cma_device** %3, align 8
  %8 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %9 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

13:                                               ; preds = %1
  %14 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %15 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @ucma_open_device(i32 %16)
  %18 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %19 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %21 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @ENODEV, align 4
  %26 = call i32 @ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %120

27:                                               ; preds = %13
  %28 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %29 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ibv_query_device(i32* %30, %struct.ibv_device_attr* %5)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ERR(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %112

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call %struct.TYPE_2__* @malloc(i32 %42)
  %44 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %45 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %44, i32 0, i32 5
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %47 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @ERR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %112

53:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %55, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %54
  %60 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %61 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @ibv_query_port(i32* %62, i32 %63, %struct.ibv_port_attr* %4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32, i32* @IBV_LINK_LAYER_UNSPECIFIED, align 4
  %68 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %69 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 4
  br label %87

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %80 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %76, %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %54

91:                                               ; preds = %54
  %92 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %95 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %99 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %104 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %5, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %109 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @cma_init_cnt, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @cma_init_cnt, align 4
  store i32 0, i32* %2, align 4
  br label %120

112:                                              ; preds = %50, %34
  %113 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %114 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @ibv_close_device(i32* %115)
  %117 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %118 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %112, %91, %24, %12
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32* @ucma_open_device(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ibv_query_device(i32*, %struct.ibv_device_attr*) #1

declare dso_local %struct.TYPE_2__* @malloc(i32) #1

declare dso_local i64 @ibv_query_port(i32*, i32, %struct.ibv_port_attr*) #1

declare dso_local i32 @ibv_close_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
