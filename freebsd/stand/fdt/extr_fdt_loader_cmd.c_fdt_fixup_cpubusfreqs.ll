; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup_cpubusfreqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup_cpubusfreqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdt_fixup_cpubusfreqs(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @fdtp, align 4
  %12 = call i32 @fdt_path_offset(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %21, %16
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @fdtp, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @fdt_next_node(i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  br label %18

25:                                               ; preds = %18
  %26 = load i32, i32* @fdtp, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fdt_node_offset_by_prop_value(i32 %26, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @fdtp, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fdt_node_offset_by_prop_value(i32 %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32 4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MIN(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %58, %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %72

47:                                               ; preds = %45
  %48 = load i32, i32* @fdtp, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @fdt_node_offset_by_prop_value(i32 %48, i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 4)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @fdtp, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @fdt_node_offset_by_prop_value(i32 %51, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32 4)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %72

58:                                               ; preds = %47
  %59 = load i32, i32* @fdtp, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* %3, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @fdt_setprop_inplace_cell(i32 %59, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @fdtp, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i64, i64* %4, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @fdt_setprop_inplace_cell(i32 %64, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @MIN(i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %35

72:                                               ; preds = %15, %57, %45
  ret void
}

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local i32 @fdt_next_node(i32, i32, i32*) #1

declare dso_local i32 @fdt_node_offset_by_prop_value(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fdt_setprop_inplace_cell(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
