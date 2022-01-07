; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_maintenance_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_maintenance_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.cleanup = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.type* }

@free_current_contents = common dso_local global i32 0, align 4
@OP_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maintenance_print_type(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.expression*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.expression* @parse_expression(i8* %12)
  store %struct.expression* %13, %struct.expression** %8, align 8
  %14 = load i32, i32* @free_current_contents, align 4
  %15 = call %struct.cleanup* @make_cleanup(i32 %14, %struct.expression** %8)
  store %struct.cleanup* %15, %struct.cleanup** %7, align 8
  %16 = load %struct.expression*, %struct.expression** %8, align 8
  %17 = getelementptr inbounds %struct.expression, %struct.expression* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OP_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.expression*, %struct.expression** %8, align 8
  %26 = getelementptr inbounds %struct.expression, %struct.expression* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.type*, %struct.type** %29, align 8
  store %struct.type* %30, %struct.type** %6, align 8
  br label %36

31:                                               ; preds = %11
  %32 = load %struct.expression*, %struct.expression** %8, align 8
  %33 = call %struct.value* @evaluate_type(%struct.expression* %32)
  store %struct.value* %33, %struct.value** %5, align 8
  %34 = load %struct.value*, %struct.value** %5, align 8
  %35 = call %struct.type* @VALUE_TYPE(%struct.value* %34)
  store %struct.type* %35, %struct.type** %6, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.type*, %struct.type** %6, align 8
  %38 = icmp ne %struct.type* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = call i32 @recursive_dump_type(%struct.type* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %44 = call i32 @do_cleanups(%struct.cleanup* %43)
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_type(%struct.expression*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @recursive_dump_type(%struct.type*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
