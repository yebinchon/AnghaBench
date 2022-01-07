; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_block_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_block_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.dict_iterator = type { i32 }

@LOC_ARG = common dso_local global i64 0, align 8
@LOC_LOCAL_ARG = common dso_local global i64 0, align 8
@LOC_REF_ARG = common dso_local global i64 0, align 8
@LOC_REGPARM = common dso_local global i64 0, align 8
@LOC_REGPARM_ADDR = common dso_local global i64 0, align 8
@LOC_BASEREG_ARG = common dso_local global i64 0, align 8
@LOC_COMPUTED_ARG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @lookup_block_symbol(%struct.block* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dict_iterator, align 4
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.symbol*, align 8
  store %struct.block* %0, %struct.block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.block*, %struct.block** %6, align 8
  %14 = call i32 @BLOCK_FUNCTION(%struct.block* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %4
  %17 = load %struct.block*, %struct.block** %6, align 8
  %18 = call i32 @BLOCK_DICT(%struct.block* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.symbol* @dict_iter_name_first(i32 %18, i8* %19, %struct.dict_iterator* %10)
  store %struct.symbol* %20, %struct.symbol** %11, align 8
  br label %21

21:                                               ; preds = %42, %16
  %22 = load %struct.symbol*, %struct.symbol** %11, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.symbol*, %struct.symbol** %11, align 8
  %26 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %25)
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.symbol*, %struct.symbol** %11, align 8
  %34 = call i32 @SYMBOL_LINKAGE_NAME(%struct.symbol* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strcmp(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %41

38:                                               ; preds = %29
  br i1 true, label %39, label %41

39:                                               ; preds = %38, %32
  %40 = load %struct.symbol*, %struct.symbol** %11, align 8
  store %struct.symbol* %40, %struct.symbol** %5, align 8
  br label %113

41:                                               ; preds = %38, %32, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %7, align 8
  %44 = call %struct.symbol* @dict_iter_name_next(i8* %43, %struct.dict_iterator* %10)
  store %struct.symbol* %44, %struct.symbol** %11, align 8
  br label %21

45:                                               ; preds = %21
  store %struct.symbol* null, %struct.symbol** %5, align 8
  br label %113

46:                                               ; preds = %4
  store %struct.symbol* null, %struct.symbol** %12, align 8
  %47 = load %struct.block*, %struct.block** %6, align 8
  %48 = call i32 @BLOCK_DICT(%struct.block* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call %struct.symbol* @dict_iter_name_first(i32 %48, i8* %49, %struct.dict_iterator* %10)
  store %struct.symbol* %50, %struct.symbol** %11, align 8
  br label %51

51:                                               ; preds = %108, %46
  %52 = load %struct.symbol*, %struct.symbol** %11, align 8
  %53 = icmp ne %struct.symbol* %52, null
  br i1 %53, label %54, label %111

54:                                               ; preds = %51
  %55 = load %struct.symbol*, %struct.symbol** %11, align 8
  %56 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %55)
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.symbol*, %struct.symbol** %11, align 8
  %64 = call i32 @SYMBOL_LINKAGE_NAME(%struct.symbol* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strcmp(i32 %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %69, label %107

68:                                               ; preds = %59
  br i1 true, label %69, label %107

69:                                               ; preds = %68, %62
  %70 = load %struct.symbol*, %struct.symbol** %11, align 8
  store %struct.symbol* %70, %struct.symbol** %12, align 8
  %71 = load %struct.symbol*, %struct.symbol** %11, align 8
  %72 = call i64 @SYMBOL_CLASS(%struct.symbol* %71)
  %73 = load i64, i64* @LOC_ARG, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %69
  %76 = load %struct.symbol*, %struct.symbol** %11, align 8
  %77 = call i64 @SYMBOL_CLASS(%struct.symbol* %76)
  %78 = load i64, i64* @LOC_LOCAL_ARG, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load %struct.symbol*, %struct.symbol** %11, align 8
  %82 = call i64 @SYMBOL_CLASS(%struct.symbol* %81)
  %83 = load i64, i64* @LOC_REF_ARG, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load %struct.symbol*, %struct.symbol** %11, align 8
  %87 = call i64 @SYMBOL_CLASS(%struct.symbol* %86)
  %88 = load i64, i64* @LOC_REGPARM, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load %struct.symbol*, %struct.symbol** %11, align 8
  %92 = call i64 @SYMBOL_CLASS(%struct.symbol* %91)
  %93 = load i64, i64* @LOC_REGPARM_ADDR, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.symbol*, %struct.symbol** %11, align 8
  %97 = call i64 @SYMBOL_CLASS(%struct.symbol* %96)
  %98 = load i64, i64* @LOC_BASEREG_ARG, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.symbol*, %struct.symbol** %11, align 8
  %102 = call i64 @SYMBOL_CLASS(%struct.symbol* %101)
  %103 = load i64, i64* @LOC_COMPUTED_ARG, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %111

106:                                              ; preds = %100, %95, %90, %85, %80, %75, %69
  br label %107

107:                                              ; preds = %106, %68, %62, %54
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %7, align 8
  %110 = call %struct.symbol* @dict_iter_name_next(i8* %109, %struct.dict_iterator* %10)
  store %struct.symbol* %110, %struct.symbol** %11, align 8
  br label %51

111:                                              ; preds = %105, %51
  %112 = load %struct.symbol*, %struct.symbol** %12, align 8
  store %struct.symbol* %112, %struct.symbol** %5, align 8
  br label %113

113:                                              ; preds = %111, %45, %39
  %114 = load %struct.symbol*, %struct.symbol** %5, align 8
  ret %struct.symbol* %114
}

declare dso_local i32 @BLOCK_FUNCTION(%struct.block*) #1

declare dso_local %struct.symbol* @dict_iter_name_first(i32, i8*, %struct.dict_iterator*) #1

declare dso_local i32 @BLOCK_DICT(%struct.block*) #1

declare dso_local i64 @SYMBOL_DOMAIN(%struct.symbol*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.symbol*) #1

declare dso_local %struct.symbol* @dict_iter_name_next(i8*, %struct.dict_iterator*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
