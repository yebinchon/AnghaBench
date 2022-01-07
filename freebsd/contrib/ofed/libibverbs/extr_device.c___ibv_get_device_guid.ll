; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_device_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_device_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"node_guid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%hx:%hx:%hx:%hx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_get_device_guid(%struct.ibv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_device*, align 8
  %4 = alloca [24 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.ibv_device* %0, %struct.ibv_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ibv_device*, %struct.ibv_device** %3, align 8
  %9 = getelementptr inbounds %struct.ibv_device, %struct.ibv_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %12 = call i64 @ibv_read_sysfs_file(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11, i32 24)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %17, i32* %19, i32* %21, i32* %23)
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %45

27:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @htobe64(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %26, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @ibv_read_sysfs_file(i32, i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
