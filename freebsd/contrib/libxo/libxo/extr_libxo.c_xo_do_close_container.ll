; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32 }

@XOF_PRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XSF_DTRT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"missing name without 'dtrt' mode\00", align 1
@XO_FAILURE_NAME = common dso_local global i8* null, align 8
@XSS_CLOSE_CONTAINER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%*s</%s%s>%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%*s}%s\00", align 1
@XSF_NOT_FIRST = common dso_local global i32 0, align 4
@XO_OP_CLOSE_CONTAINER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @xo_do_close_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_close_container(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call %struct.TYPE_16__* @xo_default(%struct.TYPE_16__* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = load i32, i32* @XOF_PRETTY, align 4
  %16 = call i64 @XOF_ISSET(%struct.TYPE_16__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 %28
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %8, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @alloca(i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %4, align 8
  br label %58

46:                                               ; preds = %22
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XSF_DTRT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @xo_failure(%struct.TYPE_16__* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** @XO_FAILURE_NAME, align 8
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @xo_xml_leader(%struct.TYPE_16__* %60, i8* %61)
  store i8* %62, i8** %11, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i32 @xo_style(%struct.TYPE_16__* %63)
  switch i32 %64, label %126 [
    i32 128, label %65
    i32 131, label %79
    i32 132, label %111
    i32 129, label %111
    i32 130, label %116
    i32 133, label %117
  ]

65:                                               ; preds = %59
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @XSS_CLOSE_CONTAINER, align 4
  %69 = call i32 @xo_depth_change(%struct.TYPE_16__* %66, i8* %67, i32 -1, i32 -1, i32 %68, i32 0)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = call i32 @xo_indent(%struct.TYPE_16__* %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 (%struct.TYPE_16__*, i8*, i8*, i8*, i8*, i8*, ...) @xo_printf(%struct.TYPE_16__* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %75, i8* %76, i8* %77)
  store i32 %78, i32* %5, align 4
  br label %126

79:                                               ; preds = %59
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = call i32 @xo_stack_set_flags(%struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = load i32, i32* @XOF_PRETTY, align 4
  %84 = call i64 @XOF_ISSET(%struct.TYPE_16__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %87, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @XSS_CLOSE_CONTAINER, align 4
  %91 = call i32 @xo_depth_change(%struct.TYPE_16__* %88, i8* %89, i32 -1, i32 -1, i32 %90, i32 0)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = call i32 @xo_indent(%struct.TYPE_16__* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (%struct.TYPE_16__*, i8*, i8*, i8*, i8*, i8*, ...) @xo_printf(%struct.TYPE_16__* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %93, i8* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @XSF_NOT_FIRST, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %100
  store i32 %110, i32* %108, align 8
  br label %126

111:                                              ; preds = %59, %59
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* @XSS_CLOSE_CONTAINER, align 4
  %115 = call i32 @xo_depth_change(%struct.TYPE_16__* %112, i8* %113, i32 -1, i32 0, i32 %114, i32 0)
  br label %126

116:                                              ; preds = %59
  br label %126

117:                                              ; preds = %59
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* @XSS_CLOSE_CONTAINER, align 4
  %121 = call i32 @xo_depth_change(%struct.TYPE_16__* %118, i8* %119, i32 -1, i32 0, i32 %120, i32 0)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load i32, i32* @XO_OP_CLOSE_CONTAINER, align 4
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @xo_encoder_handle(%struct.TYPE_16__* %122, i32 %123, i8* %124, i32* null, i32 0)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %59, %117, %116, %111, %79, %65
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_16__* @xo_default(%struct.TYPE_16__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @xo_xml_leader(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @xo_style(%struct.TYPE_16__*) #1

declare dso_local i32 @xo_depth_change(%struct.TYPE_16__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_printf(%struct.TYPE_16__*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @xo_indent(%struct.TYPE_16__*) #1

declare dso_local i32 @xo_stack_set_flags(%struct.TYPE_16__*) #1

declare dso_local i32 @xo_encoder_handle(%struct.TYPE_16__*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
