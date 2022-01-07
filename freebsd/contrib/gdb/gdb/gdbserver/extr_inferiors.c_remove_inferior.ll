; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_remove_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_remove_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list = type { %struct.inferior_list_entry*, %struct.inferior_list_entry* }
%struct.inferior_list_entry = type { %struct.inferior_list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_inferior(%struct.inferior_list* %0, %struct.inferior_list_entry* %1) #0 {
  %3 = alloca %struct.inferior_list*, align 8
  %4 = alloca %struct.inferior_list_entry*, align 8
  %5 = alloca %struct.inferior_list_entry**, align 8
  store %struct.inferior_list* %0, %struct.inferior_list** %3, align 8
  store %struct.inferior_list_entry* %1, %struct.inferior_list_entry** %4, align 8
  %6 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %7 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %6, i32 0, i32 1
  %8 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %7, align 8
  %9 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %10 = icmp eq %struct.inferior_list_entry* %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %13 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %12, i32 0, i32 0
  %14 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %13, align 8
  %15 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %16 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %15, i32 0, i32 1
  store %struct.inferior_list_entry* %14, %struct.inferior_list_entry** %16, align 8
  %17 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %18 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %17, i32 0, i32 0
  %19 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %18, align 8
  %20 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %21 = icmp eq %struct.inferior_list_entry* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %24 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %23, i32 0, i32 1
  %25 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %24, align 8
  %26 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %27 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %26, i32 0, i32 0
  store %struct.inferior_list_entry* %25, %struct.inferior_list_entry** %27, align 8
  br label %28

28:                                               ; preds = %22, %11
  br label %71

29:                                               ; preds = %2
  %30 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %31 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %30, i32 0, i32 1
  store %struct.inferior_list_entry** %31, %struct.inferior_list_entry*** %5, align 8
  br label %32

32:                                               ; preds = %45, %29
  %33 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %34 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %33, align 8
  %35 = icmp ne %struct.inferior_list_entry* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %38 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %37, align 8
  %39 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %38, i32 0, i32 0
  %40 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %39, align 8
  %41 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %42 = icmp ne %struct.inferior_list_entry* %40, %41
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi i1 [ false, %32 ], [ %42, %36 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %47 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %46, align 8
  %48 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %47, i32 0, i32 0
  store %struct.inferior_list_entry** %48, %struct.inferior_list_entry*** %5, align 8
  br label %32

49:                                               ; preds = %43
  %50 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %51 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %50, align 8
  %52 = icmp eq %struct.inferior_list_entry* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %71

54:                                               ; preds = %49
  %55 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %56 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %55, i32 0, i32 0
  %57 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %56, align 8
  %58 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %59 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %58, align 8
  %60 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %59, i32 0, i32 0
  store %struct.inferior_list_entry* %57, %struct.inferior_list_entry** %60, align 8
  %61 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %62 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %61, i32 0, i32 0
  %63 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %62, align 8
  %64 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %65 = icmp eq %struct.inferior_list_entry* %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.inferior_list_entry**, %struct.inferior_list_entry*** %5, align 8
  %68 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %67, align 8
  %69 = load %struct.inferior_list*, %struct.inferior_list** %3, align 8
  %70 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %69, i32 0, i32 0
  store %struct.inferior_list_entry* %68, %struct.inferior_list_entry** %70, align 8
  br label %71

71:                                               ; preds = %28, %53, %66, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
