; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_setup_fdtp.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_setup_fdtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"fdt_setup_fdtp()\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Using DTB from loaded file '%s'.\0A\00", align 1
@fdt_to_load = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Using DTB from memory address %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Using DTB compiled into kernel.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"No device tree blob found!\0A\00", align 1
@command_errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_setup_fdtp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @debugf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.preloaded_file* %5, %struct.preloaded_file** %2, align 8
  %6 = icmp ne %struct.preloaded_file* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %9 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @fdt_load_dtb(i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %15 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = call i32 (...) @fdt_platform_load_overlays()
  store i32 0, i32* %1, align 4
  br label %48

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32*, i32** @fdt_to_load, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32*, i32** @fdt_to_load, align 8
  %25 = call i64 @fdt_load_dtb_addr(i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** @fdt_to_load, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  %30 = call i32 (...) @fdt_platform_load_overlays()
  store i32 0, i32* %1, align 4
  br label %48

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = call i64 (...) @fdt_platform_load_dtb()
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @fdt_platform_load_overlays()
  store i32 0, i32* %1, align 4
  br label %48

37:                                               ; preds = %32
  %38 = call i32 (...) @fdt_find_static_dtb()
  store i32 %38, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @fdt_load_dtb(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %48

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** @command_errmsg, align 8
  store i32 1, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %44, %35, %27, %13
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @debugf(i8*) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i64 @fdt_load_dtb(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fdt_platform_load_overlays(...) #1

declare dso_local i64 @fdt_load_dtb_addr(i32*) #1

declare dso_local i64 @fdt_platform_load_dtb(...) #1

declare dso_local i32 @fdt_find_static_dtb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
