; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@language_cplus = common dso_local global i64 0, align 8
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@case_sensitivity = common dso_local global i64 0, align 8
@case_sensitive_off = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @lookup_symbol(i8* %0, %struct.block* %1, i32 %2, i32* %3, %struct.symtab** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.symtab**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.block* %1, %struct.block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.symtab** %4, %struct.symtab*** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @language_cplus, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @DMGL_ANSI, align 4
  %28 = load i32, i32* @DMGL_PARAMS, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @cplus_demangle(i8* %26, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %12, align 8
  store i32 1, i32* %14, align 4
  br label %36

36:                                               ; preds = %33, %25
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i64, i64* @case_sensitivity, align 8
  %39 = load i64, i64* @case_sensitive_off, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i64 @alloca(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %63, %41
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @tolower(i8 signext %57)
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %18, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %16, align 8
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %66, %37
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.block*, %struct.block** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.symtab**, %struct.symtab*** %10, align 8
  %79 = call %struct.symbol* @lookup_symbol_aux(i8* %73, i8* %74, %struct.block* %75, i32 %76, i32* %77, %struct.symtab** %78)
  store %struct.symbol* %79, %struct.symbol** %15, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @xfree(i8* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.symbol*, %struct.symbol** %15, align 8
  ret %struct.symbol* %86
}

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local %struct.symbol* @lookup_symbol_aux(i8*, i8*, %struct.block*, i32, i32*, %struct.symtab**) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
