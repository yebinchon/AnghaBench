; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_device_list.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_device_list.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"    %-16s\09   node GUID\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"    %-16s\09----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"------\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"    %-16s\09%016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ibv_device**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call %struct.ibv_device** @ibv_get_device_list(i32* %7)
  store %struct.ibv_device** %9, %struct.ibv_device*** %6, align 8
  %10 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %11 = icmp ne %struct.ibv_device** %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %22, i64 %24
  %26 = load %struct.ibv_device*, %struct.ibv_device** %25, align 8
  %27 = call i8* @ibv_get_device_name(%struct.ibv_device* %26)
  %28 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %28, i64 %30
  %32 = load %struct.ibv_device*, %struct.ibv_device** %31, align 8
  %33 = call i32 @ibv_get_device_guid(%struct.ibv_device* %32)
  %34 = call i64 @be64toh(i32 %33)
  %35 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %27, i64 %34)
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %41 = call i32 @ibv_free_device_list(%struct.ibv_device** %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ibv_get_device_name(%struct.ibv_device*) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @ibv_get_device_guid(%struct.ibv_device*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
