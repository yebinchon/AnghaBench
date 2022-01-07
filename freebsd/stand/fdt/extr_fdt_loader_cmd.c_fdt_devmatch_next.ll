; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_devmatch_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_devmatch_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8* }

@fdt_devmatch_next.depth = internal global i32 0, align 4
@fdtp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Can't find dtb\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_devmatch_next(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fdt_property*, align 8
  %7 = alloca %struct.fdt_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32*, i32** @fdtp, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (...) @fdt_setup_fdtp()
  %14 = call i32 (...) @fdt_apply_overlays()
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %93

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %15
  %27 = load i32*, i32** @fdtp, align 8
  %28 = call i32 @fdt_path_offset(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %93

33:                                               ; preds = %26
  store i32 0, i32* @fdt_devmatch_next.depth, align 4
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %60, %77
  store %struct.fdt_property* null, %struct.fdt_property** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* @fdt_devmatch_next.depth, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32*, i32** @fdtp, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.fdt_property* @fdt_get_property(i32* %42, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store %struct.fdt_property* %44, %struct.fdt_property** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.fdt_property*, %struct.fdt_property** %7, align 8
  %49 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32*, i32** @fdtp, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @fdt_next_node(i32* %54, i32 %55, i32* @fdt_devmatch_next.depth)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i8* null, i8** %3, align 8
  br label %93

60:                                               ; preds = %53
  br label %35

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32*, i32** @fdtp, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.fdt_property* @fdt_get_property(i32* %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store %struct.fdt_property* %65, %struct.fdt_property** %6, align 8
  br label %66

66:                                               ; preds = %62, %38, %35
  %67 = load %struct.fdt_property*, %struct.fdt_property** %6, align 8
  %68 = icmp ne %struct.fdt_property* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %78

70:                                               ; preds = %66
  %71 = load i32*, i32** @fdtp, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @fdt_next_node(i32* %71, i32 %72, i32* @fdt_devmatch_next.depth)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %93

77:                                               ; preds = %70
  br label %35

78:                                               ; preds = %69
  %79 = load i32*, i32** @fdtp, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @fdt_next_node(i32* %79, i32 %80, i32* @fdt_devmatch_next.depth)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %4, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.fdt_property*, %struct.fdt_property** %6, align 8
  %90 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %3, align 8
  br label %93

92:                                               ; preds = %78
  store i8* null, i8** %3, align 8
  br label %93

93:                                               ; preds = %92, %86, %76, %59, %31, %24
  %94 = load i8*, i8** %3, align 8
  ret i8* %94
}

declare dso_local i32 @fdt_setup_fdtp(...) #1

declare dso_local i32 @fdt_apply_overlays(...) #1

declare dso_local i32 @fdt_path_offset(i32*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property(i32*, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fdt_next_node(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
