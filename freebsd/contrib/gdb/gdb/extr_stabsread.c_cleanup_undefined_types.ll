; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_cleanup_undefined_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_cleanup_undefined_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.pending = type { i32, %struct.symbol**, %struct.pending* }
%struct.symbol = type { i32 }

@undef_types = common dso_local global %struct.type** null, align 8
@undef_types_length = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"need a type name\00", align 1
@file_symbols = common dso_local global %struct.pending* null, align 8
@LOC_TYPEDEF = common dso_local global i32 0, align 4
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"forward-referenced types left unresolved, type code %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_undefined_types() #0 {
  %1 = alloca %struct.type**, align 8
  %2 = alloca %struct.pending*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = load %struct.type**, %struct.type*** @undef_types, align 8
  store %struct.type** %6, %struct.type*** %1, align 8
  br label %7

7:                                                ; preds = %97, %0
  %8 = load %struct.type**, %struct.type*** %1, align 8
  %9 = load %struct.type**, %struct.type*** @undef_types, align 8
  %10 = load i32, i32* @undef_types_length, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.type*, %struct.type** %9, i64 %11
  %13 = icmp ult %struct.type** %8, %12
  br i1 %13, label %14, label %100

14:                                               ; preds = %7
  %15 = load %struct.type**, %struct.type*** %1, align 8
  %16 = load %struct.type*, %struct.type** %15, align 8
  %17 = call i32 @TYPE_CODE(%struct.type* %16)
  switch i32 %17, label %91 [
    i32 129, label %18
    i32 128, label %18
    i32 130, label %18
  ]

18:                                               ; preds = %14, %14, %14
  %19 = load %struct.type**, %struct.type*** %1, align 8
  %20 = load %struct.type*, %struct.type** %19, align 8
  %21 = call i32 @TYPE_STUB(%struct.type* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %18
  %24 = load %struct.type**, %struct.type*** %1, align 8
  %25 = load %struct.type*, %struct.type** %24, align 8
  %26 = call i8* @TYPE_TAG_NAME(%struct.type* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %96

31:                                               ; preds = %23
  %32 = load %struct.pending*, %struct.pending** @file_symbols, align 8
  store %struct.pending* %32, %struct.pending** %2, align 8
  br label %33

33:                                               ; preds = %85, %31
  %34 = load %struct.pending*, %struct.pending** %2, align 8
  %35 = icmp ne %struct.pending* %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %81, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.pending*, %struct.pending** %2, align 8
  %40 = getelementptr inbounds %struct.pending, %struct.pending* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %37
  %44 = load %struct.pending*, %struct.pending** %2, align 8
  %45 = getelementptr inbounds %struct.pending, %struct.pending* %44, i32 0, i32 1
  %46 = load %struct.symbol**, %struct.symbol*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.symbol*, %struct.symbol** %46, i64 %48
  %50 = load %struct.symbol*, %struct.symbol** %49, align 8
  store %struct.symbol* %50, %struct.symbol** %5, align 8
  %51 = load %struct.symbol*, %struct.symbol** %5, align 8
  %52 = call i32 @SYMBOL_CLASS(%struct.symbol* %51)
  %53 = load i32, i32* @LOC_TYPEDEF, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %43
  %56 = load %struct.symbol*, %struct.symbol** %5, align 8
  %57 = call i32 @SYMBOL_DOMAIN(%struct.symbol* %56)
  %58 = load i32, i32* @STRUCT_DOMAIN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.symbol*, %struct.symbol** %5, align 8
  %62 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %61)
  %63 = call i32 @TYPE_CODE(%struct.type* %62)
  %64 = load %struct.type**, %struct.type*** %1, align 8
  %65 = load %struct.type*, %struct.type** %64, align 8
  %66 = call i32 @TYPE_CODE(%struct.type* %65)
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.symbol*, %struct.symbol** %5, align 8
  %70 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strcmp(i32 %70, i8* %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.type**, %struct.type*** %1, align 8
  %76 = load %struct.type*, %struct.type** %75, align 8
  %77 = load %struct.symbol*, %struct.symbol** %5, align 8
  %78 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %77)
  %79 = call i32 @replace_type(%struct.type* %76, %struct.type* %78)
  br label %80

80:                                               ; preds = %74, %68, %60, %55, %43
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %37

84:                                               ; preds = %37
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.pending*, %struct.pending** %2, align 8
  %87 = getelementptr inbounds %struct.pending, %struct.pending* %86, i32 0, i32 2
  %88 = load %struct.pending*, %struct.pending** %87, align 8
  store %struct.pending* %88, %struct.pending** %2, align 8
  br label %33

89:                                               ; preds = %33
  br label %90

90:                                               ; preds = %89, %18
  br label %96

91:                                               ; preds = %14
  %92 = load %struct.type**, %struct.type*** %1, align 8
  %93 = load %struct.type*, %struct.type** %92, align 8
  %94 = call i32 @TYPE_CODE(%struct.type* %93)
  %95 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %90, %29
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.type**, %struct.type*** %1, align 8
  %99 = getelementptr inbounds %struct.type*, %struct.type** %98, i32 1
  store %struct.type** %99, %struct.type*** %1, align 8
  br label %7

100:                                              ; preds = %7
  store i32 0, i32* @undef_types_length, align 4
  ret void
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_STUB(%struct.type*) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local i32 @complaint(i32*, i8*, ...) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_DOMAIN(%struct.symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @replace_type(%struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
