; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32* }

@devices = common dso_local global %struct.device_info* null, align 8
@UB_MAX_DEV = common dso_local global i32 0, align 4
@API_DEV_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_dev_enum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_info*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @UB_MAX_DEV, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = call i32 @memset(%struct.device_info** @devices, i32 0, i32 %7)
  %9 = load %struct.device_info*, %struct.device_info** @devices, align 8
  %10 = getelementptr inbounds %struct.device_info, %struct.device_info* %9, i64 0
  store %struct.device_info* %10, %struct.device_info** %2, align 8
  %11 = load i32, i32* @API_DEV_ENUM, align 4
  %12 = load %struct.device_info*, %struct.device_info** %2, align 8
  %13 = call i32 @syscall(i32 %11, i32* null, %struct.device_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %48

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %45, %16
  %18 = load %struct.device_info*, %struct.device_info** %2, align 8
  %19 = getelementptr inbounds %struct.device_info, %struct.device_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @UB_MAX_DEV, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.device_info*, %struct.device_info** %2, align 8
  %30 = getelementptr inbounds %struct.device_info, %struct.device_info* %29, i32 1
  store %struct.device_info* %30, %struct.device_info** %2, align 8
  %31 = load %struct.device_info*, %struct.device_info** @devices, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.device_info, %struct.device_info* %31, i64 %34
  %36 = getelementptr inbounds %struct.device_info, %struct.device_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.device_info*, %struct.device_info** %2, align 8
  %39 = getelementptr inbounds %struct.device_info, %struct.device_info* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* @API_DEV_ENUM, align 4
  %41 = load %struct.device_info*, %struct.device_info** %2, align 8
  %42 = call i32 @syscall(i32 %40, i32* null, %struct.device_info* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %48

45:                                               ; preds = %28
  br label %17

46:                                               ; preds = %27, %17
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %44, %15
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.device_info**, i32, i32) #1

declare dso_local i32 @syscall(i32, i32*, %struct.device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
