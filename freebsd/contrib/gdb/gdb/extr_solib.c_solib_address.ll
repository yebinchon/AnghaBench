; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, %struct.section_table*, %struct.section_table*, %struct.so_list* }
%struct.section_table = type { i64, i64 }

@so_list_head = common dso_local global %struct.so_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @solib_address(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.so_list*, align 8
  %5 = alloca %struct.section_table*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.so_list* null, %struct.so_list** %4, align 8
  %6 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %6, %struct.so_list** %4, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load %struct.so_list*, %struct.so_list** %4, align 8
  %9 = icmp ne %struct.so_list* %8, null
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load %struct.so_list*, %struct.so_list** %4, align 8
  %12 = getelementptr inbounds %struct.so_list, %struct.so_list* %11, i32 0, i32 2
  %13 = load %struct.section_table*, %struct.section_table** %12, align 8
  store %struct.section_table* %13, %struct.section_table** %5, align 8
  br label %14

14:                                               ; preds = %37, %10
  %15 = load %struct.section_table*, %struct.section_table** %5, align 8
  %16 = load %struct.so_list*, %struct.so_list** %4, align 8
  %17 = getelementptr inbounds %struct.so_list, %struct.so_list* %16, i32 0, i32 1
  %18 = load %struct.section_table*, %struct.section_table** %17, align 8
  %19 = icmp ult %struct.section_table* %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.section_table*, %struct.section_table** %5, align 8
  %22 = getelementptr inbounds %struct.section_table, %struct.section_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.section_table*, %struct.section_table** %5, align 8
  %29 = getelementptr inbounds %struct.section_table, %struct.section_table* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.so_list*, %struct.so_list** %4, align 8
  %34 = getelementptr inbounds %struct.so_list, %struct.so_list* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %2, align 8
  br label %46

36:                                               ; preds = %26, %20
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.section_table*, %struct.section_table** %5, align 8
  %39 = getelementptr inbounds %struct.section_table, %struct.section_table* %38, i32 1
  store %struct.section_table* %39, %struct.section_table** %5, align 8
  br label %14

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.so_list*, %struct.so_list** %4, align 8
  %43 = getelementptr inbounds %struct.so_list, %struct.so_list* %42, i32 0, i32 3
  %44 = load %struct.so_list*, %struct.so_list** %43, align 8
  store %struct.so_list* %44, %struct.so_list** %4, align 8
  br label %7

45:                                               ; preds = %7
  store i8* null, i8** %2, align 8
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
