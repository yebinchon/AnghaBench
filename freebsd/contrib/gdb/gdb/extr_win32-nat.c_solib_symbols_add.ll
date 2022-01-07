; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_solib_symbols_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_solib_symbols_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.section_addr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cleanup = type { i32 }

@solib_symbols_add.result = internal global %struct.objfile* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"pei-i386\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pe-i386\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@OBJF_SHARED = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objfile* (i8*, i32, i32)* @solib_symbols_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objfile* @solib_symbols_add(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.section_addr_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.section_addr_info* null, %struct.section_addr_info** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store %struct.objfile* null, %struct.objfile** %4, align 8
  br label %78

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @bfd_openr(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @bfd_openr(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %9, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @bfd_object, align 4
  %33 = call i64 @bfd_check_format(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.section_addr_info* @get_relocated_section_addrs(i32* %36, i32 %37)
  store %struct.section_addr_info* %38, %struct.section_addr_info** %8, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @bfd_close(i32* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %44 = icmp ne %struct.section_addr_info* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %49 = load i32, i32* @OBJF_SHARED, align 4
  %50 = call %struct.objfile* @safe_symbol_file_add(i8* %46, i32 %47, %struct.section_addr_info* %48, i32 0, i32 %49)
  store %struct.objfile* %50, %struct.objfile** @solib_symbols_add.result, align 8
  %51 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %52 = call i32 @free_section_addr_info(%struct.section_addr_info* %51)
  br label %76

53:                                               ; preds = %42
  %54 = call %struct.section_addr_info* @alloc_section_addr_info(i32 1)
  store %struct.section_addr_info* %54, %struct.section_addr_info** %8, align 8
  %55 = load i32, i32* @xfree, align 4
  %56 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %57 = call %struct.cleanup* @make_cleanup(i32 %55, %struct.section_addr_info* %56)
  store %struct.cleanup* %57, %struct.cleanup** %10, align 8
  %58 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %59 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %65 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %72 = load i32, i32* @OBJF_SHARED, align 4
  %73 = call %struct.objfile* @safe_symbol_file_add(i8* %69, i32 %70, %struct.section_addr_info* %71, i32 0, i32 %72)
  store %struct.objfile* %73, %struct.objfile** @solib_symbols_add.result, align 8
  %74 = load %struct.cleanup*, %struct.cleanup** %10, align 8
  %75 = call i32 @do_cleanups(%struct.cleanup* %74)
  br label %76

76:                                               ; preds = %53, %45
  %77 = load %struct.objfile*, %struct.objfile** @solib_symbols_add.result, align 8
  store %struct.objfile* %77, %struct.objfile** %4, align 8
  br label %78

78:                                               ; preds = %76, %18
  %79 = load %struct.objfile*, %struct.objfile** %4, align 8
  ret %struct.objfile* %79
}

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local %struct.section_addr_info* @get_relocated_section_addrs(i32*, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local %struct.objfile* @safe_symbol_file_add(i8*, i32, %struct.section_addr_info*, i32, i32) #1

declare dso_local i32 @free_section_addr_info(%struct.section_addr_info*) #1

declare dso_local %struct.section_addr_info* @alloc_section_addr_info(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.section_addr_info*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
