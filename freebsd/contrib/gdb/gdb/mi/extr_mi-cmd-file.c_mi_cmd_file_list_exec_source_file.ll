; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-file.c_mi_cmd_file_list_exec_source_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-file.c_mi_cmd_file_list_exec_source_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"mi_cmd_file_list_exec_source_file\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"mi_cmd_file_list_exec_source_file: Usage: No args\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"mi_cmd_file_list_exec_source_file: No symtab\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"mi_cmd_file_list_exec_source_file: File not found\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_file_list_exec_source_file(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtab_and_line, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symtab_and_line, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @mi_valid_noargs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i8** %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = call i32 (...) @set_default_source_symtab_and_line()
  %19 = call { %struct.TYPE_2__*, i32 } (...) @get_current_source_symtab_and_line()
  %20 = bitcast %struct.symtab_and_line* %10 to { %struct.TYPE_2__*, i32 }*
  %21 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %20, i32 0, i32 0
  %22 = extractvalue { %struct.TYPE_2__*, i32 } %19, 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %20, i32 0, i32 1
  %24 = extractvalue { %struct.TYPE_2__*, i32 } %19, 1
  store i32 %24, i32* %23, align 8
  %25 = bitcast %struct.symtab_and_line* %7 to i8*
  %26 = bitcast %struct.symtab_and_line* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %17
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @symtab_to_filename(%struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* @uiout, align 4
  %52 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ui_out_field_int(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @uiout, align 4
  %56 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ui_out_field_string(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %59)
  %61 = load i32, i32* @uiout, align 4
  %62 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ui_out_field_string(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %67
}

declare dso_local i32 @mi_valid_noargs(i8*, i32, i8**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @set_default_source_symtab_and_line(...) #1

declare dso_local { %struct.TYPE_2__*, i32 } @get_current_source_symtab_and_line(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @symtab_to_filename(%struct.TYPE_2__*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
