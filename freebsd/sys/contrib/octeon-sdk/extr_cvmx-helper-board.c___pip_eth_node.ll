; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___pip_eth_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___pip_eth_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pip\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR: pip path not found in device tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ERROR: pip not found in device tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"interface@%d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"ERROR : pip intf %d not found in device tree \0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ethernet@%x\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"ERROR : pip interface@%d ethernet@%d not found in device tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @__pip_eth_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pip_eth_node(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cvmx_helper_get_interface_num(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cvmx_helper_get_interface_index_num(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @fdt_getprop(i8* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @fdt_path_offset(i8* %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %63

34:                                               ; preds = %26
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @snprintf(i8* %35, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %41 = call i32 @fdt_subnode_offset(i8* %38, i32 %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %63

47:                                               ; preds = %34
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @snprintf(i8* %48, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %54 = call i32 @fdt_subnode_offset(i8* %51, i32 %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %58, i32 %59)
  store i32 -1, i32* %4, align 4
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %57, %44, %32, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fdt_subnode_offset(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
