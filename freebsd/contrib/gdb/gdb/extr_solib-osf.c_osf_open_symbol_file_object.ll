; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_open_symbol_file_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_open_symbol_file_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_map_ctxt = type { i32 }
%struct.so_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@symfile_objfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Attempt to reload symbols from process? \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @osf_open_symbol_file_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osf_open_symbol_file_object(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.read_map_ctxt, align 4
  %5 = alloca %struct.so_list, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i64, i64* @symfile_objfile, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 @query(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %1
  %15 = call i32 @open_map(%struct.read_map_ctxt* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

18:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = call i32 @read_map(%struct.read_map_ctxt* %4, %struct.so_list* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.so_list, %struct.so_list* %5, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = call i32 @osf_free_so(%struct.so_list* %5)
  br label %19

36:                                               ; preds = %26, %19
  %37 = call i32 @close_map(%struct.read_map_ctxt* %4)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.so_list, %struct.so_list* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @symbol_file_add_main(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %17, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @query(i8*) #1

declare dso_local i32 @open_map(%struct.read_map_ctxt*) #1

declare dso_local i32 @read_map(%struct.read_map_ctxt*, %struct.so_list*) #1

declare dso_local i32 @osf_free_so(%struct.so_list*) #1

declare dso_local i32 @close_map(%struct.read_map_ctxt*) #1

declare dso_local i32 @symbol_file_add_main(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
