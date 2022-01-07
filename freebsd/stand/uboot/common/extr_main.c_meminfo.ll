; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_meminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_info = type { i32 }

@MR_ATTR_DRAM = common dso_local global i32 0, align 4
@MR_ATTR_FLASH = common dso_local global i32 0, align 4
@MR_ATTR_SRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not retrieve system info\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: %juMB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @meminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meminfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sys_info*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @MR_ATTR_DRAM, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @MR_ATTR_FLASH, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @MR_ATTR_SRAM, align 4
  store i32 %10, i32* %9, align 4
  %11 = call %struct.sys_info* (...) @ub_get_sys_info()
  store %struct.sys_info* %11, %struct.sys_info** %2, align 8
  %12 = icmp eq %struct.sys_info* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memsize(%struct.sys_info* %20, i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @ub_mem_type(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = sdiv i32 %34, 1024
  %36 = sdiv i32 %35, 1024
  %37 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %36)
  br label %38

38:                                               ; preds = %28, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %16

42:                                               ; preds = %16
  ret void
}

declare dso_local %struct.sys_info* @ub_get_sys_info(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memsize(%struct.sys_info*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @ub_mem_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
