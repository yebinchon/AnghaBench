; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { %struct.tbl_node*, %struct.tbl_node*, %struct.tbl_node*, %struct.tbl_node*, %struct.tbl_node*, %struct.tbl_node* }
%struct.tbl_row = type { %struct.tbl_row*, %struct.tbl_row*, %struct.tbl_row*, %struct.tbl_row*, %struct.tbl_row*, %struct.tbl_row* }
%struct.tbl_cell = type { %struct.tbl_cell*, %struct.tbl_cell*, %struct.tbl_cell*, %struct.tbl_cell*, %struct.tbl_cell*, %struct.tbl_cell* }
%struct.tbl_span = type { %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span* }
%struct.tbl_dat = type { %struct.tbl_dat*, %struct.tbl_dat*, %struct.tbl_dat*, %struct.tbl_dat*, %struct.tbl_dat*, %struct.tbl_dat* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_free(%struct.tbl_node* %0) #0 {
  %2 = alloca %struct.tbl_node*, align 8
  %3 = alloca %struct.tbl_node*, align 8
  %4 = alloca %struct.tbl_row*, align 8
  %5 = alloca %struct.tbl_cell*, align 8
  %6 = alloca %struct.tbl_span*, align 8
  %7 = alloca %struct.tbl_dat*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %2, align 8
  br label %8

8:                                                ; preds = %94, %1
  %9 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %10 = icmp ne %struct.tbl_node* %9, null
  br i1 %10, label %11, label %102

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %49, %11
  %13 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %14 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %13, i32 0, i32 5
  %15 = load %struct.tbl_node*, %struct.tbl_node** %14, align 8
  %16 = bitcast %struct.tbl_node* %15 to %struct.tbl_row*
  store %struct.tbl_row* %16, %struct.tbl_row** %4, align 8
  %17 = icmp ne %struct.tbl_row* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.tbl_row*, %struct.tbl_row** %4, align 8
  %20 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %19, i32 0, i32 0
  %21 = load %struct.tbl_row*, %struct.tbl_row** %20, align 8
  %22 = bitcast %struct.tbl_row* %21 to %struct.tbl_node*
  %23 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %24 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %23, i32 0, i32 5
  store %struct.tbl_node* %22, %struct.tbl_node** %24, align 8
  br label %25

25:                                               ; preds = %30, %18
  %26 = load %struct.tbl_row*, %struct.tbl_row** %4, align 8
  %27 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %26, i32 0, i32 2
  %28 = load %struct.tbl_row*, %struct.tbl_row** %27, align 8
  %29 = icmp ne %struct.tbl_row* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.tbl_row*, %struct.tbl_row** %4, align 8
  %32 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %31, i32 0, i32 2
  %33 = load %struct.tbl_row*, %struct.tbl_row** %32, align 8
  %34 = bitcast %struct.tbl_row* %33 to %struct.tbl_cell*
  store %struct.tbl_cell* %34, %struct.tbl_cell** %5, align 8
  %35 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %36 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %35, i32 0, i32 0
  %37 = load %struct.tbl_cell*, %struct.tbl_cell** %36, align 8
  %38 = bitcast %struct.tbl_cell* %37 to %struct.tbl_row*
  %39 = load %struct.tbl_row*, %struct.tbl_row** %4, align 8
  %40 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %39, i32 0, i32 2
  store %struct.tbl_row* %38, %struct.tbl_row** %40, align 8
  %41 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %42 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %41, i32 0, i32 4
  %43 = load %struct.tbl_cell*, %struct.tbl_cell** %42, align 8
  %44 = bitcast %struct.tbl_cell* %43 to %struct.tbl_span*
  %45 = call i32 @free(%struct.tbl_span* %44)
  %46 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %47 = bitcast %struct.tbl_cell* %46 to %struct.tbl_span*
  %48 = call i32 @free(%struct.tbl_span* %47)
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.tbl_row*, %struct.tbl_row** %4, align 8
  %51 = bitcast %struct.tbl_row* %50 to %struct.tbl_span*
  %52 = call i32 @free(%struct.tbl_span* %51)
  br label %12

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %91, %53
  %55 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %56 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %55, i32 0, i32 3
  %57 = load %struct.tbl_node*, %struct.tbl_node** %56, align 8
  %58 = bitcast %struct.tbl_node* %57 to %struct.tbl_span*
  store %struct.tbl_span* %58, %struct.tbl_span** %6, align 8
  %59 = icmp ne %struct.tbl_span* %58, null
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %62 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %61, i32 0, i32 0
  %63 = load %struct.tbl_span*, %struct.tbl_span** %62, align 8
  %64 = bitcast %struct.tbl_span* %63 to %struct.tbl_node*
  %65 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %66 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %65, i32 0, i32 3
  store %struct.tbl_node* %64, %struct.tbl_node** %66, align 8
  br label %67

67:                                               ; preds = %72, %60
  %68 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %69 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %68, i32 0, i32 2
  %70 = load %struct.tbl_span*, %struct.tbl_span** %69, align 8
  %71 = icmp ne %struct.tbl_span* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %74 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %73, i32 0, i32 2
  %75 = load %struct.tbl_span*, %struct.tbl_span** %74, align 8
  %76 = bitcast %struct.tbl_span* %75 to %struct.tbl_dat*
  store %struct.tbl_dat* %76, %struct.tbl_dat** %7, align 8
  %77 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %78 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %77, i32 0, i32 0
  %79 = load %struct.tbl_dat*, %struct.tbl_dat** %78, align 8
  %80 = bitcast %struct.tbl_dat* %79 to %struct.tbl_span*
  %81 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %82 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %81, i32 0, i32 2
  store %struct.tbl_span* %80, %struct.tbl_span** %82, align 8
  %83 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %84 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %83, i32 0, i32 1
  %85 = load %struct.tbl_dat*, %struct.tbl_dat** %84, align 8
  %86 = bitcast %struct.tbl_dat* %85 to %struct.tbl_span*
  %87 = call i32 @free(%struct.tbl_span* %86)
  %88 = load %struct.tbl_dat*, %struct.tbl_dat** %7, align 8
  %89 = bitcast %struct.tbl_dat* %88 to %struct.tbl_span*
  %90 = call i32 @free(%struct.tbl_span* %89)
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.tbl_span*, %struct.tbl_span** %6, align 8
  %93 = call i32 @free(%struct.tbl_span* %92)
  br label %54

94:                                               ; preds = %54
  %95 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  store %struct.tbl_node* %95, %struct.tbl_node** %3, align 8
  %96 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %97 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %96, i32 0, i32 0
  %98 = load %struct.tbl_node*, %struct.tbl_node** %97, align 8
  store %struct.tbl_node* %98, %struct.tbl_node** %2, align 8
  %99 = load %struct.tbl_node*, %struct.tbl_node** %3, align 8
  %100 = bitcast %struct.tbl_node* %99 to %struct.tbl_span*
  %101 = call i32 @free(%struct.tbl_span* %100)
  br label %8

102:                                              ; preds = %8
  ret void
}

declare dso_local i32 @free(%struct.tbl_span*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
