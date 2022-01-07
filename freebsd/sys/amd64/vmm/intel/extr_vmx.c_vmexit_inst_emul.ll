; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmexit_inst_emul.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmexit_inst_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, %struct.vm_guest_paging }
%struct.vm_guest_paging = type { i32 }

@VM_EXITCODE_INST_EMUL = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_exit*, i8*, i8*)* @vmexit_inst_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmexit_inst_emul(%struct.vm_exit* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vm_guest_paging*, align 8
  %8 = alloca i8*, align 8
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %10 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store %struct.vm_guest_paging* %12, %struct.vm_guest_paging** %7, align 8
  %13 = load i32, i32* @VM_EXITCODE_INST_EMUL, align 4
  %14 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %15 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %17 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %20 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i8* %18, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %25 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %7, align 8
  %29 = call i32 @vmx_paging_info(%struct.vm_guest_paging* %28)
  %30 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %7, align 8
  %31 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %59 [
    i32 128, label %33
    i32 129, label %44
    i32 130, label %44
  ]

33:                                               ; preds = %3
  %34 = load i32, i32* @VMCS_GUEST_CS_BASE, align 4
  %35 = call i8* @vmcs_read(i32 %34)
  %36 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %37 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %35, i8** %39, align 8
  %40 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %41 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %68

44:                                               ; preds = %3, %3
  %45 = load i32, i32* @VMCS_GUEST_CS_BASE, align 4
  %46 = call i8* @vmcs_read(i32 %45)
  %47 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %48 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* @VMCS_GUEST_CS_ACCESS_RIGHTS, align 4
  %52 = call i8* @vmcs_read(i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @SEG_DESC_DEF32(i8* %53)
  %55 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %56 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  br label %68

59:                                               ; preds = %3
  %60 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %61 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i8* null, i8** %63, align 8
  %64 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %65 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %44, %33
  %69 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %70 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @vie_init(i32* %72, i32* null, i32 0)
  ret void
}

declare dso_local i32 @vmx_paging_info(%struct.vm_guest_paging*) #1

declare dso_local i8* @vmcs_read(i32) #1

declare dso_local i32 @SEG_DESC_DEF32(i8*) #1

declare dso_local i32 @vie_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
