; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_tbl_cdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_tbl_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i8*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.tbl_dat* }
%struct.tbl_dat = type { i32, i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8 }

@TBL_PART_DATA = common dso_local global i8* null, align 8
@TBL_DATA_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TBL_CELL_DOWN = common dso_local global i64 0, align 8
@MANDOCERR_TBLDATA_SPAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_cdata(%struct.tbl_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tbl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tbl_dat*, align 8
  %10 = alloca i64, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %12 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  store %struct.tbl_dat* %15, %struct.tbl_dat** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 84
  br i1 %22, label %23, label %84

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 125
  br i1 %31, label %32, label %84

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %42 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %32
  %48 = load i8*, i8** @TBL_PART_DATA, align 8
  %49 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %50 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %61, %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %63 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %64 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @getdata(%struct.tbl_node* %62, %struct.TYPE_6__* %65, i32 %66, i8* %67, i32* %8)
  br label %53

69:                                               ; preds = %53
  br label %152

70:                                               ; preds = %32
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i8*, i8** @TBL_PART_DATA, align 8
  %80 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %81 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %152

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %23, %4
  %85 = load i32, i32* @TBL_DATA_DATA, align 4
  %86 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %87 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %89 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %91 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %128

94:                                               ; preds = %84
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @strlen(i8* %98)
  %100 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %101 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = add nsw i32 %99, %103
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %10, align 8
  %107 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %108 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i8* @mandoc_realloc(i8* %109, i64 %110)
  %112 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %113 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %115 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @strlcat(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %120 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @strlcat(i8* %121, i8* %125, i64 %126)
  br label %136

128:                                              ; preds = %84
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i8* @mandoc_strdup(i8* %132)
  %134 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %135 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %128, %94
  %137 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %138 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TBL_CELL_DOWN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load i32, i32* @MANDOCERR_TBLDATA_SPAN, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %149 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @mandoc_msg(i32 %145, i32 %146, i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %69, %78, %144, %136
  ret void
}

declare dso_local i32 @getdata(%struct.tbl_node*, %struct.TYPE_6__*, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
