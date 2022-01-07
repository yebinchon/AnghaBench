; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_safe_symbol_file_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_safe_symbol_file_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.section_addr_info = type { i32 }
%struct.safe_symbol_file_add_args = type { i8*, i32, i32, i32, %struct.objfile*, %struct.section_addr_info*, i8*, i8* }
%struct.cleanup = type { i32 }

@safe_symbol_file_add_cleanup = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i8* null, align 8
@gdb_stdout = common dso_local global i8* null, align 8
@safe_symbol_file_add_stub = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objfile* (i8*, i32, %struct.section_addr_info*, i32, i32)* @safe_symbol_file_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objfile* @safe_symbol_file_add(i8* %0, i32 %1, %struct.section_addr_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.section_addr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.safe_symbol_file_add_args, align 8
  %12 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.section_addr_info* %2, %struct.section_addr_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @safe_symbol_file_add_cleanup, align 4
  %14 = call %struct.cleanup* @make_cleanup(i32 %13, %struct.safe_symbol_file_add_args* %11)
  store %struct.cleanup* %14, %struct.cleanup** %12, align 8
  %15 = load i8*, i8** @gdb_stderr, align 8
  %16 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 7
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @gdb_stdout, align 8
  %18 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @gdb_stderr, align 8
  %20 = call i32 @gdb_flush(i8* %19)
  %21 = load i8*, i8** @gdb_stdout, align 8
  %22 = call i32 @gdb_flush(i8* %21)
  %23 = call i8* (...) @ui_file_new()
  store i8* %23, i8** @gdb_stderr, align 8
  %24 = call i8* (...) @ui_file_new()
  store i8* %24, i8** @gdb_stdout, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.section_addr_info*, %struct.section_addr_info** %8, align 8
  %30 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 5
  store %struct.section_addr_info* %29, %struct.section_addr_info** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @safe_symbol_file_add_stub, align 4
  %36 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %37 = call i32 @catch_errors(i32 %35, %struct.safe_symbol_file_add_args* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %39 = call i32 @do_cleanups(%struct.cleanup* %38)
  %40 = getelementptr inbounds %struct.safe_symbol_file_add_args, %struct.safe_symbol_file_add_args* %11, i32 0, i32 4
  %41 = load %struct.objfile*, %struct.objfile** %40, align 8
  ret %struct.objfile* %41
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.safe_symbol_file_add_args*) #1

declare dso_local i32 @gdb_flush(i8*) #1

declare dso_local i8* @ui_file_new(...) #1

declare dso_local i32 @catch_errors(i32, %struct.safe_symbol_file_add_args*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
