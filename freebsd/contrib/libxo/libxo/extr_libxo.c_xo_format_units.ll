; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i8*, i64, i32 }

@xo_format_units.units_start_xml = internal global [9 x i8] c" units=\22\00", align 1
@xo_format_units.units_start_html = internal global [14 x i8] c" data-units=\22\00", align 1
@XOIF_UNITS_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"units\00", align 1
@XO_STYLE_XML = common dso_local global i64 0, align 8
@XO_STYLE_HTML = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i64)* @xo_format_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_format_units(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = load i32, i32* @XOIF_UNITS_PENDING, align 4
  %29 = call i32 @XOIF_ISSET(%struct.TYPE_12__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @xo_format_content(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i8* %33, i64 %34, i8* %35, i64 %36, i32 %37)
  br label %142

39:                                               ; preds = %4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %14, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call i64 @xo_style(%struct.TYPE_12__* %52)
  %54 = load i64, i64* @XO_STYLE_XML, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = call i32 @xo_buf_append(%struct.TYPE_14__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @xo_format_units.units_start_xml, i64 0, i64 0), i32 8)
  br label %69

59:                                               ; preds = %39
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = call i64 @xo_style(%struct.TYPE_12__* %60)
  %62 = load i64, i64* @XO_STYLE_HTML, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = call i32 @xo_buf_append(%struct.TYPE_14__* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @xo_format_units.units_start_html, i64 0, i64 0), i32 13)
  br label %68

67:                                               ; preds = %59
  br label %142

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @xo_data_escape(%struct.TYPE_12__* %73, i8* %74, i64 %75)
  br label %83

77:                                               ; preds = %69
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @xo_do_format_field(%struct.TYPE_12__* %78, i32* null, i8* %79, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = call i32 @xo_buf_append(%struct.TYPE_14__* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %16, align 8
  %96 = load i64, i64* %16, align 8
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %83
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %142

106:                                              ; preds = %83
  %107 = load i64, i64* %16, align 8
  %108 = call i8* @alloca(i64 %107)
  store i8* %108, i8** %17, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64, i64* %16, align 8
  %116 = call i32 @memcpy(i8* %109, i64 %114, i64 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i64, i64* %16, align 8
  %123 = add nsw i64 %121, %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add nsw i64 %126, %127
  %129 = inttoptr i64 %128 to i8*
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %13, align 8
  %132 = sub nsw i64 %130, %131
  %133 = call i32 @memmove(i64 %123, i8* %129, i64 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i8*, i8** %17, align 8
  %140 = load i64, i64* %16, align 8
  %141 = call i32 @memmove(i64 %138, i8* %139, i64 %140)
  br label %142

142:                                              ; preds = %106, %98, %67, %31
  ret void
}

declare dso_local i32 @XOIF_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xo_format_content(%struct.TYPE_12__*, i8*, i32*, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @xo_style(%struct.TYPE_12__*) #1

declare dso_local i32 @xo_buf_append(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @xo_data_escape(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @xo_do_format_field(%struct.TYPE_12__*, i32*, i8*, i64, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @memmove(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
