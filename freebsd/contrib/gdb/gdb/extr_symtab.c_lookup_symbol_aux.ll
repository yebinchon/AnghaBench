; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.symbol* (i8*, i8*, %struct.block*, i32, %struct.symtab**)*, %struct.value* (i32)* }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }
%struct.value = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@STATIC_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i8*, %struct.block*, i32, i32*, %struct.symtab**)* @lookup_symbol_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @lookup_symbol_aux(i8* %0, i8* %1, %struct.block* %2, i32 %3, i32* %4, %struct.symtab** %5) #0 {
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.symtab**, align 8
  %14 = alloca %struct.symbol*, align 8
  %15 = alloca %struct.value*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.block* %2, %struct.block** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.symtab** %5, %struct.symtab*** %13, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.block*, %struct.block** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %26 = call %struct.symbol* @lookup_symbol_aux_local(i8* %21, i8* %22, %struct.block* %23, i32 %24, %struct.symtab** %25)
  store %struct.symbol* %26, %struct.symbol** %14, align 8
  %27 = load %struct.symbol*, %struct.symbol** %14, align 8
  %28 = icmp ne %struct.symbol* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %30, %struct.symbol** %7, align 8
  br label %101

31:                                               ; preds = %20
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.value* (i32)*, %struct.value* (i32)** %33, align 8
  %35 = icmp ne %struct.value* (i32)* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.value* (i32)*, %struct.value* (i32)** %41, align 8
  %43 = call %struct.value* %42(i32 0)
  store %struct.value* %43, %struct.value** %15, align 8
  %44 = load %struct.value*, %struct.value** %15, align 8
  %45 = icmp ne %struct.value* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.value*, %struct.value** %15, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @check_field(%struct.value* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %12, align 8
  store i32 1, i32* %52, align 4
  %53 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %54 = icmp ne %struct.symtab** %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct.symtab**, %struct.symtab*** %13, align 8
  store %struct.symtab* null, %struct.symtab** %56, align 8
  br label %57

57:                                               ; preds = %55, %51
  store %struct.symbol* null, %struct.symbol** %7, align 8
  br label %101

58:                                               ; preds = %46, %39
  br label %59

59:                                               ; preds = %58, %36, %31
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.symbol* (i8*, i8*, %struct.block*, i32, %struct.symtab**)*, %struct.symbol* (i8*, i8*, %struct.block*, i32, %struct.symtab**)** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.block*, %struct.block** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %68 = call %struct.symbol* %62(i8* %63, i8* %64, %struct.block* %65, i32 %66, %struct.symtab** %67)
  store %struct.symbol* %68, %struct.symbol** %14, align 8
  %69 = load %struct.symbol*, %struct.symbol** %14, align 8
  %70 = icmp ne %struct.symbol* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %72, %struct.symbol** %7, align 8
  br label %101

73:                                               ; preds = %59
  %74 = load i32, i32* @STATIC_BLOCK, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %79 = call %struct.symbol* @lookup_symbol_aux_symtabs(i32 %74, i8* %75, i8* %76, i32 %77, %struct.symtab** %78)
  store %struct.symbol* %79, %struct.symbol** %14, align 8
  %80 = load %struct.symbol*, %struct.symbol** %14, align 8
  %81 = icmp ne %struct.symbol* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %83, %struct.symbol** %7, align 8
  br label %101

84:                                               ; preds = %73
  %85 = load i32, i32* @STATIC_BLOCK, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %90 = call %struct.symbol* @lookup_symbol_aux_psymtabs(i32 %85, i8* %86, i8* %87, i32 %88, %struct.symtab** %89)
  store %struct.symbol* %90, %struct.symbol** %14, align 8
  %91 = load %struct.symbol*, %struct.symbol** %14, align 8
  %92 = icmp ne %struct.symbol* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %94, %struct.symbol** %7, align 8
  br label %101

95:                                               ; preds = %84
  %96 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %97 = icmp ne %struct.symtab** %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load %struct.symtab**, %struct.symtab*** %13, align 8
  store %struct.symtab* null, %struct.symtab** %99, align 8
  br label %100

100:                                              ; preds = %98, %95
  store %struct.symbol* null, %struct.symbol** %7, align 8
  br label %101

101:                                              ; preds = %100, %93, %82, %71, %57, %29
  %102 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %102
}

declare dso_local %struct.symbol* @lookup_symbol_aux_local(i8*, i8*, %struct.block*, i32, %struct.symtab**) #1

declare dso_local i64 @check_field(%struct.value*, i8*) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_symtabs(i32, i8*, i8*, i32, %struct.symtab**) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_psymtabs(i32, i8*, i8*, i32, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
