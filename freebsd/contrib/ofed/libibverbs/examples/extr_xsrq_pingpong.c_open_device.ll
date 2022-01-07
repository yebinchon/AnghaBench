; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_open_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ibv_device = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"IB device %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get context for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ibv_device**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %6, %struct.ibv_device*** %4, align 8
  %7 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %8 = icmp ne %struct.ibv_device** %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %35, %15
  %17 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %17, i64 %19
  %21 = load %struct.ibv_device*, %struct.ibv_device** %20, align 8
  %22 = icmp ne %struct.ibv_device* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %24, i64 %26
  %28 = load %struct.ibv_device*, %struct.ibv_device** %27, align 8
  %29 = call i8* @ibv_get_device_name(%struct.ibv_device* %28)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %16

38:                                               ; preds = %33, %16
  br label %39

39:                                               ; preds = %38, %12
  %40 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %40, i64 %42
  %44 = load %struct.ibv_device*, %struct.ibv_device** %43, align 8
  %45 = icmp ne %struct.ibv_device* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %52 ]
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 -1, i32* %2, align 4
  br label %77

56:                                               ; preds = %39
  %57 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %57, i64 %59
  %61 = load %struct.ibv_device*, %struct.ibv_device** %60, align 8
  %62 = call i32 @ibv_open_device(%struct.ibv_device* %61)
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @stderr, align 4
  %67 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %67, i64 %69
  %71 = load %struct.ibv_device*, %struct.ibv_device** %70, align 8
  %72 = call i8* @ibv_get_device_name(%struct.ibv_device* %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 -1, i32* %2, align 4
  br label %77

74:                                               ; preds = %56
  %75 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %76 = call i32 @ibv_free_device_list(%struct.ibv_device** %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %65, %53, %9
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @ibv_get_device_name(%struct.ibv_device*) #1

declare dso_local i32 @ibv_open_device(%struct.ibv_device*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
