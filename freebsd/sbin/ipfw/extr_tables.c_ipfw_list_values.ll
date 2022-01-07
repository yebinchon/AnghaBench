; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_ipfw_list_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_ipfw_list_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct._table_value = type { i32, i64 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to request value list\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"HEADER: %s\0A\00", align 1
@compare_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"[%u] refs=%lu %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_list_values(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct._table_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = call i32 @table_do_get_vlist(%struct.TYPE_4__** %5)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EX_OSERR, align 4
  %16 = call i32 @err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  store i32 2147483647, i32* %9, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @table_print_valheader(i8* %18, i32 128, i32 %19)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = bitcast %struct.TYPE_4__* %24 to %struct._table_value*
  store %struct._table_value* %25, %struct._table_value** %6, align 8
  %26 = load %struct._table_value*, %struct._table_value** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @compare_values, align 4
  %34 = call i32 @qsort(%struct._table_value* %26, i32 %29, i64 %32, i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %63, %17
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %43 = load %struct._table_value*, %struct._table_value** %6, align 8
  %44 = bitcast %struct._table_value* %43 to i32*
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @table_show_value(i8* %42, i32 128, i32* %44, i32 %45, i32 0)
  %47 = load %struct._table_value*, %struct._table_value** %6, align 8
  %48 = getelementptr inbounds %struct._table_value, %struct._table_value* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct._table_value*, %struct._table_value** %6, align 8
  %51 = getelementptr inbounds %struct._table_value, %struct._table_value* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %53, i8* %54)
  %56 = load %struct._table_value*, %struct._table_value** %6, align 8
  %57 = ptrtoint %struct._table_value* %56 to i64
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = inttoptr i64 %61 to %struct._table_value*
  store %struct._table_value* %62, %struct._table_value** %6, align 8
  br label %63

63:                                               ; preds = %41
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = call i32 @free(%struct.TYPE_4__* %67)
  ret void
}

declare dso_local i32 @table_do_get_vlist(%struct.TYPE_4__**) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @table_print_valheader(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @qsort(%struct._table_value*, i32, i64, i32) #1

declare dso_local i32 @table_show_value(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
