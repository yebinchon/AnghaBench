; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_find_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_inferiors.c_find_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { %struct.inferior_list_entry* }
%struct.inferior_list = type { %struct.inferior_list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inferior_list_entry* @find_inferior(%struct.inferior_list* %0, i32 (%struct.inferior_list_entry*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.inferior_list_entry*, align 8
  %5 = alloca %struct.inferior_list*, align 8
  %6 = alloca i32 (%struct.inferior_list_entry*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inferior_list_entry*, align 8
  store %struct.inferior_list* %0, %struct.inferior_list** %5, align 8
  store i32 (%struct.inferior_list_entry*, i8*)* %1, i32 (%struct.inferior_list_entry*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.inferior_list*, %struct.inferior_list** %5, align 8
  %10 = getelementptr inbounds %struct.inferior_list, %struct.inferior_list* %9, i32 0, i32 0
  %11 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %10, align 8
  store %struct.inferior_list_entry* %11, %struct.inferior_list_entry** %8, align 8
  br label %12

12:                                               ; preds = %23, %3
  %13 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %8, align 8
  %14 = icmp ne %struct.inferior_list_entry* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32 (%struct.inferior_list_entry*, i8*)*, i32 (%struct.inferior_list_entry*, i8*)** %6, align 8
  %17 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 %16(%struct.inferior_list_entry* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %8, align 8
  store %struct.inferior_list_entry* %22, %struct.inferior_list_entry** %4, align 8
  br label %28

23:                                               ; preds = %15
  %24 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %8, align 8
  %25 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %24, i32 0, i32 0
  %26 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %25, align 8
  store %struct.inferior_list_entry* %26, %struct.inferior_list_entry** %8, align 8
  br label %12

27:                                               ; preds = %12
  store %struct.inferior_list_entry* null, %struct.inferior_list_entry** %4, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  ret %struct.inferior_list_entry* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
