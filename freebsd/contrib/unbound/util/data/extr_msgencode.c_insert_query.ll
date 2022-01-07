; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_insert_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_insert_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.compress_tree_node = type { i32 }
%struct.regional = type { i32 }

@RETVAL_TRUNC = common dso_local global i32 0, align 4
@RETVAL_OUTMEM = common dso_local global i32 0, align 4
@RETVAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_info*, %struct.compress_tree_node**, i32*, %struct.regional*)* @insert_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_query(%struct.query_info* %0, %struct.compress_tree_node** %1, i32* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.compress_tree_node**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.query_info* %0, %struct.query_info** %6, align 8
  store %struct.compress_tree_node** %1, %struct.compress_tree_node*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %12 = load %struct.query_info*, %struct.query_info** %6, align 8
  %13 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.query_info*, %struct.query_info** %6, align 8
  %18 = getelementptr inbounds %struct.query_info, %struct.query_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.query_info*, %struct.query_info** %6, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32* [ %24, %16 ], [ %28, %25 ]
  store i32* %30, i32** %10, align 8
  %31 = load %struct.query_info*, %struct.query_info** %6, align 8
  %32 = getelementptr inbounds %struct.query_info, %struct.query_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.query_info*, %struct.query_info** %6, align 8
  %37 = getelementptr inbounds %struct.query_info, %struct.query_info* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %48

44:                                               ; preds = %29
  %45 = load %struct.query_info*, %struct.query_info** %6, align 8
  %46 = getelementptr inbounds %struct.query_info, %struct.query_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %35
  %49 = phi i64 [ %43, %35 ], [ %47, %44 ]
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @sldns_buffer_remaining(i32* %50)
  %52 = sext i32 %51 to i64
  %53 = load %struct.query_info*, %struct.query_info** %6, align 8
  %54 = getelementptr inbounds %struct.query_info, %struct.query_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %59, i32* %5, align 4
  br label %99

60:                                               ; preds = %48
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @dname_count_labels(i32* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @sldns_buffer_position(i32* %64)
  %66 = load %struct.regional*, %struct.regional** %9, align 8
  %67 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %7, align 8
  %68 = call i32 @compress_tree_store(i32* %61, i32 %63, i32 %65, %struct.regional* %66, i32* null, %struct.compress_tree_node** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @RETVAL_OUTMEM, align 4
  store i32 %71, i32* %5, align 4
  br label %99

72:                                               ; preds = %60
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @sldns_buffer_current(i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @sldns_buffer_skip(i32* %78, i32 %80)
  br label %87

82:                                               ; preds = %72
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @sldns_buffer_write(i32* %83, i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.query_info*, %struct.query_info** %6, align 8
  %90 = getelementptr inbounds %struct.query_info, %struct.query_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sldns_buffer_write_u16(i32* %88, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.query_info*, %struct.query_info** %6, align 8
  %95 = getelementptr inbounds %struct.query_info, %struct.query_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @sldns_buffer_write_u16(i32* %93, i32 %96)
  %98 = load i32, i32* @RETVAL_OK, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %87, %70, %58
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @compress_tree_store(i32*, i32, i32, %struct.regional*, i32*, %struct.compress_tree_node**) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i32* @sldns_buffer_current(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i64) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
