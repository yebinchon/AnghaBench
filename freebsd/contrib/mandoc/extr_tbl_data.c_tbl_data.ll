; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_tbl_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_tbl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { %struct.TYPE_4__, %struct.tbl_row*, %struct.tbl_span* }
%struct.TYPE_4__ = type { i64 }
%struct.tbl_row = type { %struct.tbl_row*, %struct.tbl_cell*, %struct.TYPE_3__* }
%struct.tbl_cell = type { i64, %struct.tbl_cell* }
%struct.TYPE_3__ = type { i64 }
%struct.tbl_span = type { i64, %struct.tbl_row* }

@TBL_SPAN_DATA = common dso_local global i64 0, align 8
@TBL_SPAN_HORIZ = common dso_local global i64 0, align 8
@TBL_SPAN_DHORIZ = common dso_local global i64 0, align 8
@TBL_CELL_HORIZ = common dso_local global i64 0, align 8
@TBL_CELL_DHORIZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_data(%struct.tbl_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tbl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tbl_row*, align 8
  %10 = alloca %struct.tbl_cell*, align 8
  %11 = alloca %struct.tbl_span*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %13 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %12, i32 0, i32 2
  %14 = load %struct.tbl_span*, %struct.tbl_span** %13, align 8
  store %struct.tbl_span* %14, %struct.tbl_span** %11, align 8
  %15 = icmp eq %struct.tbl_span* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %18 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %17, i32 0, i32 1
  %19 = load %struct.tbl_row*, %struct.tbl_row** %18, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %22 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TBL_SPAN_DATA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %28 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %27, i32 0, i32 1
  %29 = load %struct.tbl_row*, %struct.tbl_row** %28, align 8
  %30 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %29, i32 0, i32 0
  %31 = load %struct.tbl_row*, %struct.tbl_row** %30, align 8
  %32 = icmp ne %struct.tbl_row* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %35 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %34, i32 0, i32 1
  %36 = load %struct.tbl_row*, %struct.tbl_row** %35, align 8
  %37 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %36, i32 0, i32 0
  %38 = load %struct.tbl_row*, %struct.tbl_row** %37, align 8
  br label %43

39:                                               ; preds = %26, %20
  %40 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %41 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %40, i32 0, i32 1
  %42 = load %struct.tbl_row*, %struct.tbl_row** %41, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi %struct.tbl_row* [ %38, %33 ], [ %42, %39 ]
  br label %45

45:                                               ; preds = %43, %16
  %46 = phi %struct.tbl_row* [ %19, %16 ], [ %44, %43 ]
  store %struct.tbl_row* %46, %struct.tbl_row** %9, align 8
  %47 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %48 = icmp ne %struct.tbl_row* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %78 [
    i32 46, label %61
    i32 95, label %62
    i32 61, label %70
  ]

61:                                               ; preds = %56
  br label %161

62:                                               ; preds = %56
  %63 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %66 = call %struct.tbl_span* @newspan(%struct.tbl_node* %63, i32 %64, %struct.tbl_row* %65)
  store %struct.tbl_span* %66, %struct.tbl_span** %11, align 8
  %67 = load i64, i64* @TBL_SPAN_HORIZ, align 8
  %68 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %69 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %161

70:                                               ; preds = %56
  %71 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %74 = call %struct.tbl_span* @newspan(%struct.tbl_node* %71, i32 %72, %struct.tbl_row* %73)
  store %struct.tbl_span* %74, %struct.tbl_span** %11, align 8
  %75 = load i64, i64* @TBL_SPAN_DHORIZ, align 8
  %76 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %77 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %161

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %45
  br label %81

81:                                               ; preds = %128, %80
  %82 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %83 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %82, i32 0, i32 0
  %84 = load %struct.tbl_row*, %struct.tbl_row** %83, align 8
  %85 = icmp ne %struct.tbl_row* %84, null
  br i1 %85, label %86, label %139

86:                                               ; preds = %81
  %87 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %88 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %94 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %139

99:                                               ; preds = %86
  %100 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %101 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %100, i32 0, i32 1
  %102 = load %struct.tbl_cell*, %struct.tbl_cell** %101, align 8
  store %struct.tbl_cell* %102, %struct.tbl_cell** %10, align 8
  br label %103

103:                                              ; preds = %120, %99
  %104 = load %struct.tbl_cell*, %struct.tbl_cell** %10, align 8
  %105 = icmp ne %struct.tbl_cell* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load %struct.tbl_cell*, %struct.tbl_cell** %10, align 8
  %108 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TBL_CELL_HORIZ, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.tbl_cell*, %struct.tbl_cell** %10, align 8
  %114 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TBL_CELL_DHORIZ, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %124

119:                                              ; preds = %112, %106
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.tbl_cell*, %struct.tbl_cell** %10, align 8
  %122 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %121, i32 0, i32 1
  %123 = load %struct.tbl_cell*, %struct.tbl_cell** %122, align 8
  store %struct.tbl_cell* %123, %struct.tbl_cell** %10, align 8
  br label %103

124:                                              ; preds = %118, %103
  %125 = load %struct.tbl_cell*, %struct.tbl_cell** %10, align 8
  %126 = icmp ne %struct.tbl_cell* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %139

128:                                              ; preds = %124
  %129 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %132 = call %struct.tbl_span* @newspan(%struct.tbl_node* %129, i32 %130, %struct.tbl_row* %131)
  store %struct.tbl_span* %132, %struct.tbl_span** %11, align 8
  %133 = load i64, i64* @TBL_SPAN_DATA, align 8
  %134 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %135 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %137 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %136, i32 0, i32 0
  %138 = load %struct.tbl_row*, %struct.tbl_row** %137, align 8
  store %struct.tbl_row* %138, %struct.tbl_row** %9, align 8
  br label %81

139:                                              ; preds = %127, %98, %81
  %140 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %143 = call %struct.tbl_span* @newspan(%struct.tbl_node* %140, i32 %141, %struct.tbl_row* %142)
  store %struct.tbl_span* %143, %struct.tbl_span** %11, align 8
  %144 = load i64, i64* @TBL_SPAN_DATA, align 8
  %145 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %146 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %155, %139
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %157 = load %struct.tbl_span*, %struct.tbl_span** %11, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @getdata(%struct.tbl_node* %156, %struct.tbl_span* %157, i32 %158, i8* %159, i32* %8)
  br label %147

161:                                              ; preds = %61, %62, %70, %147
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tbl_span* @newspan(%struct.tbl_node*, i32, %struct.tbl_row*) #1

declare dso_local i32 @getdata(%struct.tbl_node*, %struct.tbl_span*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
