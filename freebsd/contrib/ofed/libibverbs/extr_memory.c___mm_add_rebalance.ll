; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_add_rebalance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_add_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.ibv_mem_node = type { i64, %struct.ibv_mem_node*, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@IBV_RED = common dso_local global i64 0, align 8
@IBV_BLACK = common dso_local global i8* null, align 8
@mm_root = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_mem_node*)* @__mm_add_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mm_add_rebalance(%struct.ibv_mem_node* %0) #0 {
  %2 = alloca %struct.ibv_mem_node*, align 8
  %3 = alloca %struct.ibv_mem_node*, align 8
  %4 = alloca %struct.ibv_mem_node*, align 8
  %5 = alloca %struct.ibv_mem_node*, align 8
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %2, align 8
  br label %6

6:                                                ; preds = %133, %1
  %7 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %8 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %7, i32 0, i32 1
  %9 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %8, align 8
  %10 = icmp ne %struct.ibv_mem_node* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %13 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %12, i32 0, i32 1
  %14 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %13, align 8
  %15 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IBV_RED, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %11, %6
  %20 = phi i1 [ false, %6 ], [ %18, %11 ]
  br i1 %20, label %21, label %134

21:                                               ; preds = %19
  %22 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %23 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %22, i32 0, i32 1
  %24 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %23, align 8
  store %struct.ibv_mem_node* %24, %struct.ibv_mem_node** %3, align 8
  %25 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %26 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %25, i32 0, i32 1
  %27 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %26, align 8
  %28 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %27, i32 0, i32 1
  %29 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %28, align 8
  store %struct.ibv_mem_node* %29, %struct.ibv_mem_node** %4, align 8
  %30 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %31 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %32 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %31, i32 0, i32 2
  %33 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %32, align 8
  %34 = icmp eq %struct.ibv_mem_node* %30, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %21
  %36 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %37 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %36, i32 0, i32 3
  %38 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %37, align 8
  store %struct.ibv_mem_node* %38, %struct.ibv_mem_node** %5, align 8
  %39 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %40 = icmp ne %struct.ibv_mem_node* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %43 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IBV_RED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i8*, i8** @IBV_BLACK, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %51 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** @IBV_BLACK, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %55 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* @IBV_RED, align 8
  %57 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %58 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  store %struct.ibv_mem_node* %59, %struct.ibv_mem_node** %2, align 8
  br label %83

60:                                               ; preds = %41, %35
  %61 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %62 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %63 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %62, i32 0, i32 3
  %64 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %63, align 8
  %65 = icmp eq %struct.ibv_mem_node* %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %68 = call i32 @__mm_rotate_left(%struct.ibv_mem_node* %67)
  %69 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  store %struct.ibv_mem_node* %69, %struct.ibv_mem_node** %2, align 8
  %70 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %71 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %70, i32 0, i32 1
  %72 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %71, align 8
  store %struct.ibv_mem_node* %72, %struct.ibv_mem_node** %3, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i8*, i8** @IBV_BLACK, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %77 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @IBV_RED, align 8
  %79 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %80 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %82 = call i32 @__mm_rotate_right(%struct.ibv_mem_node* %81)
  br label %83

83:                                               ; preds = %73, %47
  br label %133

84:                                               ; preds = %21
  %85 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %86 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %85, i32 0, i32 2
  %87 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %86, align 8
  store %struct.ibv_mem_node* %87, %struct.ibv_mem_node** %5, align 8
  %88 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %89 = icmp ne %struct.ibv_mem_node* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %92 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IBV_RED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i8*, i8** @IBV_BLACK, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %100 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i8*, i8** @IBV_BLACK, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %104 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* @IBV_RED, align 8
  %106 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %107 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  store %struct.ibv_mem_node* %108, %struct.ibv_mem_node** %2, align 8
  br label %132

109:                                              ; preds = %90, %84
  %110 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %111 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %112 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %111, i32 0, i32 2
  %113 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %112, align 8
  %114 = icmp eq %struct.ibv_mem_node* %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %117 = call i32 @__mm_rotate_right(%struct.ibv_mem_node* %116)
  %118 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  store %struct.ibv_mem_node* %118, %struct.ibv_mem_node** %2, align 8
  %119 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %120 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %119, i32 0, i32 1
  %121 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %120, align 8
  store %struct.ibv_mem_node* %121, %struct.ibv_mem_node** %3, align 8
  br label %122

122:                                              ; preds = %115, %109
  %123 = load i8*, i8** @IBV_BLACK, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %126 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* @IBV_RED, align 8
  %128 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %129 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %131 = call i32 @__mm_rotate_left(%struct.ibv_mem_node* %130)
  br label %132

132:                                              ; preds = %122, %96
  br label %133

133:                                              ; preds = %132, %83
  br label %6

134:                                              ; preds = %19
  %135 = load i8*, i8** @IBV_BLACK, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mm_root, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  ret void
}

declare dso_local i32 @__mm_rotate_left(%struct.ibv_mem_node*) #1

declare dso_local i32 @__mm_rotate_right(%struct.ibv_mem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
