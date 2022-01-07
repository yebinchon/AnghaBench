; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-symbol-cmds.c_mi_cmd_symbol_list_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-symbol-cmds.c_mi_cmd_symbol_list_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.cleanup = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"mi_cmd_symbol_list_lines: Usage: SOURCE_FILENAME\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"mi_cmd_symbol_list_lines: Unknown source file name.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_symbol_list_lines(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cleanup*, align 8
  %11 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.symtab* @lookup_symtab(i8* %20)
  store %struct.symtab* %21, %struct.symtab** %8, align 8
  %22 = load %struct.symtab*, %struct.symtab** %8, align 8
  %23 = icmp eq %struct.symtab* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* @uiout, align 4
  %28 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %28, %struct.cleanup** %10, align 8
  %29 = load %struct.symtab*, %struct.symtab** %8, align 8
  %30 = call %struct.TYPE_4__* @LINETABLE(%struct.symtab* %29)
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load %struct.symtab*, %struct.symtab** %8, align 8
  %34 = call %struct.TYPE_4__* @LINETABLE(%struct.symtab* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %73, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.symtab*, %struct.symtab** %8, align 8
  %42 = call %struct.TYPE_4__* @LINETABLE(%struct.symtab* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load i32, i32* @uiout, align 4
  %48 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %47, i32* null)
  store %struct.cleanup* %48, %struct.cleanup** %11, align 8
  %49 = load i32, i32* @uiout, align 4
  %50 = load %struct.symtab*, %struct.symtab** %8, align 8
  %51 = call %struct.TYPE_4__* @LINETABLE(%struct.symtab* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ui_out_field_core_addr(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @uiout, align 4
  %61 = load %struct.symtab*, %struct.symtab** %8, align 8
  %62 = call %struct.TYPE_4__* @LINETABLE(%struct.symtab* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ui_out_field_int(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %72 = call i32 @do_cleanups(%struct.cleanup* %71)
  br label %73

73:                                               ; preds = %46
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %39

76:                                               ; preds = %39
  br label %77

77:                                               ; preds = %76, %32, %26
  %78 = load %struct.cleanup*, %struct.cleanup** %10, align 8
  %79 = call i32 @do_cleanups(%struct.cleanup* %78)
  %80 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %80
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symtab* @lookup_symtab(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @LINETABLE(%struct.symtab*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i32*) #1

declare dso_local i32 @ui_out_field_core_addr(i32, i8*, i32) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
