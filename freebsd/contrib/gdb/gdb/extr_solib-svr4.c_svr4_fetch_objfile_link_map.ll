; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_fetch_objfile_link_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_fetch_objfile_link_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8*, i32 }
%struct.link_map_offsets = type { i32, i32, i32, i64, i32 }
%struct.lm_info = type { i8* }
%struct.cleanup = type { i32 }

@debug_base = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@SO_NAME_MAX_PATH_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"svr4_fetch_objfile_link_map: Can't read pathname for load map: %s\0A\00", align 1
@OBJF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svr4_fetch_objfile_link_map(%struct.objfile* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.link_map_offsets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lm_info, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  %12 = call i32 (...) @locate_base()
  store i32 %12, i32* @debug_base, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %120

15:                                               ; preds = %1
  %16 = call i64 (...) @first_link_map_member()
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %105, %15
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = call %struct.link_map_offsets* (...) @SVR4_FETCH_LINK_MAP_OFFSETS()
  store %struct.link_map_offsets* %21, %struct.link_map_offsets** %5, align 8
  %22 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %23 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @xmalloc(i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* @xfree, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call %struct.cleanup* @make_cleanup(i32 %26, i8* %27)
  store %struct.cleanup* %28, %struct.cleanup** %9, align 8
  %29 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %30 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @xmalloc(i32 %31)
  %33 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %8, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @xfree, align 4
  %35 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct.cleanup* @make_cleanup(i32 %34, i8* %36)
  %38 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %8, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %41 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i8* %39, i32 0, i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %8, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %48 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @read_memory(i64 %44, i8* %46, i32 %49)
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %53 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %58 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @read_memory(i64 %55, i8* %56, i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %63 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @extract_unsigned_integer(i8* %61, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @SO_NAME_MAX_PATH_SIZE, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @target_read_string(i64 %66, i8** %7, i64 %68, i32* %6)
  %70 = load i32, i32* @xfree, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call %struct.cleanup* @make_cleanup(i32 %70, i8* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %20
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @safe_strerror(i32 %76)
  %78 = call i32 @warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %105

79:                                               ; preds = %20
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.objfile*, %struct.objfile** %3, align 8
  %85 = getelementptr inbounds %struct.objfile, %struct.objfile* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %83, i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.objfile*, %struct.objfile** %3, align 8
  %91 = getelementptr inbounds %struct.objfile, %struct.objfile* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @OBJF_SHARED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %82
  %101 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %102 = call i32 @do_cleanups(%struct.cleanup* %101)
  %103 = load i64, i64* %4, align 8
  store i64 %103, i64* %2, align 8
  br label %120

104:                                              ; preds = %96, %89
  br label %105

105:                                              ; preds = %104, %75
  %106 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %8, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %109 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load %struct.link_map_offsets*, %struct.link_map_offsets** %5, align 8
  %114 = getelementptr inbounds %struct.link_map_offsets, %struct.link_map_offsets* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @extract_unsigned_integer(i8* %112, i32 %115)
  store i64 %116, i64* %4, align 8
  %117 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %118 = call i32 @do_cleanups(%struct.cleanup* %117)
  br label %17

119:                                              ; preds = %17
  store i64 0, i64* %2, align 8
  br label %120

120:                                              ; preds = %119, %100, %14
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local i32 @locate_base(...) #1

declare dso_local i64 @first_link_map_member(...) #1

declare dso_local %struct.link_map_offsets* @SVR4_FETCH_LINK_MAP_OFFSETS(...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @target_read_string(i64, i8**, i64, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
