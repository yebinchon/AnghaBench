; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_handle_unload_dll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_handle_unload_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.so_stuff = type { i64, i64, %struct.so_stuff* }

@current_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@solib_start = common dso_local global %struct.so_stuff zeroinitializer, align 8
@solib_end = common dso_local global %struct.so_stuff* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Error: dll starting at 0x%lx not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @handle_unload_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_unload_dll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.so_stuff*, align 8
  %6 = alloca %struct.so_stuff*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = add nsw i64 %7, 4096
  store i64 %8, i64* %4, align 8
  store %struct.so_stuff* @solib_start, %struct.so_stuff** %5, align 8
  br label %9

9:                                                ; preds = %51, %1
  %10 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %11 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %10, i32 0, i32 2
  %12 = load %struct.so_stuff*, %struct.so_stuff** %11, align 8
  %13 = icmp ne %struct.so_stuff* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %16 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %15, i32 0, i32 2
  %17 = load %struct.so_stuff*, %struct.so_stuff** %16, align 8
  %18 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %24 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %23, i32 0, i32 2
  %25 = load %struct.so_stuff*, %struct.so_stuff** %24, align 8
  store %struct.so_stuff* %25, %struct.so_stuff** %6, align 8
  %26 = load %struct.so_stuff*, %struct.so_stuff** %6, align 8
  %27 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %26, i32 0, i32 2
  %28 = load %struct.so_stuff*, %struct.so_stuff** %27, align 8
  %29 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %30 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %29, i32 0, i32 2
  store %struct.so_stuff* %28, %struct.so_stuff** %30, align 8
  %31 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %32 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %31, i32 0, i32 2
  %33 = load %struct.so_stuff*, %struct.so_stuff** %32, align 8
  %34 = icmp ne %struct.so_stuff* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  store %struct.so_stuff* %36, %struct.so_stuff** @solib_end, align 8
  br label %37

37:                                               ; preds = %35, %22
  %38 = load %struct.so_stuff*, %struct.so_stuff** %6, align 8
  %39 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.so_stuff*, %struct.so_stuff** %6, align 8
  %44 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @free_objfile(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.so_stuff*, %struct.so_stuff** %6, align 8
  %49 = call i32 @xfree(%struct.so_stuff* %48)
  store i32 1, i32* %2, align 4
  br label %58

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.so_stuff*, %struct.so_stuff** %5, align 8
  %53 = getelementptr inbounds %struct.so_stuff, %struct.so_stuff* %52, i32 0, i32 2
  %54 = load %struct.so_stuff*, %struct.so_stuff** %53, align 8
  store %struct.so_stuff* %54, %struct.so_stuff** %5, align 8
  br label %9

55:                                               ; preds = %9
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @free_objfile(i64) #1

declare dso_local i32 @xfree(%struct.so_stuff*) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
