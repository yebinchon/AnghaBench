; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_map_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib.c_solib_map_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.section_table*, %struct.section_table*, %struct.section_table*, i32, i32* }
%struct.section_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@gnutarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not open `%s' as an executable file: %s\00", align 1
@SO_NAME_MAX_PATH_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"Full path name length of shared library exceeds SO_NAME_MAX_PATH_SIZE in so_list structure.\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\22%s\22: not in executable format: %s.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't find the file sections in `%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @solib_map_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solib_map_sections(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.section_table*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.so_list*
  store %struct.so_list* %11, %struct.so_list** %3, align 8
  %12 = load %struct.so_list*, %struct.so_list** %3, align 8
  %13 = getelementptr inbounds %struct.so_list, %struct.so_list* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @tilde_expand(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* @xfree, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.cleanup* @make_cleanup(i32 %16, i8* %17)
  store %struct.cleanup* %18, %struct.cleanup** %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @solib_open(i8* %19, i8** %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @perror_with_name(i8* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @gnutarget, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32* @bfd_fdopenr(i8* %27, i32 %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (...) @bfd_get_error()
  %38 = call i8* @bfd_errmsg(i32 %37)
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.so_list*, %struct.so_list** %3, align 8
  %43 = getelementptr inbounds %struct.so_list, %struct.so_list* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @bfd_set_cacheable(i32* %44, i32 1)
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i64, i64* @SO_NAME_MAX_PATH_SIZE, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %40
  %53 = load %struct.so_list*, %struct.so_list** %3, align 8
  %54 = getelementptr inbounds %struct.so_list, %struct.so_list* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcpy(i32 %55, i8* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @bfd_object, align 4
  %60 = call i32 @bfd_check_format(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (...) @bfd_get_error()
  %65 = call i8* @bfd_errmsg(i32 %64)
  %66 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %65)
  br label %67

67:                                               ; preds = %62, %52
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.so_list*, %struct.so_list** %3, align 8
  %70 = getelementptr inbounds %struct.so_list, %struct.so_list* %69, i32 0, i32 2
  %71 = load %struct.so_list*, %struct.so_list** %3, align 8
  %72 = getelementptr inbounds %struct.so_list, %struct.so_list* %71, i32 0, i32 1
  %73 = call i64 @build_section_table(i32* %68, %struct.section_table** %70, %struct.section_table** %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32*, i32** %9, align 8
  %77 = call i8* @bfd_get_filename(i32* %76)
  %78 = call i32 (...) @bfd_get_error()
  %79 = call i8* @bfd_errmsg(i32 %78)
  %80 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %77, i8* %79)
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.so_list*, %struct.so_list** %3, align 8
  %83 = getelementptr inbounds %struct.so_list, %struct.so_list* %82, i32 0, i32 2
  %84 = load %struct.section_table*, %struct.section_table** %83, align 8
  store %struct.section_table* %84, %struct.section_table** %7, align 8
  br label %85

85:                                               ; preds = %107, %81
  %86 = load %struct.section_table*, %struct.section_table** %7, align 8
  %87 = load %struct.so_list*, %struct.so_list** %3, align 8
  %88 = getelementptr inbounds %struct.so_list, %struct.so_list* %87, i32 0, i32 1
  %89 = load %struct.section_table*, %struct.section_table** %88, align 8
  %90 = icmp ult %struct.section_table* %86, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load %struct.so_list*, %struct.so_list** %3, align 8
  %93 = load %struct.section_table*, %struct.section_table** %7, align 8
  %94 = call i32 @TARGET_SO_RELOCATE_SECTION_ADDRESSES(%struct.so_list* %92, %struct.section_table* %93)
  %95 = load %struct.section_table*, %struct.section_table** %7, align 8
  %96 = getelementptr inbounds %struct.section_table, %struct.section_table* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @strcmp(i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load %struct.section_table*, %struct.section_table** %7, align 8
  %104 = load %struct.so_list*, %struct.so_list** %3, align 8
  %105 = getelementptr inbounds %struct.so_list, %struct.so_list* %104, i32 0, i32 0
  store %struct.section_table* %103, %struct.section_table** %105, align 8
  br label %106

106:                                              ; preds = %102, %91
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.section_table*, %struct.section_table** %7, align 8
  %109 = getelementptr inbounds %struct.section_table, %struct.section_table* %108, i32 1
  store %struct.section_table* %109, %struct.section_table** %7, align 8
  br label %85

110:                                              ; preds = %85
  %111 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %112 = call i32 @do_cleanups(%struct.cleanup* %111)
  ret i32 1
}

declare dso_local i8* @tilde_expand(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @solib_open(i8*, i8**) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32* @bfd_fdopenr(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_cacheable(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i64 @build_section_table(i32*, %struct.section_table**, %struct.section_table**) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @TARGET_SO_RELOCATE_SECTION_ADDRESSES(%struct.so_list*, %struct.section_table*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
