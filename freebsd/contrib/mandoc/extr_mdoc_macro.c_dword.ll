; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DELIM_MAX = common dso_local global i32 0, align 4
@MDOC_SYNOPSIS = common dso_local global i32 0, align 4
@MDOC_KEEP = common dso_local global i32 0, align 4
@MDOC_SMOFF = common dso_local global i32 0, align 4
@DELIM_NONE = common dso_local global i32 0, align 4
@ROFFT_TEXT = common dso_local global i64 0, align 8
@DELIM_OPEN = common dso_local global i32 0, align 4
@NODE_DELIMO = common dso_local global i32 0, align 4
@DELIM_CLOSE = common dso_local global i32 0, align 4
@MDOC_NODELIMC = common dso_local global i32 0, align 4
@MDOC_Fd = common dso_local global i64 0, align 8
@NODE_DELIMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, i32, i8*, i32, i32)* @dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dword(%struct.roff_man* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @DELIM_MAX, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @mdoc_isdelim(i8* %17)
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %24 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MDOC_SYNOPSIS, align 4
  %27 = load i32, i32* @MDOC_KEEP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MDOC_SMOFF, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @DELIM_NONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %39 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ROFFT_TEXT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %47 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @mdoc_isdelim(i8* %50)
  %52 = load i32, i32* @DELIM_NONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @roff_word_append(%struct.roff_man* %55, i8* %56)
  br label %112

58:                                               ; preds = %45, %37, %33, %22, %19
  %59 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @roff_word_alloc(%struct.roff_man* %59, i32 %60, i32 %61, i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @DELIM_OPEN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, i32* @NODE_DELIMO, align 4
  %69 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %70 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 8
  br label %105

75:                                               ; preds = %58
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @DELIM_CLOSE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %81 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MDOC_NODELIMC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %79
  %87 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %88 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MDOC_Fd, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load i32, i32* @NODE_DELIMC, align 4
  %98 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %99 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %97
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %96, %86, %79, %75
  br label %105

105:                                              ; preds = %104, %67
  %106 = load i32, i32* @MDOC_NODELIMC, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %109 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %54
  ret void
}

declare dso_local i32 @mdoc_isdelim(i8*) #1

declare dso_local i32 @roff_word_append(%struct.roff_man*, i8*) #1

declare dso_local i32 @roff_word_alloc(%struct.roff_man*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
