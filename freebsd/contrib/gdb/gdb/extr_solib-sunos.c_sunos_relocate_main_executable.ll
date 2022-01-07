; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_relocate_main_executable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_relocate_main_executable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.cleanup = type { i32 }
%struct.section_offsets = type { i64* }

@exec_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@DYNAMIC = common dso_local global i32 0, align 4
@symfile_objfile = common dso_local global %struct.TYPE_3__* null, align 8
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sunos_relocate_main_executable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunos_relocate_main_executable() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.cleanup*, align 8
  %4 = alloca %struct.section_offsets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i64 (...) @read_pc()
  store i64 %8, i64* %2, align 8
  %9 = load i32, i32* @exec_bfd, align 4
  %10 = call i32* @bfd_get_section_by_name(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %72

13:                                               ; preds = %0
  %14 = load i32, i32* @exec_bfd, align 4
  %15 = call i32 @bfd_get_file_flags(i32 %14)
  %16 = load i32, i32* @DYNAMIC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %13
  %20 = load i32, i32* @exec_bfd, align 4
  %21 = call i64 @bfd_get_start_address(i32 %20)
  %22 = load i64, i64* %2, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @exec_bfd, align 4
  %27 = call i64 @bfd_get_start_address(i32 %26)
  %28 = sub nsw i64 %25, %27
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %6, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.section_offsets* @xcalloc(i32 %31, i32 8)
  store %struct.section_offsets* %32, %struct.section_offsets** %4, align 8
  %33 = load i32, i32* @xfree, align 4
  %34 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %35 = call %struct.cleanup* @make_cleanup(i32 %33, %struct.section_offsets* %34)
  store %struct.cleanup* %35, %struct.cleanup** %3, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %59, %24
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @ANOFFSET(i32 %46, i32 %47)
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %54 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %67 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %68 = call i32 @objfile_relocate(%struct.TYPE_3__* %66, %struct.section_offsets* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %71 = call i32 @do_cleanups(%struct.cleanup* %70)
  br label %72

72:                                               ; preds = %69, %19, %13, %0
  ret void
}

declare dso_local i64 @read_pc(...) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_get_file_flags(i32) #1

declare dso_local i64 @bfd_get_start_address(i32) #1

declare dso_local %struct.section_offsets* @xcalloc(i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.section_offsets*) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @objfile_relocate(%struct.TYPE_3__*, %struct.section_offsets*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
