; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_leaf_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_leaf_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@XOF_PRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XOF_NO_TOP = common dso_local global i32 0, align 4
@XOIF_TOP_EMITTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%*s{%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"NULL passed for list name\00", align 1
@XO_FAILURE_NAME = common dso_local global i8* null, align 8
@XSF_NOT_FIRST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s%*s\22%s\22: [%s\00", align 1
@XO_OP_OPEN_LEAF_LIST = common dso_local global i32 0, align 4
@XSS_OPEN_LEAF_LIST = common dso_local global i32 0, align 4
@XSF_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i8*)* @xo_do_open_leaf_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_open_leaf_list(%struct.TYPE_17__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call %struct.TYPE_17__* @xo_default(%struct.TYPE_17__* %11)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = load i32, i32* @XOF_PRETTY, align 4
  %15 = call i64 @XOF_ISSET(%struct.TYPE_17__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call i32 @xo_style(%struct.TYPE_17__* %19)
  switch i32 %20, label %99 [
    i32 128, label %21
    i32 129, label %93
  ]

21:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load i32, i32* @XOF_NO_TOP, align 4
  %24 = call i64 @XOF_ISSET(%struct.TYPE_17__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = load i32, i32* @XOIF_TOP_EMITTED, align 4
  %29 = call i32 @XOIF_ISSET(%struct.TYPE_17__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = call i32 @xo_indent(%struct.TYPE_17__* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (%struct.TYPE_17__*, i8*, i8*, i8*, i8*, ...) @xo_printf(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load i32, i32* @XOIF_TOP_EMITTED, align 4
  %41 = call i32 @XOIF_SET(%struct.TYPE_17__* %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %26
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = call i32 @xo_failure(%struct.TYPE_17__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** @XO_FAILURE_NAME, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = call i32 @xo_stack_set_flags(%struct.TYPE_17__* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @XSF_NOT_FIRST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = load i32, i32* @XOF_PRETTY, align 4
  %68 = call i64 @XOF_ISSET(%struct.TYPE_17__* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %65, %50
  %73 = load i32, i32* @XSF_NOT_FIRST, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %73
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = call i32 @xo_indent(%struct.TYPE_17__* %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 (%struct.TYPE_17__*, i8*, i8*, i8*, i8*, ...) @xo_printf(%struct.TYPE_17__* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %91)
  store i32 %92, i32* %7, align 4
  br label %99

93:                                               ; preds = %3
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = load i32, i32* @XO_OP_OPEN_LEAF_LIST, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @xo_encoder_handle(%struct.TYPE_17__* %94, i32 %95, i8* %96, i32* null, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %3, %93, %72
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @XSS_OPEN_LEAF_LIST, align 4
  %104 = load i32, i32* @XSF_LIST, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @xo_stack_flags(i32 %105)
  %107 = or i32 %104, %106
  %108 = call i32 @xo_depth_change(%struct.TYPE_17__* %100, i8* %101, i32 1, i32 %102, i32 %103, i32 %107)
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_17__* @xo_default(%struct.TYPE_17__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xo_style(%struct.TYPE_17__*) #1

declare dso_local i32 @XOIF_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xo_printf(%struct.TYPE_17__*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @xo_indent(%struct.TYPE_17__*) #1

declare dso_local i32 @XOIF_SET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @xo_stack_set_flags(%struct.TYPE_17__*) #1

declare dso_local i32 @xo_encoder_handle(%struct.TYPE_17__*, i32, i8*, i32*, i32) #1

declare dso_local i32 @xo_depth_change(%struct.TYPE_17__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_stack_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
