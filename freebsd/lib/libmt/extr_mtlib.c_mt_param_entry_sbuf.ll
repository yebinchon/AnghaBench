; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_entry_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_entry_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mt_status_entry = type { i64, i32*, i32, i32, i32* }
%struct.mt_print_params = type { i32 }

@MT_TYPE_NODE = common dso_local global i64 0, align 8
@MT_PF_FULL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MT_PF_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_param_entry_sbuf(%struct.sbuf* %0, %struct.mt_status_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mt_status_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mt_print_params*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mt_status_entry* %1, %struct.mt_status_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.mt_print_params*
  store %struct.mt_print_params* %9, %struct.mt_print_params** %7, align 8
  %10 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %11 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MT_TYPE_NODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %70

16:                                               ; preds = %3
  %17 = load %struct.mt_print_params*, %struct.mt_print_params** %7, align 8
  %18 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MT_PF_FULL_PATH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %30 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %31 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.mt_print_params*, %struct.mt_print_params** %7, align 8
  %34 = call i32 @mt_param_parent_sbuf(%struct.sbuf* %29, i32* %32, %struct.mt_print_params* %33)
  br label %35

35:                                               ; preds = %28, %23, %16
  %36 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %37 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %38 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %41 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.mt_print_params*, %struct.mt_print_params** %7, align 8
  %45 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MT_PF_VERBOSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %35
  %51 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %52 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %57 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @strlen(i32* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %63 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %64 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %61, %55, %50, %35
  %68 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %69 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %15
  ret void
}

declare dso_local i32 @mt_param_parent_sbuf(%struct.sbuf*, i32*, %struct.mt_print_params*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
