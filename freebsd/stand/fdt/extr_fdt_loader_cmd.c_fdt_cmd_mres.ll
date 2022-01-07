; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_cmd_mres.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_cmd_mres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Reserved memory regions:\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"reg#%d: (start: 0x%jx, size: 0x%jx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No reserved memory regions\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @fdt_cmd_mres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_cmd_mres(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = call i32 (...) @pager_open()
  %11 = load i32, i32* @fdtp, align 4
  %12 = call i32 @fdt_num_mem_rsv(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = call i64 @pager_output(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %45

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* @fdtp, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fdt_get_mem_rsv(i32 %25, i32 %26, i32* %5, i32* %6)
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %34 = call i64 @pager_output(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %45

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %20

41:                                               ; preds = %20
  br label %44

42:                                               ; preds = %2
  %43 = call i64 @pager_output(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44, %36, %18
  %46 = call i32 (...) @pager_close()
  %47 = load i32, i32* @CMD_OK, align 4
  ret i32 %47
}

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @fdt_num_mem_rsv(i32) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @fdt_get_mem_rsv(i32, i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @pager_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
