; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symtab_symbol_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symtab_symbol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_search = type { %struct.TYPE_2__*, i32, i32, i32*, %struct.symbol_search* }
%struct.TYPE_2__ = type { i8* }
%struct.cleanup = type { i32 }

@symtab_symbol_info.classnames = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"All %ss matching regular expression \22%s\22:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"All defined %ss:\0A\00", align 1
@VARIABLES_DOMAIN = common dso_local global i64 0, align 8
@QUIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"\0ANon-debugging symbols:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @symtab_symbol_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symtab_symbol_info(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol_search*, align 8
  %8 = alloca %struct.symbol_search*, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @search_symbols(i8* %12, i64 %13, i32 0, i8** null, %struct.symbol_search** %7)
  %15 = load %struct.symbol_search*, %struct.symbol_search** %7, align 8
  %16 = call %struct.cleanup* @make_cleanup_free_search_symbols(%struct.symbol_search* %15)
  store %struct.cleanup* %16, %struct.cleanup** %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @VARIABLES_DOMAIN, align 8
  %23 = sub nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* @symtab_symbol_info.classnames, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, ...) @printf_filtered(i8* %20, i8* %27, i8* %28)
  %30 = load %struct.symbol_search*, %struct.symbol_search** %7, align 8
  store %struct.symbol_search* %30, %struct.symbol_search** %8, align 8
  br label %31

31:                                               ; preds = %69, %3
  %32 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %33 = icmp ne %struct.symbol_search* %32, null
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i32, i32* @QUIT, align 4
  %36 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %37 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %47 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @print_msymbol_info(i32* %48)
  br label %68

50:                                               ; preds = %34
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %53 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %56 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %59 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @print_symbol_info(i64 %51, %struct.TYPE_2__* %54, i32 %57, i32 %60, i8* %61)
  %63 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %64 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %50, %45
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.symbol_search*, %struct.symbol_search** %8, align 8
  %71 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %70, i32 0, i32 4
  %72 = load %struct.symbol_search*, %struct.symbol_search** %71, align 8
  store %struct.symbol_search* %72, %struct.symbol_search** %8, align 8
  br label %31

73:                                               ; preds = %31
  %74 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %75 = call i32 @do_cleanups(%struct.cleanup* %74)
  ret void
}

declare dso_local i32 @search_symbols(i8*, i64, i32, i8**, %struct.symbol_search**) #1

declare dso_local %struct.cleanup* @make_cleanup_free_search_symbols(%struct.symbol_search*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @print_msymbol_info(i32*) #1

declare dso_local i32 @print_symbol_info(i64, %struct.TYPE_2__*, i32, i32, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
