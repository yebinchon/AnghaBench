; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmm_stat_type = type { i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)* }
%struct.vm.0 = type opaque
%struct.vm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vst_num_types = common dso_local global i32 0, align 4
@vsttab = common dso_local global %struct.vmm_stat_type** null, align 8
@vst_num_elems = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_stat_copy(%struct.vm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vmm_stat_type*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.vm*, %struct.vm** %6, align 8
  %18 = call i32 @vm_get_maxcpus(%struct.vm* %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @vst_num_types, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.vmm_stat_type**, %struct.vmm_stat_type*** @vsttab, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vmm_stat_type*, %struct.vmm_stat_type** %28, i64 %30
  %32 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %31, align 8
  store %struct.vmm_stat_type* %32, %struct.vmm_stat_type** %10, align 8
  %33 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %34 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %33, i32 0, i32 0
  %35 = load i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)*, i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)** %34, align 8
  %36 = icmp ne i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %39 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %38, i32 0, i32 0
  %40 = load i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)*, i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)** %39, align 8
  %41 = load %struct.vm*, %struct.vm** %6, align 8
  %42 = bitcast %struct.vm* %41 to %struct.vm.0*
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %45 = call i32 %40(%struct.vm.0* %42, i32 %43, %struct.vmm_stat_type* %44)
  br label %46

46:                                               ; preds = %37, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.vm*, %struct.vm** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @vcpu_stats(%struct.vm* %51, i32 %52)
  store i32* %53, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %68, %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @vst_num_elems, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32, i32* @vst_num_elems, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @vm_get_maxcpus(%struct.vm*) #1

declare dso_local i32* @vcpu_stats(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
