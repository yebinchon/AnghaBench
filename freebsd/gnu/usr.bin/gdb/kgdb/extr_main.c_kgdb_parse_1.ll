; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kgdb_parse_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kgdb_parse_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.cleanup = type { i32 }
%struct.expression = type { i32 }
%struct.value = type { i32 }

@gdb_stderr = common dso_local global %struct.ui_file* null, align 8
@parse_gdberr = common dso_local global %struct.ui_file* null, align 8
@xfree = common dso_local global i32 0, align 4
@free_current_contents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kgdb_parse_1(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ui_file*, %struct.ui_file** @gdb_stderr, align 8
  store %struct.ui_file* %11, %struct.ui_file** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.ui_file*, %struct.ui_file** @parse_gdberr, align 8
  store %struct.ui_file* %15, %struct.ui_file** @gdb_stderr, align 8
  br label %16

16:                                               ; preds = %14, %2
  store i64 0, i64* %10, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @xstrdup(i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* @xfree, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call %struct.cleanup* @make_cleanup(i32 %19, i8* %20)
  store %struct.cleanup* %21, %struct.cleanup** %6, align 8
  %22 = call i64 @gdb_parse_exp_1(i8** %9, i32* null, i32 0, %struct.expression** %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* @free_current_contents, align 4
  %31 = bitcast %struct.expression** %7 to i8*
  %32 = call %struct.cleanup* @make_cleanup(i32 %30, i8* %31)
  %33 = load %struct.expression*, %struct.expression** %7, align 8
  %34 = call i64 @gdb_evaluate_expression(%struct.expression* %33, %struct.value** %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.value*, %struct.value** %8, align 8
  %38 = call i64 @value_as_address(%struct.value* %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %24, %16
  %41 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %42 = call i32 @do_cleanups(%struct.cleanup* %41)
  %43 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  store %struct.ui_file* %43, %struct.ui_file** @gdb_stderr, align 8
  %44 = load i64, i64* %10, align 8
  ret i64 %44
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @gdb_parse_exp_1(i8**, i32*, i32, %struct.expression**) #1

declare dso_local i64 @gdb_evaluate_expression(%struct.expression*, %struct.value**) #1

declare dso_local i64 @value_as_address(%struct.value*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
