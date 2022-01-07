; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_sharedlibrary_info_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_sharedlibrary_info_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.so_list*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@so_list_head = common dso_local global %struct.so_list* null, align 8
@exec_bfd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"No executable file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"No shared libraries loaded at this time.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Shared Object Libraries\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"    %-12s%-12s%-12s%-12s%-12s%-12s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  flags\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  tstart\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"   tend\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"  dstart\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"   dend\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"   dlt\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"  (symbols not loaded)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"    %-12s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"08l\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%-12s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%-12s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @som_sharedlibrary_info_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @som_sharedlibrary_info_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %7, %struct.so_list** %5, align 8
  %8 = load i32*, i32** @exec_bfd, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

12:                                               ; preds = %2
  %13 = load %struct.so_list*, %struct.so_list** %5, align 8
  %14 = icmp eq %struct.so_list* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %91

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %20

20:                                               ; preds = %53, %17
  %21 = load %struct.so_list*, %struct.so_list** %5, align 8
  %22 = icmp ne %struct.so_list* %21, null
  br i1 %22, label %23, label %91

23:                                               ; preds = %20
  %24 = load %struct.so_list*, %struct.so_list** %5, align 8
  %25 = getelementptr inbounds %struct.so_list, %struct.so_list* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 24
  store i32 %28, i32* %6, align 4
  %29 = load %struct.so_list*, %struct.so_list** %5, align 8
  %30 = getelementptr inbounds %struct.so_list, %struct.so_list* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.so_list*, %struct.so_list** %5, align 8
  %37 = getelementptr inbounds %struct.so_list, %struct.so_list* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.so_list*, %struct.so_list** %5, align 8
  %43 = getelementptr inbounds %struct.so_list, %struct.so_list* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  %47 = load %struct.so_list*, %struct.so_list** %5, align 8
  %48 = getelementptr inbounds %struct.so_list, %struct.so_list* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %23
  %54 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @local_hex_string_custom(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %56)
  %58 = load %struct.so_list*, %struct.so_list** %5, align 8
  %59 = getelementptr inbounds %struct.so_list, %struct.so_list* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @local_hex_string_custom(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %62)
  %64 = load %struct.so_list*, %struct.so_list** %5, align 8
  %65 = getelementptr inbounds %struct.so_list, %struct.so_list* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @local_hex_string_custom(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %68)
  %70 = load %struct.so_list*, %struct.so_list** %5, align 8
  %71 = getelementptr inbounds %struct.so_list, %struct.so_list* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @local_hex_string_custom(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %74)
  %76 = load %struct.so_list*, %struct.so_list** %5, align 8
  %77 = getelementptr inbounds %struct.so_list, %struct.so_list* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @local_hex_string_custom(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %80)
  %82 = load %struct.so_list*, %struct.so_list** %5, align 8
  %83 = getelementptr inbounds %struct.so_list, %struct.so_list* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @local_hex_string_custom(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %86)
  %88 = load %struct.so_list*, %struct.so_list** %5, align 8
  %89 = getelementptr inbounds %struct.so_list, %struct.so_list* %88, i32 0, i32 0
  %90 = load %struct.so_list*, %struct.so_list** %89, align 8
  store %struct.so_list* %90, %struct.so_list** %5, align 8
  br label %20

91:                                               ; preds = %10, %15, %20
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @local_hex_string_custom(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
