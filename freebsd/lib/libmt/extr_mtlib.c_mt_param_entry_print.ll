; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_entry_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_status_entry = type { i64, i8*, i8*, i8*, i32* }
%struct.mt_print_params = type { i32 }

@MT_TYPE_NODE = common dso_local global i64 0, align 8
@MT_PF_FULL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MT_PF_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_param_entry_print(%struct.mt_status_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.mt_status_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mt_print_params*, align 8
  store %struct.mt_status_entry* %0, %struct.mt_status_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mt_print_params*
  store %struct.mt_print_params* %7, %struct.mt_print_params** %5, align 8
  %8 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %9 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MT_TYPE_NODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.mt_print_params*, %struct.mt_print_params** %5, align 8
  %16 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MT_PF_FULL_PATH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %23 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %28 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.mt_print_params*, %struct.mt_print_params** %5, align 8
  %31 = call i32 @mt_param_parent_print(i32* %29, %struct.mt_print_params* %30)
  br label %32

32:                                               ; preds = %26, %21, %14
  %33 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %34 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %37 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38)
  %40 = load %struct.mt_print_params*, %struct.mt_print_params** %5, align 8
  %41 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MT_PF_VERBOSE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %32
  %47 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %48 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %53 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %59 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %51, %46, %32
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %13
  ret void
}

declare dso_local i32 @mt_param_parent_print(i32*, %struct.mt_print_params*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
