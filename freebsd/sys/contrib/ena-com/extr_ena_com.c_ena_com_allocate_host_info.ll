; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_allocate_host_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_allocate_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_host_attribute }
%struct.ena_host_attribute = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@ENA_COMMON_SPEC_VERSION_MAJOR = common dso_local global i32 0, align 4
@ENA_REGS_VERSION_MAJOR_VERSION_SHIFT = common dso_local global i32 0, align 4
@ENA_COMMON_SPEC_VERSION_MINOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_allocate_host_info(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_host_attribute*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 1
  store %struct.ena_host_attribute* %6, %struct.ena_host_attribute** %4, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SZ_4K, align 4
  %11 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %12 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %15 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %18 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %9, i32 %10, %struct.TYPE_2__* %13, i32 %16, i32 %19)
  %21 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %22 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %1
  %32 = load i32, i32* @ENA_COMMON_SPEC_VERSION_MAJOR, align 4
  %33 = load i32, i32* @ENA_REGS_VERSION_MAJOR_VERSION_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @ENA_COMMON_SPEC_VERSION_MINOR, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %38 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %31, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
