; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_com_aenq, %struct.ena_com_admin_queue }
%struct.ena_com_aenq = type { i32*, i32, i32, i32 }
%struct.ena_com_admin_queue = type { i32, i32, %struct.TYPE_2__*, %struct.ena_com_admin_sq, %struct.ena_com_admin_cq }
%struct.TYPE_2__ = type { i32 }
%struct.ena_com_admin_sq = type { i32*, i32, i32 }
%struct.ena_com_admin_cq = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_admin_destroy(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_com_admin_cq*, align 8
  %5 = alloca %struct.ena_com_admin_sq*, align 8
  %6 = alloca %struct.ena_com_aenq*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 2
  store %struct.ena_com_admin_queue* %9, %struct.ena_com_admin_queue** %3, align 8
  %10 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %10, i32 0, i32 4
  store %struct.ena_com_admin_cq* %11, %struct.ena_com_admin_cq** %4, align 8
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 3
  store %struct.ena_com_admin_sq* %13, %struct.ena_com_admin_sq** %5, align 8
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 1
  store %struct.ena_com_aenq* %15, %struct.ena_com_aenq** %6, align 8
  %16 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ENA_WAIT_EVENT_DESTROY(i32 %20)
  %22 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %28 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %31 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @ENA_MEM_FREE(i32 %29, %struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %36 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %35, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ADMIN_SQ_SIZE(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %42 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %47 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %51 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %54 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %57 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ENA_MEM_FREE_COHERENT(i32 %48, i32 %49, i32* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %45, %34
  %61 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %62 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %64 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ADMIN_CQ_SIZE(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %68 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %73 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %77 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %80 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ENA_MEM_FREE_COHERENT(i32 %74, i32 %75, i32* %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %71, %60
  %87 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %88 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %90 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ADMIN_AENQ_SIZE(i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %94 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %86
  %99 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %100 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %104 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %107 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %110 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ENA_MEM_FREE_COHERENT(i32 %101, i32 %102, i32* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %98, %86
  %114 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %115 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %117 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ENA_SPINLOCK_DESTROY(i32 %118)
  ret void
}

declare dso_local i32 @ENA_WAIT_EVENT_DESTROY(i32) #1

declare dso_local i32 @ENA_MEM_FREE(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ADMIN_SQ_SIZE(i32) #1

declare dso_local i32 @ENA_MEM_FREE_COHERENT(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ADMIN_CQ_SIZE(i32) #1

declare dso_local i32 @ADMIN_AENQ_SIZE(i32) #1

declare dso_local i32 @ENA_SPINLOCK_DESTROY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
