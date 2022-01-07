; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_multiboot_obj_loadfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_multiboot_obj_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i8*, i64, i64 }
%struct.kernel_module = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"elf multiboot kernel\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unable to load %s as a multiboot payload kernel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"kernelname\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to load kernel %s metadata error: %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Unable to load %s as an object file, error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.preloaded_file**)* @multiboot_obj_loadfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiboot_obj_loadfile(i8* %0, i32 %1, %struct.preloaded_file** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.preloaded_file**, align 8
  %8 = alloca %struct.preloaded_file*, align 8
  %9 = alloca %struct.preloaded_file*, align 8
  %10 = alloca %struct.preloaded_file*, align 8
  %11 = alloca %struct.kernel_module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.preloaded_file** %2, %struct.preloaded_file*** %7, align 8
  %14 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.preloaded_file* %14, %struct.preloaded_file** %8, align 8
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %16 = icmp eq %struct.preloaded_file* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EFTYPE, align 4
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.preloaded_file* %20, %struct.preloaded_file** %9, align 8
  %21 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %22 = icmp eq %struct.preloaded_file* %21, null
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.preloaded_file* @file_loadraw(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.preloaded_file* %25, %struct.preloaded_file** %10, align 8
  %26 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %27 = icmp eq %struct.preloaded_file* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 1)
  %35 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %36 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %37 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %40 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @elf64_load_modmetadata(%struct.preloaded_file* %35, i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %48 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %32
  %54 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %55 = call i32 @num_modules(%struct.preloaded_file* %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %57 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i64 @roundup(i64 %58, i32 %59)
  %61 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %62 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @METADATA_RESV_SIZE(i32 %63)
  %65 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %66 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %70 = load %struct.preloaded_file**, %struct.preloaded_file*** %7, align 8
  store %struct.preloaded_file* %69, %struct.preloaded_file** %70, align 8
  br label %84

71:                                               ; preds = %19
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.preloaded_file**, %struct.preloaded_file*** %7, align 8
  %75 = call i32 @elf64_obj_loadfile(i8* %72, i32 %73, %struct.preloaded_file** %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %53
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %78, %46, %28, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local %struct.preloaded_file* @file_loadraw(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @elf64_load_modmetadata(%struct.preloaded_file*, i64) #1

declare dso_local i32 @num_modules(%struct.preloaded_file*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @METADATA_RESV_SIZE(i32) #1

declare dso_local i32 @elf64_obj_loadfile(i8*, i32, %struct.preloaded_file**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
