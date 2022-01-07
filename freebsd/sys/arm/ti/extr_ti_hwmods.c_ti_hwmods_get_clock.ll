; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_hwmods.c_ti_hwmods_get_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_hwmods.c_ti_hwmods_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwmod = type { i32, i32* }

@INVALID_CLK_IDENT = common dso_local global i32 0, align 4
@ti_hwmods = common dso_local global %struct.hwmod* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"WARNING: more than one ti,hwmod \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_hwmods_get_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwmod*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @INVALID_CLK_IDENT, align 4
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ti_get_hwmods_prop(i32 %17, i8** %7)
  store i32 %18, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @INVALID_CLK_IDENT, align 4
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @INVALID_CLK_IDENT, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %56, %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @INVALID_CLK_IDENT, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %67

34:                                               ; preds = %32
  %35 = load %struct.hwmod*, %struct.hwmod** @ti_hwmods, align 8
  store %struct.hwmod* %35, %struct.hwmod** %10, align 8
  br label %36

36:                                               ; preds = %53, %34
  %37 = load %struct.hwmod*, %struct.hwmod** %10, align 8
  %38 = getelementptr inbounds %struct.hwmod, %struct.hwmod* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.hwmod*, %struct.hwmod** %10, align 8
  %43 = getelementptr inbounds %struct.hwmod, %struct.hwmod* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i32* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.hwmod*, %struct.hwmod** %10, align 8
  %50 = getelementptr inbounds %struct.hwmod, %struct.hwmod* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.hwmod*, %struct.hwmod** %10, align 8
  %55 = getelementptr inbounds %struct.hwmod, %struct.hwmod* %54, i32 1
  store %struct.hwmod* %55, %struct.hwmod** %10, align 8
  br label %36

56:                                               ; preds = %48, %36
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %25

67:                                               ; preds = %32
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @OF_prop_free(i8* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %20, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ti_get_hwmods_prop(i32, i8**) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
