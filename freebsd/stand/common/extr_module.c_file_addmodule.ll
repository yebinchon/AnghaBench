; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_addmodule.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_addmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.kernel_module* }
%struct.kernel_module = type { i32, %struct.kernel_module*, %struct.preloaded_file*, i32* }
%struct.mod_depend = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_addmodule(%struct.preloaded_file* %0, i8* %1, i32 %2, %struct.kernel_module** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.preloaded_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kernel_module**, align 8
  %10 = alloca %struct.kernel_module*, align 8
  %11 = alloca %struct.mod_depend, align 4
  store %struct.preloaded_file* %0, %struct.preloaded_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kernel_module** %3, %struct.kernel_module*** %9, align 8
  %12 = call i32 @bzero(%struct.mod_depend* %11, i32 4)
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.kernel_module* @file_findmodule(%struct.preloaded_file* %15, i8* %16, %struct.mod_depend* %11)
  store %struct.kernel_module* %17, %struct.kernel_module** %10, align 8
  %18 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %19 = icmp ne %struct.kernel_module* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EEXIST, align 4
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = call %struct.kernel_module* @calloc(i32 1, i32 32)
  store %struct.kernel_module* %23, %struct.kernel_module** %10, align 8
  %24 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %25 = icmp eq %struct.kernel_module* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @strdup(i8* %29)
  %31 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %32 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %34 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %39 = call i32 @free(%struct.kernel_module* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %5, align 4
  br label %62

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %44 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.preloaded_file*, %struct.preloaded_file** %6, align 8
  %46 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %47 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %46, i32 0, i32 2
  store %struct.preloaded_file* %45, %struct.preloaded_file** %47, align 8
  %48 = load %struct.preloaded_file*, %struct.preloaded_file** %6, align 8
  %49 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %48, i32 0, i32 0
  %50 = load %struct.kernel_module*, %struct.kernel_module** %49, align 8
  %51 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %52 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %51, i32 0, i32 1
  store %struct.kernel_module* %50, %struct.kernel_module** %52, align 8
  %53 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %54 = load %struct.preloaded_file*, %struct.preloaded_file** %6, align 8
  %55 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %54, i32 0, i32 0
  store %struct.kernel_module* %53, %struct.kernel_module** %55, align 8
  %56 = load %struct.kernel_module**, %struct.kernel_module*** %9, align 8
  %57 = icmp ne %struct.kernel_module** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.kernel_module*, %struct.kernel_module** %10, align 8
  %60 = load %struct.kernel_module**, %struct.kernel_module*** %9, align 8
  store %struct.kernel_module* %59, %struct.kernel_module** %60, align 8
  br label %61

61:                                               ; preds = %58, %41
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %37, %26, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @bzero(%struct.mod_depend*, i32) #1

declare dso_local %struct.kernel_module* @file_findmodule(%struct.preloaded_file*, i8*, %struct.mod_depend*) #1

declare dso_local %struct.kernel_module* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.kernel_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
