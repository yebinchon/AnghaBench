; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_i_validate_nvpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_i_validate_nvpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @i_validate_nvpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_validate_nvpair(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @NVP_TYPE(%struct.TYPE_8__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i64 @i_validate_nvpair_name(%struct.TYPE_8__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EFAULT, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i32 @NVP_NELEM(%struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @NVP_VALUE(%struct.TYPE_8__* %18)
  %20 = call i64 @i_validate_nvpair_value(i32 %15, i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @NVP_VALUE(%struct.TYPE_8__* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i32 @NVP_NELEM(%struct.TYPE_8__* %28)
  %30 = call i32 @i_get_value_size(i32 %25, i32 %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @NVP_VALOFF(%struct.TYPE_8__* %34)
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @NV_ALIGN(i32 %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %24
  %45 = load i32, i32* @EFAULT, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %22, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @NVP_TYPE(%struct.TYPE_8__*) #1

declare dso_local i64 @i_validate_nvpair_name(%struct.TYPE_8__*) #1

declare dso_local i64 @i_validate_nvpair_value(i32, i32, i32) #1

declare dso_local i32 @NVP_NELEM(%struct.TYPE_8__*) #1

declare dso_local i32 @NVP_VALUE(%struct.TYPE_8__*) #1

declare dso_local i32 @i_get_value_size(i32, i32, i32) #1

declare dso_local i32 @NVP_VALOFF(%struct.TYPE_8__*) #1

declare dso_local i32 @NV_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
