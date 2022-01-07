; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_kld_new_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_kld_new_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"&((struct linker_file *)0)->address\00", align 1
@off_address = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"&((struct linker_file *)0)->filename\00", align 1
@off_filename = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"&((struct linker_file *)0)->pathname\00", align 1
@off_pathname = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"&((struct linker_file *)0)->link.tqe_next\00", align 1
@off_next = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"linker_path\00", align 1
@module_path_addr = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"&linker_files.tqh_first\00", align 1
@linker_files_addr = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"&linker_kernel_file\00", align 1
@kernel_file_addr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kld_new_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = call i32 (...) @have_partial_symbols()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = call i8* @kgdb_parse(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** @off_address, align 8
  %8 = call i8* @kgdb_parse(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** @off_filename, align 8
  %9 = call i32 @kgdb_parse_quiet(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* @off_pathname, align 4
  %10 = call i8* @kgdb_parse(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i8* %10, i8** @off_next, align 8
  %11 = call i8* @kgdb_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %11, i8** @module_path_addr, align 8
  %12 = call i8* @kgdb_parse(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i8* %12, i8** @linker_files_addr, align 8
  %13 = call i8* @kgdb_parse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %13, i8** @kernel_file_addr, align 8
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i8* @kgdb_parse(i8*) #1

declare dso_local i32 @kgdb_parse_quiet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
