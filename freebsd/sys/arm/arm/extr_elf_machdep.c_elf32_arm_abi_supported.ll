; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_elf_machdep.c_elf32_arm_abi_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_elf_machdep.c_elf32_arm_abi_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EF_ARM_EABI_FREEBSD_MIN = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Attempting to execute non EABI binary (rev %d) image %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @elf32_arm_abi_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_abi_supported(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %5 = load %struct.image_params*, %struct.image_params** %3, align 8
  %6 = getelementptr inbounds %struct.image_params, %struct.image_params* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @EF_ARM_EABI_VERSION(i32 %11)
  %13 = load i64, i64* @EF_ARM_EABI_FREEBSD_MIN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load i64, i64* @bootverbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EF_ARM_EABI_VERSION(i32 %21)
  %23 = load %struct.image_params*, %struct.image_params** %3, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @uprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %27)
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @EF_ARM_EABI_VERSION(i32) #1

declare dso_local i32 @uprintf(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
