; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_findmodule.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_findmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.kernel_module*, %struct.preloaded_file* }
%struct.kernel_module = type { i32, i32, %struct.kernel_module* }
%struct.mod_depend = type { i32, i32, i32 }

@preloaded_files = common dso_local global %struct.preloaded_file* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernel_module* @file_findmodule(%struct.preloaded_file* %0, i8* %1, %struct.mod_depend* %2) #0 {
  %4 = alloca %struct.kernel_module*, align 8
  %5 = alloca %struct.preloaded_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mod_depend*, align 8
  %8 = alloca %struct.kernel_module*, align 8
  %9 = alloca %struct.kernel_module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.preloaded_file* %0, %struct.preloaded_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mod_depend* %2, %struct.mod_depend** %7, align 8
  %12 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %13 = icmp eq %struct.preloaded_file* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  store %struct.preloaded_file* %15, %struct.preloaded_file** %5, align 8
  br label %16

16:                                               ; preds = %29, %14
  %17 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %18 = icmp ne %struct.preloaded_file* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.mod_depend*, %struct.mod_depend** %7, align 8
  %23 = call %struct.kernel_module* @file_findmodule(%struct.preloaded_file* %20, i8* %21, %struct.mod_depend* %22)
  store %struct.kernel_module* %23, %struct.kernel_module** %8, align 8
  %24 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  %25 = icmp ne %struct.kernel_module* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  store %struct.kernel_module* %27, %struct.kernel_module** %4, align 8
  br label %91

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %31 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %30, i32 0, i32 1
  %32 = load %struct.preloaded_file*, %struct.preloaded_file** %31, align 8
  store %struct.preloaded_file* %32, %struct.preloaded_file** %5, align 8
  br label %16

33:                                               ; preds = %16
  store %struct.kernel_module* null, %struct.kernel_module** %4, align 8
  br label %91

34:                                               ; preds = %3
  store %struct.kernel_module* null, %struct.kernel_module** %9, align 8
  store i32 0, i32* %10, align 4
  %35 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %36 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %35, i32 0, i32 0
  %37 = load %struct.kernel_module*, %struct.kernel_module** %36, align 8
  store %struct.kernel_module* %37, %struct.kernel_module** %8, align 8
  br label %38

38:                                               ; preds = %85, %34
  %39 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  %40 = icmp ne %struct.kernel_module* %39, null
  br i1 %40, label %41, label %89

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  %44 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strcmp(i8* %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %41
  %49 = load %struct.mod_depend*, %struct.mod_depend** %7, align 8
  %50 = icmp eq %struct.mod_depend* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  store %struct.kernel_module* %52, %struct.kernel_module** %4, align 8
  br label %91

53:                                               ; preds = %48
  %54 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  %55 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.mod_depend*, %struct.mod_depend** %7, align 8
  %59 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  store %struct.kernel_module* %63, %struct.kernel_module** %4, align 8
  br label %91

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.mod_depend*, %struct.mod_depend** %7, align 8
  %67 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.mod_depend*, %struct.mod_depend** %7, align 8
  %73 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  store %struct.kernel_module* %81, %struct.kernel_module** %9, align 8
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %76, %70, %64
  br label %84

84:                                               ; preds = %83, %41
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.kernel_module*, %struct.kernel_module** %8, align 8
  %87 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %86, i32 0, i32 2
  %88 = load %struct.kernel_module*, %struct.kernel_module** %87, align 8
  store %struct.kernel_module* %88, %struct.kernel_module** %8, align 8
  br label %38

89:                                               ; preds = %38
  %90 = load %struct.kernel_module*, %struct.kernel_module** %9, align 8
  store %struct.kernel_module* %90, %struct.kernel_module** %4, align 8
  br label %91

91:                                               ; preds = %89, %62, %51, %33, %26
  %92 = load %struct.kernel_module*, %struct.kernel_module** %4, align 8
  ret %struct.kernel_module* %92
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
