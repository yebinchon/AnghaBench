; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_print_type_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_print_type_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"internal error: unhandled type in print_type_scalar\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid type code in symbol table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_type_scalar(%struct.type* %0, i64 %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @CHECK_TYPEDEF(%struct.type* %9)
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  switch i32 %12, label %75 [
    i32 144, label %13
    i32 140, label %46
    i32 145, label %56
    i32 146, label %61
    i32 135, label %68
    i32 130, label %73
    i32 136, label %73
    i32 147, label %73
    i32 131, label %73
    i32 129, label %73
    i32 141, label %73
    i32 142, label %73
    i32 128, label %73
    i32 133, label %73
    i32 132, label %73
    i32 143, label %73
    i32 139, label %73
    i32 138, label %73
    i32 134, label %73
    i32 137, label %73
  ]

13:                                               ; preds = %3
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call i32 @TYPE_NFIELDS(%struct.type* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %21, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %16

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TYPE_FIELD_NAME(%struct.type* %36, i32 %37)
  %39 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %40 = call i32 @fputs_filtered(i32 %38, %struct.ui_file* %39)
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @print_longest(%struct.ui_file* %42, i8 zeroext 100, i32 0, i64 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %77

46:                                               ; preds = %3
  %47 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %48 = load %struct.type*, %struct.type** %4, align 8
  %49 = call i32 @TYPE_UNSIGNED(%struct.type* %48)
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 117, i32 100
  %53 = trunc i32 %52 to i8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @print_longest(%struct.ui_file* %47, i8 zeroext %53, i32 0, i64 %54)
  br label %77

56:                                               ; preds = %3
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i8
  %59 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %60 = call i32 @LA_PRINT_CHAR(i8 zeroext %58, %struct.ui_file* %59)
  br label %77

61:                                               ; preds = %3
  %62 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %67 = call i32 @fprintf_filtered(%struct.ui_file* %62, i8* %66)
  br label %77

68:                                               ; preds = %3
  %69 = load %struct.type*, %struct.type** %4, align 8
  %70 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %69)
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @print_type_scalar(%struct.type* %70, i64 %71, %struct.ui_file* %72)
  br label %80

73:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %74 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %77

75:                                               ; preds = %3
  %76 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %73, %61, %56, %46, %45
  %78 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %79 = call i32 @gdb_flush(%struct.ui_file* %78)
  br label %80

80:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 zeroext, i32, i64) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @LA_PRINT_CHAR(i8 zeroext, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
