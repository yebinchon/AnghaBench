; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_msymbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_msymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, %struct.minimal_symbol*, i32 }
%struct.minimal_symbol = type { i32, i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"\0AObject file %s:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No minimal symbols found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[%2d] %c \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" section %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"internal error:  minimal symbol count %d != %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, %struct.ui_file*)* @dump_msymbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_msymbols(%struct.objfile* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.minimal_symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %8 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %9 = load %struct.objfile*, %struct.objfile** %3, align 8
  %10 = getelementptr inbounds %struct.objfile, %struct.objfile* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.objfile*, %struct.objfile** %3, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %100

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 2
  %23 = load %struct.minimal_symbol*, %struct.minimal_symbol** %22, align 8
  store %struct.minimal_symbol* %23, %struct.minimal_symbol** %5, align 8
  br label %24

24:                                               ; preds = %80, %20
  %25 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %26 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %30 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %41 [
    i32 128, label %32
    i32 129, label %33
    i32 130, label %34
    i32 134, label %35
    i32 135, label %36
    i32 136, label %37
    i32 131, label %38
    i32 132, label %39
    i32 133, label %40
  ]

32:                                               ; preds = %28
  store i8 117, i8* %7, align 1
  br label %42

33:                                               ; preds = %28
  store i8 84, i8* %7, align 1
  br label %42

34:                                               ; preds = %28
  store i8 83, i8* %7, align 1
  br label %42

35:                                               ; preds = %28
  store i8 68, i8* %7, align 1
  br label %42

36:                                               ; preds = %28
  store i8 66, i8* %7, align 1
  br label %42

37:                                               ; preds = %28
  store i8 65, i8* %7, align 1
  br label %42

38:                                               ; preds = %28
  store i8 116, i8* %7, align 1
  br label %42

39:                                               ; preds = %28
  store i8 100, i8* %7, align 1
  br label %42

40:                                               ; preds = %28
  store i8 98, i8* %7, align 1
  br label %42

41:                                               ; preds = %28
  store i8 63, i8* %7, align 1
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %36, %35, %34, %33, %32
  %43 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %49 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %48)
  %50 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %51 = call i32 @print_address_numeric(i32 %49, i32 1, %struct.ui_file* %50)
  %52 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %53 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %54 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %53)
  %55 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %54)
  %56 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %57 = call i64 @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %42
  %60 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %61 = load %struct.objfile*, %struct.objfile** %3, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %65 = call i64 @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %64)
  %66 = call i32 @bfd_section_name(i32 %63, i64 %65)
  %67 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59, %42
  %69 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %70 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %74 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %75 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %74)
  %76 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %79 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %78)
  br label %80

80:                                               ; preds = %77
  %81 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %82 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %81, i32 1
  store %struct.minimal_symbol* %82, %struct.minimal_symbol** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %24

85:                                               ; preds = %24
  %86 = load %struct.objfile*, %struct.objfile** %3, align 8
  %87 = getelementptr inbounds %struct.objfile, %struct.objfile* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.objfile*, %struct.objfile** %3, align 8
  %93 = getelementptr inbounds %struct.objfile, %struct.objfile* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %99 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %17
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i64 @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local i32 @bfd_section_name(i32, i64) #1

declare dso_local i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
