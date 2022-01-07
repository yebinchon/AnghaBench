; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@XOF_PRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XOF_NO_TOP = common dso_local global i32 0, align 4
@XOIF_TOP_EMITTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"NULL passed for list name\00", align 1
@XO_FAILURE_NAME = common dso_local global i8* null, align 8
@XSF_NOT_FIRST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s%*s\22%s\22: [%s\00", align 1
@XO_OP_OPEN_LIST = common dso_local global i32 0, align 4
@XSS_OPEN_LIST = common dso_local global i32 0, align 4
@XSF_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i8*)* @xo_do_open_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_open_list(%struct.TYPE_17__* %0, i32 %1, i8* %2) #0 {
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
  switch i32 %20, label %89 [
    i32 128, label %21
    i32 129, label %83
  ]

21:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load i32, i32* @XOF_NO_TOP, align 4
  %24 = call i64 @XOF_ISSET(%struct.TYPE_17__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = load i32, i32* @XOIF_TOP_EMITTED, align 4
  %29 = call i32 @XOIF_ISSET(%struct.TYPE_17__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @xo_emit_top(%struct.TYPE_17__* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %26, %21
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i32 @xo_failure(%struct.TYPE_17__* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** @XO_FAILURE_NAME, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = call i32 @xo_stack_set_flags(%struct.TYPE_17__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XSF_NOT_FIRST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load i32, i32* @XOF_PRETTY, align 4
  %60 = call i64 @XOF_ISSET(%struct.TYPE_17__* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %57, %42
  %65 = load i32, i32* @XSF_NOT_FIRST, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %65
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = call i32 @xo_indent(%struct.TYPE_17__* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @xo_printf(%struct.TYPE_17__* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %81)
  store i32 %82, i32* %7, align 4
  br label %89

83:                                               ; preds = %3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = load i32, i32* @XO_OP_OPEN_LIST, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @xo_encoder_handle(%struct.TYPE_17__* %84, i32 %85, i8* %86, i32* null, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %3, %83, %64
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @XSS_OPEN_LIST, align 4
  %94 = load i32, i32* @XSF_LIST, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @xo_stack_flags(i32 %95)
  %97 = or i32 %94, %96
  %98 = call i32 @xo_depth_change(%struct.TYPE_17__* %90, i8* %91, i32 1, i32 %92, i32 %93, i32 %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_17__* @xo_default(%struct.TYPE_17__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xo_style(%struct.TYPE_17__*) #1

declare dso_local i32 @XOIF_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xo_emit_top(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @xo_failure(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @xo_stack_set_flags(%struct.TYPE_17__*) #1

declare dso_local i32 @xo_printf(%struct.TYPE_17__*, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @xo_indent(%struct.TYPE_17__*) #1

declare dso_local i32 @xo_encoder_handle(%struct.TYPE_17__*, i32, i8*, i32*, i32) #1

declare dso_local i32 @xo_depth_change(%struct.TYPE_17__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_stack_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
