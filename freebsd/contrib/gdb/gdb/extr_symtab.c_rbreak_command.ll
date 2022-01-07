; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_rbreak_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_rbreak_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_search = type { i32*, %struct.TYPE_2__*, i32, i32*, %struct.symbol_search* }
%struct.TYPE_2__ = type { i8* }
%struct.cleanup = type { i32 }

@FUNCTIONS_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c":'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"<function, no debug info> %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rbreak_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbreak_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol_search*, align 8
  %6 = alloca %struct.symbol_search*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @FUNCTIONS_DOMAIN, align 4
  %11 = call i32 @search_symbols(i8* %9, i32 %10, i32 0, i8** null, %struct.symbol_search** %5)
  %12 = load %struct.symbol_search*, %struct.symbol_search** %5, align 8
  %13 = call %struct.cleanup* @make_cleanup_free_search_symbols(%struct.symbol_search* %12)
  store %struct.cleanup* %13, %struct.cleanup** %7, align 8
  %14 = load %struct.symbol_search*, %struct.symbol_search** %5, align 8
  store %struct.symbol_search* %14, %struct.symbol_search** %6, align 8
  br label %15

15:                                               ; preds = %87, %2
  %16 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %17 = icmp ne %struct.symbol_search* %16, null
  br i1 %17, label %18, label %91

18:                                               ; preds = %15
  %19 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %20 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  %24 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %25 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %31 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @SYMBOL_LINKAGE_NAME(i32* %32)
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %29, %34
  %36 = add nsw i64 %35, 4
  %37 = call i8* @alloca(i64 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %40 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcpy(i8* %38, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %49 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i8* @SYMBOL_LINKAGE_NAME(i32* %50)
  %52 = call i32 @strcat(i8* %47, i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strcat(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @break_command(i8* %55, i32 %56)
  %58 = load i32, i32* @FUNCTIONS_DOMAIN, align 4
  %59 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %60 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %63 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %66 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %69 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @print_symbol_info(i32 %58, %struct.TYPE_2__* %61, i32* %64, i32 %67, i8* %72)
  br label %86

74:                                               ; preds = %18
  %75 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %76 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @SYMBOL_LINKAGE_NAME(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @break_command(i8* %78, i32 %79)
  %81 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %82 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @SYMBOL_PRINT_NAME(i32* %83)
  %85 = call i32 @printf_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %74, %23
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %89 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %88, i32 0, i32 4
  %90 = load %struct.symbol_search*, %struct.symbol_search** %89, align 8
  store %struct.symbol_search* %90, %struct.symbol_search** %6, align 8
  br label %15

91:                                               ; preds = %15
  %92 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %93 = call i32 @do_cleanups(%struct.cleanup* %92)
  ret void
}

declare dso_local i32 @search_symbols(i8*, i32, i32, i8**, %struct.symbol_search**) #1

declare dso_local %struct.cleanup* @make_cleanup_free_search_symbols(%struct.symbol_search*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @SYMBOL_LINKAGE_NAME(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @break_command(i8*, i32) #1

declare dso_local i32 @print_symbol_info(i32, %struct.TYPE_2__*, i32*, i32, i8*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
