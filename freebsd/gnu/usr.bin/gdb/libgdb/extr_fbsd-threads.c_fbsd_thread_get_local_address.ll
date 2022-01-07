; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_get_local_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_get_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i8* }

@OBJF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Cannot find shared library `%s' link_map in dynamic linker's module list\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Cannot find executable file `%s' link_map in dynamic linker's module list\00", align 1
@thread_agent = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Cannot find thread-local storage for thread %ld, shared library %s:\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Cannot find thread-local storage for thread %ld, executable file %s:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbsd_thread_get_local_address(i32 %0, %struct.objfile* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.objfile* %1, %struct.objfile** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.objfile*, %struct.objfile** %6, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OBJF_SHARED, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @IS_THREAD(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %3
  %23 = load %struct.objfile*, %struct.objfile** %6, align 8
  %24 = call i32 @svr4_fetch_objfile_link_map(%struct.objfile* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.objfile*, %struct.objfile** %6, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.objfile*, %struct.objfile** %6, align 8
  %37 = getelementptr inbounds %struct.objfile, %struct.objfile* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* @thread_agent, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @GET_THREAD(i32 %43)
  %45 = call i32 @td_ta_map_id2thr_p(i32 %42, i64 %44, i32* %8)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @store_typed_address(i8** %11, i32 %46, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @td_thr_tls_get_addr_p(i32* %8, i8* %49, i32 %50, i8** %9)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @TD_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %41
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @GET_THREAD(i32 %59)
  %61 = load %struct.objfile*, %struct.objfile** %6, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @thread_db_err_str(i32 %64)
  %66 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %60, i8* %63, i32 %65)
  br label %76

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @GET_THREAD(i32 %68)
  %70 = load %struct.objfile*, %struct.objfile** %6, align 8
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @thread_db_err_str(i32 %73)
  %75 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %69, i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %67, %58
  br label %77

77:                                               ; preds = %76, %41
  %78 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %79 = call i32 @extract_typed_address(i8** %9, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @IS_THREAD(i32) #1

declare dso_local i32 @svr4_fetch_objfile_link_map(%struct.objfile*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @td_ta_map_id2thr_p(i32, i64, i32*) #1

declare dso_local i64 @GET_THREAD(i32) #1

declare dso_local i32 @store_typed_address(i8**, i32, i32) #1

declare dso_local i32 @td_thr_tls_get_addr_p(i32*, i8*, i32, i8**) #1

declare dso_local i32 @thread_db_err_str(i32) #1

declare dso_local i32 @extract_typed_address(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
