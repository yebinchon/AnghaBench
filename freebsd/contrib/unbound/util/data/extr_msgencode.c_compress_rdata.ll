; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32 }
%struct.TYPE_3__ = type { i32*, i64 }

@RETVAL_OK = common dso_local global i32 0, align 4
@RETVAL_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, %struct.regional*, %struct.compress_tree_node**, %struct.TYPE_3__*)* @compress_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_rdata(i32* %0, i64* %1, i64 %2, %struct.regional* %3, %struct.compress_tree_node** %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.compress_tree_node**, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.regional* %3, %struct.regional** %11, align 8
  store %struct.compress_tree_node** %4, %struct.compress_tree_node*** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @sldns_buffer_position(i32* %21)
  store i64 %22, i64* %19, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %20, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @sldns_buffer_skip(i32* %26, i32 2)
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  store i64* %29, i64** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 2
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %104, %6
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %20, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %107

40:                                               ; preds = %38
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %74 [
    i32 129, label %48
    i32 128, label %70
  ]

48:                                               ; preds = %40
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @dname_count_size_labels(i64* %49, i64* %17)
  store i32 %50, i32* %14, align 4
  %51 = load i64*, i64** %9, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.regional*, %struct.regional** %11, align 8
  %55 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %12, align 8
  %56 = call i32 @compress_any_dname(i64* %51, i32* %52, i32 %53, %struct.regional* %54, %struct.compress_tree_node** %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* @RETVAL_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %132

61:                                               ; preds = %48
  %62 = load i64, i64* %17, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 %62
  store i64* %64, i64** %9, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %20, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %20, align 8
  store i64 0, i64* %18, align 8
  br label %83

70:                                               ; preds = %40
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %18, align 8
  br label %83

74:                                               ; preds = %40
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @get_rdf_size(i32 %81)
  store i64 %82, i64* %18, align 8
  br label %83

83:                                               ; preds = %74, %70, %61
  %84 = load i64, i64* %18, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @sldns_buffer_remaining(i32* %87)
  %89 = load i64, i64* %18, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %92, i32* %7, align 4
  br label %132

93:                                               ; preds = %86
  %94 = load i32*, i32** %8, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i32 @sldns_buffer_write(i32* %94, i64* %95, i64 %96)
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64* %103, i64** %9, align 8
  br label %104

104:                                              ; preds = %93, %83
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %32

107:                                              ; preds = %38
  %108 = load i64, i64* %10, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32*, i32** %8, align 8
  %112 = call i64 @sldns_buffer_remaining(i32* %111)
  %113 = load i64, i64* %10, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %116, i32* %7, align 4
  br label %132

117:                                              ; preds = %110
  %118 = load i32*, i32** %8, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @sldns_buffer_write(i32* %118, i64* %119, i64 %120)
  br label %122

122:                                              ; preds = %117, %107
  %123 = load i32*, i32** %8, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i64 @sldns_buffer_position(i32* %125)
  %127 = load i64, i64* %19, align 8
  %128 = sub i64 %126, %127
  %129 = sub i64 %128, 2
  %130 = call i32 @sldns_buffer_write_u16_at(i32* %123, i64 %124, i64 %129)
  %131 = load i32, i32* @RETVAL_OK, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %122, %115, %91, %59
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @dname_count_size_labels(i64*, i64*) #1

declare dso_local i32 @compress_any_dname(i64*, i32*, i32, %struct.regional*, %struct.compress_tree_node**) #1

declare dso_local i64 @get_rdf_size(i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i64*, i64) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
