; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_open_symbol_file_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_open_symbol_file_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_map_offsets = type { i64, i32 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@symfile_objfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Attempt to reload symbols from process? \00", align 1
@debug_base = common dso_local global i32 0, align 4
@SO_NAME_MAX_PATH_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to read exec filename from attached file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_symbol_file_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_symbol_file_object(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.link_map_offsets*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = call %struct.link_map_offsets* (...) @SVR4_FETCH_LINK_MAP_OFFSETS()
  store %struct.link_map_offsets* %15, %struct.link_map_offsets** %9, align 8
  %16 = load %struct.link_map_offsets*, %struct.link_map_offsets** %9, align 8
  %17 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @xmalloc(i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @xfree, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call %struct.cleanup* @make_cleanup(i32 %20, i8* %21)
  store %struct.cleanup* %22, %struct.cleanup** %11, align 8
  %23 = load i64, i64* @symfile_objfile, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = call i32 @query(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %77

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %1
  %31 = call i32 (...) @locate_base()
  store i32 %31, i32* @debug_base, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %30
  %35 = call i64 (...) @first_link_map_member()
  store i64 %35, i64* %4, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %77

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.link_map_offsets*, %struct.link_map_offsets** %9, align 8
  %41 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.link_map_offsets*, %struct.link_map_offsets** %9, align 8
  %46 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @read_memory(i64 %43, i8* %44, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.link_map_offsets*, %struct.link_map_offsets** %9, align 8
  %51 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @extract_unsigned_integer(i8* %49, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %55 = call i32 @do_cleanups(%struct.cleanup* %54)
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %77

59:                                               ; preds = %38
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @SO_NAME_MAX_PATH_SIZE, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @target_read_string(i64 %60, i8** %6, i64 %62, i32* %7)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @safe_strerror(i32 %67)
  %69 = call i32 @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %2, align 4
  br label %77

70:                                               ; preds = %59
  %71 = load i32, i32* @xfree, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call %struct.cleanup* @make_cleanup(i32 %71, i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @symbol_file_add_main(i8* %74, i32 %75)
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %66, %58, %37, %33, %28
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.link_map_offsets* @SVR4_FETCH_LINK_MAP_OFFSETS(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @query(i8*) #1

declare dso_local i32 @locate_base(...) #1

declare dso_local i64 @first_link_map_member(...) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @target_read_string(i64, i8**, i64, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @symbol_file_add_main(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
