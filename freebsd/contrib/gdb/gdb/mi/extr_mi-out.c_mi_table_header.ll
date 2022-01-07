; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-out.c_mi_table_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-out.c_mi_table_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ui_out_type_tuple = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"col_name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"colhdr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_table_header(%struct.ui_out* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ui_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %13 = call %struct.TYPE_3__* @ui_out_data(%struct.ui_out* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %40

19:                                               ; preds = %5
  %20 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %21 = load i32, i32* @ui_out_type_tuple, align 4
  %22 = call i32 @mi_open(%struct.ui_out* %20, i32* null, i32 %21)
  %23 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mi_field_int(%struct.ui_out* %23, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mi_field_int(%struct.ui_out* %26, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @mi_field_string(%struct.ui_out* %29, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @mi_field_string(%struct.ui_out* %32, i32 0, i32 %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %38 = load i32, i32* @ui_out_type_tuple, align 4
  %39 = call i32 @mi_close(%struct.ui_out* %37, i32 %38)
  br label %40

40:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.TYPE_3__* @ui_out_data(%struct.ui_out*) #1

declare dso_local i32 @mi_open(%struct.ui_out*, i32*, i32) #1

declare dso_local i32 @mi_field_int(%struct.ui_out*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mi_field_string(%struct.ui_out*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @mi_close(%struct.ui_out*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
