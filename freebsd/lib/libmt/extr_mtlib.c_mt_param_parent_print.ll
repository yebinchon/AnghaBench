; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_parent_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_parent_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_status_entry = type { i8*, %struct.mt_status_entry* }
%struct.mt_print_params = type { i32, i32 }

@MT_PF_INCLUDE_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_param_parent_print(%struct.mt_status_entry* %0, %struct.mt_print_params* %1) #0 {
  %3 = alloca %struct.mt_status_entry*, align 8
  %4 = alloca %struct.mt_print_params*, align 8
  store %struct.mt_status_entry* %0, %struct.mt_status_entry** %3, align 8
  store %struct.mt_print_params* %1, %struct.mt_print_params** %4, align 8
  %5 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %6 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %5, i32 0, i32 1
  %7 = load %struct.mt_status_entry*, %struct.mt_status_entry** %6, align 8
  %8 = icmp ne %struct.mt_status_entry* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %11 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %10, i32 0, i32 1
  %12 = load %struct.mt_status_entry*, %struct.mt_status_entry** %11, align 8
  %13 = load %struct.mt_print_params*, %struct.mt_print_params** %4, align 8
  call void @mt_param_parent_print(%struct.mt_status_entry* %12, %struct.mt_print_params* %13)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.mt_print_params*, %struct.mt_print_params** %4, align 8
  %16 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MT_PF_INCLUDE_ROOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %23 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.mt_print_params*, %struct.mt_print_params** %4, align 8
  %26 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %36

31:                                               ; preds = %21, %14
  %32 = load %struct.mt_status_entry*, %struct.mt_status_entry** %3, align 8
  %33 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %30
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
