; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_io_queue_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_io_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_com_io_sq = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.ena_com_io_cq = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, %struct.ena_com_io_sq*, %struct.ena_com_io_cq*)* @ena_com_io_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_io_queue_free(%struct.ena_com_dev* %0, %struct.ena_com_io_sq* %1, %struct.ena_com_io_cq* %2) #0 {
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_io_cq*, align 8
  %7 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_io_sq* %1, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_io_cq* %2, %struct.ena_com_io_cq** %6, align 8
  %8 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %9 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %15 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %18 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %26 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %30 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %34 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ENA_MEM_FREE_COHERENT(i32 %23, i64 %24, i32* %28, i32 %32, i32 %36)
  %38 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %39 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %13, %3
  %42 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %43 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %49 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %52 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %50, %53
  store i64 %54, i64* %7, align 8
  %55 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %56 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %60 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %64 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %68 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ENA_MEM_FREE_COHERENT(i32 %57, i64 %58, i32* %62, i32 %66, i32 %70)
  %72 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %73 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %47, %41
  %76 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %77 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %86 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ENA_MEM_FREE(i32 %84, i32* %88)
  %90 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %91 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %81, %75
  ret void
}

declare dso_local i32 @ENA_MEM_FREE_COHERENT(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @ENA_MEM_FREE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
