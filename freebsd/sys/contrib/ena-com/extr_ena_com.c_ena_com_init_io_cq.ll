; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_io_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_io_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, i32 }
%struct.ena_com_create_io_ctx = type { i32 }
%struct.ena_com_io_cq = type { i32, i64, i64, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_cq*)* @ena_com_init_io_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_init_io_cq(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1, %struct.ena_com_io_cq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_com_create_io_ctx*, align 8
  %7 = alloca %struct.ena_com_io_cq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %6, align 8
  store %struct.ena_com_io_cq* %2, %struct.ena_com_io_cq** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %11 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %10, i32 0, i32 5
  %12 = call i32 @memset(%struct.TYPE_2__* %11, i32 0, i32 12)
  %13 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %14 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 4, i64 4
  %20 = trunc i64 %19 to i32
  %21 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %22 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %24 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %28 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %35 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %37 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %41 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %45 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %49 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ENA_MEM_ALLOC_COHERENT_NODE(i32 %38, i64 %39, i32 %43, i32 %47, i32 %51, i32 %54, i32 %55)
  %57 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %58 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %3
  %63 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %64 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %68 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %72 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %76 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %65, i64 %66, i32 %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %62, %3
  %81 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %82 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = call i32 @ena_trc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %91 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %90, i32 0, i32 3
  store i32 1, i32* %91, align 8
  %92 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %93 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT_NODE(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
