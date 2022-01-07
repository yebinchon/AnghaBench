; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mmio_reg_read_request_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mmio_reg_read_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_com_mmio_read }
%struct.ena_com_mmio_read = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_COM_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_mmio_reg_read_request_init(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_com_mmio_read*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 1
  store %struct.ena_com_mmio_read* %6, %struct.ena_com_mmio_read** %4, align 8
  %7 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ENA_SPINLOCK_INIT(i32 %9)
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %15 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %18 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %21 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %13, i32 4, %struct.TYPE_2__* %16, i32 %19, i32 %22)
  %24 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %25 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %44

33:                                               ; preds = %1
  %34 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %35 = call i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev* %34)
  %36 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %37 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %41 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %43 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %4, align 8
  %46 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ENA_SPINLOCK_DESTROY(i32 %47)
  %49 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ENA_SPINLOCK_INIT(i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev*) #1

declare dso_local i32 @ENA_SPINLOCK_DESTROY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
