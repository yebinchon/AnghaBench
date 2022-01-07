; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@Val_pretty_default = common dso_local global i32 0, align 4
@prettyprint_structs = common dso_local global i64 0, align 8
@Val_prettyprint = common dso_local global i32 0, align 4
@Val_no_prettyprint = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"<incomplete type>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_print(%struct.type* %0, i8* %1, i32 %2, i32 %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ui_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.ui_file* %4, %struct.ui_file** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load %struct.type*, %struct.type** %11, align 8
  %22 = call %struct.type* @check_typedef(%struct.type* %21)
  store %struct.type* %22, %struct.type** %20, align 8
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* @Val_pretty_default, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %9
  %27 = load i64, i64* @prettyprint_structs, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @Val_prettyprint, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @Val_no_prettyprint, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %33, %9
  %36 = load i32, i32* @QUIT, align 4
  %37 = load %struct.type*, %struct.type** %20, align 8
  %38 = call i64 @TYPE_STUB(%struct.type* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %42 = call i32 @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %44 = call i32 @gdb_flush(%struct.ui_file* %43)
  store i32 0, i32* %10, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.type*, %struct.type** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @LA_VAL_PRINT(%struct.type* %46, i8* %47, i32 %48, i32 %49, %struct.ui_file* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %45, %40
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i64 @TYPE_STUB(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

declare dso_local i32 @LA_VAL_PRINT(%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
