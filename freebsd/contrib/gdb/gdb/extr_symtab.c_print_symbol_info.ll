; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_print_symbol_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_print_symbol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8* }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"\0AFile \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@TYPES_DOMAIN = common dso_local global i64 0, align 8
@STATIC_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@STRUCT_DOMAIN = common dso_local global i64 0, align 8
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.symtab*, %struct.symbol*, i32, i8*)* @print_symbol_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_symbol_info(i64 %0, %struct.symtab* %1, %struct.symbol* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.symtab* %1, %struct.symtab** %7, align 8
  store %struct.symbol* %2, %struct.symbol** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8
  %15 = load %struct.symtab*, %struct.symtab** %7, align 8
  %16 = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %14, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13, %5
  %21 = load i32, i32* @gdb_stdout, align 4
  %22 = call i32 @fputs_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.symtab*, %struct.symtab** %7, align 8
  %24 = getelementptr inbounds %struct.symtab, %struct.symtab* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @gdb_stdout, align 4
  %27 = call i32 @fputs_filtered(i8* %25, i32 %26)
  %28 = load i32, i32* @gdb_stdout, align 4
  %29 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @TYPES_DOMAIN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @STATIC_BLOCK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34, %30
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @TYPES_DOMAIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.symbol*, %struct.symbol** %8, align 8
  %46 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %45)
  %47 = load i64, i64* @STRUCT_DOMAIN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.symbol*, %struct.symbol** %8, align 8
  %51 = call i32 @SYMBOL_TYPE(%struct.symbol* %50)
  %52 = load %struct.symbol*, %struct.symbol** %8, align 8
  %53 = load i32, i32* @gdb_stdout, align 4
  %54 = call i32 @typedef_print(i32 %51, %struct.symbol* %52, i32 %53)
  br label %85

55:                                               ; preds = %44, %40
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @TYPES_DOMAIN, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @TYPES_DOMAIN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load %struct.symbol*, %struct.symbol** %8, align 8
  %65 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %64)
  %66 = load i64, i64* @STRUCT_DOMAIN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63, %55
  %69 = load %struct.symbol*, %struct.symbol** %8, align 8
  %70 = call i32 @SYMBOL_TYPE(%struct.symbol* %69)
  %71 = load %struct.symbol*, %struct.symbol** %8, align 8
  %72 = call i64 @SYMBOL_CLASS(%struct.symbol* %71)
  %73 = load i64, i64* @LOC_TYPEDEF, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %79

76:                                               ; preds = %68
  %77 = load %struct.symbol*, %struct.symbol** %8, align 8
  %78 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %75 ], [ %78, %76 ]
  %81 = load i32, i32* @gdb_stdout, align 4
  %82 = call i32 @type_print(i32 %70, i8* %80, i32 %81, i32 0)
  %83 = call i32 @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %63, %59
  br label %85

85:                                               ; preds = %84, %49
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i64 @SYMBOL_DOMAIN(%struct.symbol*) #1

declare dso_local i32 @typedef_print(i32, %struct.symbol*, i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @type_print(i32, i8*, i32, i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
