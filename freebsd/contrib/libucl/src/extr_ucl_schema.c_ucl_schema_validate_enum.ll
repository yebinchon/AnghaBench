; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i32 }

@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"object is not one of enumerated patterns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.ucl_schema_error*)* @ucl_schema_validate_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_enum(i32* %0, i32* %1, %struct.ucl_schema_error* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ucl_schema_error*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @ucl_object_iterate(i32* %11, i32** %7, i32 1)
  store i32* %12, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @ucl_object_compare(i32* %15, i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %21

20:                                               ; preds = %14
  br label %10

21:                                               ; preds = %19, %10
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %26 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ucl_schema_create_error(%struct.ucl_schema_error* %25, i32 %26, i32* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32* @ucl_object_iterate(i32*, i32**, i32) #1

declare dso_local i64 @ucl_object_compare(i32*, i32*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
