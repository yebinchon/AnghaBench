; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i64, i32, i32, %struct.tbl_span* }
%struct.tbl_span = type { %struct.tbl_span*, i32* }

@MANDOCERR_BLK_NOEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@TBL_PART_CDATA = common dso_local global i64 0, align 8
@MANDOCERR_TBLDATA_BLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TE\00", align 1
@MANDOCERR_TBLDATA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tbl_end(%struct.tbl_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tbl_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tbl_span*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @MANDOCERR_BLK_NOEND, align 4
  %11 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %12 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %15 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mandoc_msg(i32 %10, i32 %13, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %20 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TBL_PART_CDATA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* @MANDOCERR_TBLDATA_BLK, align 4
  %26 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %27 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %30 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mandoc_msg(i32 %25, i32 %28, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %24, %18
  br label %34

34:                                               ; preds = %33, %9
  %35 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %36 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %35, i32 0, i32 3
  %37 = load %struct.tbl_span*, %struct.tbl_span** %36, align 8
  store %struct.tbl_span* %37, %struct.tbl_span** %6, align 8
  br label %38

38:                                               ; preds = %48, %34
  %39 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %40 = icmp ne %struct.tbl_span* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %43 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %50 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %49, i32 0, i32 0
  %51 = load %struct.tbl_span*, %struct.tbl_span** %50, align 8
  store %struct.tbl_span* %51, %struct.tbl_span** %6, align 8
  br label %38

52:                                               ; preds = %46
  %53 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %54 = icmp eq %struct.tbl_span* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @MANDOCERR_TBLDATA_NONE, align 4
  %57 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %58 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %61 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mandoc_msg(i32 %56, i32 %59, i32 %62, i8* null)
  store i32 0, i32* %3, align 4
  br label %65

64:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
