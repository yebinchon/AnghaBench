; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_number_of_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_number_of_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32, %struct.varobj* }
%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@v_public = common dso_local global i64 0, align 8
@v_private = common dso_local global i64 0, align 8
@v_protected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @cplus_number_of_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cplus_number_of_children(%struct.varobj* %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  store %struct.varobj* %0, %struct.varobj** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.varobj*, %struct.varobj** %2, align 8
  %9 = call i32 @CPLUS_FAKE_CHILD(%struct.varobj* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %1
  %12 = load %struct.varobj*, %struct.varobj** %2, align 8
  %13 = call %struct.type* @get_type_deref(%struct.varobj* %12)
  store %struct.type* %13, %struct.type** %3, align 8
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.type*, %struct.type** %3, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_UNION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %18, %11
  %24 = load %struct.type*, %struct.type** %3, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %26 = call i32 @cplus_class_num_children(%struct.type* %24, i32* %25)
  %27 = load i64, i64* @v_public, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i64, i64* @v_private, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i64, i64* @v_protected, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.type*, %struct.type** %3, align 8
  %52 = call i64 @TYPE_N_BASECLASSES(%struct.type* %51)
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %18
  br label %91

58:                                               ; preds = %1
  %59 = load %struct.varobj*, %struct.varobj** %2, align 8
  %60 = getelementptr inbounds %struct.varobj, %struct.varobj* %59, i32 0, i32 1
  %61 = load %struct.varobj*, %struct.varobj** %60, align 8
  %62 = call %struct.type* @get_type_deref(%struct.varobj* %61)
  store %struct.type* %62, %struct.type** %3, align 8
  %63 = load %struct.type*, %struct.type** %3, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %65 = call i32 @cplus_class_num_children(%struct.type* %63, i32* %64)
  %66 = load %struct.varobj*, %struct.varobj** %2, align 8
  %67 = getelementptr inbounds %struct.varobj, %struct.varobj* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @strcmp(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i64, i64* @v_public, align 8
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %90

75:                                               ; preds = %58
  %76 = load %struct.varobj*, %struct.varobj** %2, align 8
  %77 = getelementptr inbounds %struct.varobj, %struct.varobj* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @strcmp(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @v_private, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load i64, i64* @v_protected, align 8
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %71
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.varobj*, %struct.varobj** %2, align 8
  %96 = call i32 @c_number_of_children(%struct.varobj* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local %struct.type* @get_type_deref(%struct.varobj*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @cplus_class_num_children(%struct.type*, i32*) #1

declare dso_local i64 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @c_number_of_children(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
