; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_cq.c_c4iw_flush_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_cq.c_c4iw_flush_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { %struct.TYPE_3__, %struct.t4_wq }
%struct.TYPE_3__ = type { i32 }
%struct.t4_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.t4_swsqe*, %struct.t4_swsqe* }
%struct.t4_swsqe = type { i32, i64 }
%struct.c4iw_cq = type { %struct.t4_cq }
%struct.t4_cq = type { i32 }

@FW_RI_READ_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_flush_sq(%struct.c4iw_qp* %0) #0 {
  %2 = alloca %struct.c4iw_qp*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca %struct.t4_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t4_swsqe*, align 8
  store %struct.c4iw_qp* %0, %struct.c4iw_qp** %2, align 8
  store i16 0, i16* %3, align 2
  %9 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %9, i32 0, i32 1
  store %struct.t4_wq* %10, %struct.t4_wq** %4, align 8
  %11 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %12 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.c4iw_cq* @to_c4iw_cq(i32 %14)
  store %struct.c4iw_cq* %15, %struct.c4iw_cq** %5, align 8
  %16 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %17 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %16, i32 0, i32 0
  store %struct.t4_cq* %17, %struct.t4_cq** %6, align 8
  %18 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %19 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %25 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %29 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %33 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %38 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  br label %44

44:                                               ; preds = %96, %31
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %47 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %44
  %52 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %53 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load %struct.t4_swsqe*, %struct.t4_swsqe** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %55, i64 %57
  store %struct.t4_swsqe* %58, %struct.t4_swsqe** %8, align 8
  %59 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %60 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %64 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %66 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %67 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %68 = call i32 @insert_sq_cqe(%struct.t4_wq* %65, %struct.t4_cq* %66, %struct.t4_swsqe* %67)
  %69 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %70 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load %struct.t4_swsqe*, %struct.t4_swsqe** %71, align 8
  %73 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %74 = icmp eq %struct.t4_swsqe* %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %51
  %76 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %77 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FW_RI_READ_REQ, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %84 = call i32 @advance_oldest_read(%struct.t4_wq* %83)
  br label %85

85:                                               ; preds = %75, %51
  %86 = load i16, i16* %3, align 2
  %87 = add i16 %86, 1
  store i16 %87, i16* %3, align 2
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %91 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %85
  br label %44

97:                                               ; preds = %44
  %98 = load i16, i16* %3, align 2
  %99 = zext i16 %98 to i32
  %100 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %101 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %106 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %110 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %108, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %97
  %115 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %116 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %120 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %114, %97
  ret void
}

declare dso_local %struct.c4iw_cq* @to_c4iw_cq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @insert_sq_cqe(%struct.t4_wq*, %struct.t4_cq*, %struct.t4_swsqe*) #1

declare dso_local i32 @advance_oldest_read(%struct.t4_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
