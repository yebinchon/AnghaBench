; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_html_tblopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_html_tblopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.tbl_span = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@html_tbl_len = common dso_local global i32 0, align 4
@html_tbl_strlen = common dso_local global i32 0, align 4
@html_tbl_sulen = common dso_local global i32 0, align 4
@TAG_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"c?ss\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tbl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@TBL_OPT_ALLBOX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"border-style\00", align 1
@TBL_OPT_DBOX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@TBL_OPT_BOX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"border-top-style\00", align 1
@TBL_SPAN_DHORIZ = common dso_local global i64 0, align 8
@TBL_SPAN_HORIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*, %struct.tbl_span*)* @html_tblopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @html_tblopen(%struct.html* %0, %struct.tbl_span* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.tbl_span*, align 8
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.tbl_span* %1, %struct.tbl_span** %4, align 8
  %5 = load %struct.html*, %struct.html** %3, align 8
  %6 = call i32 @html_close_paragraph(%struct.html* %5)
  %7 = load %struct.html*, %struct.html** %3, align 8
  %8 = getelementptr inbounds %struct.html, %struct.html* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i32, i32* @html_tbl_len, align 4
  %14 = load %struct.html*, %struct.html** %3, align 8
  %15 = getelementptr inbounds %struct.html, %struct.html* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @html_tbl_strlen, align 4
  %18 = load %struct.html*, %struct.html** %3, align 8
  %19 = getelementptr inbounds %struct.html, %struct.html* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @html_tbl_sulen, align 4
  %22 = load %struct.html*, %struct.html** %3, align 8
  %23 = getelementptr inbounds %struct.html, %struct.html* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.html*, %struct.html** %3, align 8
  %26 = getelementptr inbounds %struct.html, %struct.html* %25, i32 0, i32 1
  %27 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %28 = call i32 @tblcalc(%struct.TYPE_4__* %26, %struct.tbl_span* %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %12, %2
  %30 = load %struct.html*, %struct.html** %3, align 8
  %31 = getelementptr inbounds %struct.html, %struct.html* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* null, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.html*, %struct.html** %3, align 8
  %37 = load i32, i32* @TAG_TABLE, align 4
  %38 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %39 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null
  %48 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %49 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TBL_OPT_DBOX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  br label %68

57:                                               ; preds = %29
  %58 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %59 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TBL_OPT_BOX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* null
  br label %68

68:                                               ; preds = %57, %56
  %69 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %56 ], [ %67, %57 ]
  %70 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %71 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TBL_SPAN_DHORIZ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %84

76:                                               ; preds = %68
  %77 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %78 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TBL_SPAN_HORIZ, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* null
  br label %84

84:                                               ; preds = %76, %75
  %85 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %75 ], [ %83, %76 ]
  %86 = call i32* @print_otag(%struct.html* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = load %struct.html*, %struct.html** %3, align 8
  %88 = getelementptr inbounds %struct.html, %struct.html* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  ret void
}

declare dso_local i32 @html_close_paragraph(%struct.html*) #1

declare dso_local i32 @tblcalc(%struct.TYPE_4__*, %struct.tbl_span*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @print_otag(%struct.html*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
