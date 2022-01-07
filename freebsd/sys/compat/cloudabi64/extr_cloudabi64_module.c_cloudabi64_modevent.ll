; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_module.c_cloudabi64_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_module.c_cloudabi64_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@cloudabi64_brand = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@_binary_cloudabi64_vdso_o_start = common dso_local global i32 0, align 4
@_binary_cloudabi64_vdso_o_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to add CloudABI ELF brand handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to remove CloudABI ELF brand handler\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @cloudabi64_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi64_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %34 [
    i32 129, label %9
    i32 128, label %20
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cloudabi64_brand, i32 0, i32 0), align 4
  %11 = load i32, i32* @_binary_cloudabi64_vdso_o_start, align 4
  %12 = load i32, i32* @_binary_cloudabi64_vdso_o_end, align 4
  %13 = call i32 @cloudabi_vdso_init(i32 %10, i32 %11, i32 %12)
  %14 = call i32 @elf64_insert_brand_entry(%struct.TYPE_5__* @cloudabi64_brand)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %36

20:                                               ; preds = %3
  %21 = call i32 @elf64_brand_inuse(%struct.TYPE_5__* @cloudabi64_brand)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %20
  %26 = call i32 @elf64_remove_brand_entry(%struct.TYPE_5__* @cloudabi64_brand)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %25
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cloudabi64_brand, i32 0, i32 0), align 4
  %33 = call i32 @cloudabi_vdso_destroy(i32 %32)
  store i32 0, i32* %4, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31, %28, %23, %19, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @cloudabi_vdso_init(i32, i32, i32) #1

declare dso_local i32 @elf64_insert_brand_entry(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @elf64_brand_inuse(%struct.TYPE_5__*) #1

declare dso_local i32 @elf64_remove_brand_entry(%struct.TYPE_5__*) #1

declare dso_local i32 @cloudabi_vdso_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
