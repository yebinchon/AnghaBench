; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_open_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@XOF_PRETTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"NULL passed for instance name\00", align 1
@XO_FAILURE_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%*s<%s%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@XSF_NOT_FIRST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s%*s{%s\00", align 1
@XO_OP_OPEN_INSTANCE = common dso_local global i32 0, align 4
@XSS_OPEN_INSTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i8*)* @xo_do_open_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_open_instance(%struct.TYPE_19__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = call %struct.TYPE_19__* @xo_default(%struct.TYPE_19__* %11)
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = load i32, i32* @XOF_PRETTY, align 4
  %15 = call i64 @XOF_ISSET(%struct.TYPE_19__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = call i32 @xo_failure(%struct.TYPE_19__* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8*, i8** @XO_FAILURE_NAME, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @xo_xml_leader(%struct.TYPE_19__* %26, i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = call i32 @xo_style(%struct.TYPE_19__* %34)
  switch i32 %35, label %139 [
    i32 128, label %36
    i32 130, label %92
    i32 129, label %132
    i32 131, label %133
  ]

36:                                               ; preds = %25
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = call i8* @xo_indent(%struct.TYPE_19__* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @xo_printf(%struct.TYPE_19__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %36
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %56, %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %72, %76
  %78 = call i32 @xo_data_append(%struct.TYPE_19__* %64, i32 %68, i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %52, %36
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @xo_printf(%struct.TYPE_19__* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %139

92:                                               ; preds = %25
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = call i32 @xo_stack_set_flags(%struct.TYPE_19__* %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @XSF_NOT_FIRST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %92
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = load i32, i32* @XOF_PRETTY, align 4
  %110 = call i64 @XOF_ISSET(%struct.TYPE_19__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %107, %92
  %115 = load i32, i32* @XSF_NOT_FIRST, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %115
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = call i8* @xo_indent(%struct.TYPE_19__* %128)
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @xo_printf(%struct.TYPE_19__* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %127, i8* %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  store i32 %131, i32* %7, align 4
  br label %139

132:                                              ; preds = %25
  br label %139

133:                                              ; preds = %25
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = load i32, i32* @XO_OP_OPEN_INSTANCE, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @xo_encoder_handle(%struct.TYPE_19__* %134, i32 %135, i8* %136, i32* null, i32 %137)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %25, %133, %132, %114, %86
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* @XSS_OPEN_INSTANCE, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @xo_stack_flags(i32 %143)
  %145 = call i32 @xo_depth_change(%struct.TYPE_19__* %140, i8* %141, i32 1, i32 1, i32 %142, i32 %144)
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_19__* @xo_default(%struct.TYPE_19__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @xo_xml_leader(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @xo_style(%struct.TYPE_19__*) #1

declare dso_local i32 @xo_printf(%struct.TYPE_19__*, i8*, i8*, ...) #1

declare dso_local i8* @xo_indent(%struct.TYPE_19__*) #1

declare dso_local i32 @xo_data_append(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @xo_stack_set_flags(%struct.TYPE_19__*) #1

declare dso_local i32 @xo_encoder_handle(%struct.TYPE_19__*, i32, i8*, i32*, i32) #1

declare dso_local i32 @xo_depth_change(%struct.TYPE_19__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_stack_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
