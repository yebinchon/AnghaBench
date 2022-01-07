; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_parent_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_param_parent_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mt_status_entry = type { i32, %struct.mt_status_entry* }
%struct.mt_print_params = type { i32, i32 }

@MT_PF_INCLUDE_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_param_parent_sbuf(%struct.sbuf* %0, %struct.mt_status_entry* %1, %struct.mt_print_params* %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mt_status_entry*, align 8
  %6 = alloca %struct.mt_print_params*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mt_status_entry* %1, %struct.mt_status_entry** %5, align 8
  store %struct.mt_print_params* %2, %struct.mt_print_params** %6, align 8
  %7 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %8 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %7, i32 0, i32 1
  %9 = load %struct.mt_status_entry*, %struct.mt_status_entry** %8, align 8
  %10 = icmp ne %struct.mt_status_entry* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %13 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %14 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %13, i32 0, i32 1
  %15 = load %struct.mt_status_entry*, %struct.mt_status_entry** %14, align 8
  %16 = load %struct.mt_print_params*, %struct.mt_print_params** %6, align 8
  call void @mt_param_parent_sbuf(%struct.sbuf* %12, %struct.mt_status_entry* %15, %struct.mt_print_params* %16)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.mt_print_params*, %struct.mt_print_params** %6, align 8
  %19 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MT_PF_INCLUDE_ROOT, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %26 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mt_print_params*, %struct.mt_print_params** %6, align 8
  %29 = getelementptr inbounds %struct.mt_print_params, %struct.mt_print_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %40

34:                                               ; preds = %24, %17
  %35 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %36 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %37 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %33
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
