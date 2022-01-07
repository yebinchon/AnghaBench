; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }

@VMCS_HOST_IA32_PAT = common dso_local global i32 0, align 4
@VMCS_HOST_IA32_EFER = common dso_local global i32 0, align 4
@VMCS_HOST_CR0 = common dso_local global i32 0, align 4
@CR4_VMXE = common dso_local global i32 0, align 4
@VMCS_HOST_CR4 = common dso_local global i32 0, align 4
@VMCS_HOST_ES_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_CS_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_SS_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_DS_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_TR_SELECTOR = common dso_local global i32 0, align 4
@VMCS_HOST_FS_BASE = common dso_local global i32 0, align 4
@VMCS_HOST_IDTR_BASE = common dso_local global i32 0, align 4
@no_flush_rsb = common dso_local global i64 0, align 8
@VMCS_HOST_RIP = common dso_local global i32 0, align 4
@vmx_exit_guest = common dso_local global i64 0, align 8
@vmx_exit_guest_flush_rsb = common dso_local global i64 0, align 8
@VMCS_LINK_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmcs_init(%struct.vmcs* %0) #0 {
  %2 = alloca %struct.vmcs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmcs* %0, %struct.vmcs** %2, align 8
  %13 = call i32 (...) @vmm_get_host_codesel()
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @vmm_get_host_datasel()
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @vmm_get_host_tsssel()
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vmcs*, %struct.vmcs** %2, align 8
  %17 = call i32 @VMPTRLD(%struct.vmcs* %16)
  %18 = call i32 (...) @vmm_get_host_pat()
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @VMCS_HOST_IA32_PAT, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @vmwrite(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %128

24:                                               ; preds = %1
  %25 = call i32 (...) @vmm_get_host_efer()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @VMCS_HOST_IA32_EFER, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @vmwrite(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %128

31:                                               ; preds = %24
  %32 = call i32 (...) @vmm_get_host_cr0()
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @VMCS_HOST_CR0, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @vmwrite(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %128

38:                                               ; preds = %31
  %39 = call i32 (...) @vmm_get_host_cr4()
  %40 = load i32, i32* @CR4_VMXE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @VMCS_HOST_CR4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vmwrite(i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %128

47:                                               ; preds = %38
  %48 = load i32, i32* @VMCS_HOST_ES_SELECTOR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @vmwrite(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %128

53:                                               ; preds = %47
  %54 = load i32, i32* @VMCS_HOST_CS_SELECTOR, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @vmwrite(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %128

59:                                               ; preds = %53
  %60 = load i32, i32* @VMCS_HOST_SS_SELECTOR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @vmwrite(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %128

65:                                               ; preds = %59
  %66 = load i32, i32* @VMCS_HOST_DS_SELECTOR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @vmwrite(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %128

71:                                               ; preds = %65
  %72 = load i32, i32* @VMCS_HOST_FS_SELECTOR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @vmwrite(i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %128

77:                                               ; preds = %71
  %78 = load i32, i32* @VMCS_HOST_GS_SELECTOR, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @vmwrite(i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %128

83:                                               ; preds = %77
  %84 = load i32, i32* @VMCS_HOST_TR_SELECTOR, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @vmwrite(i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %128

89:                                               ; preds = %83
  %90 = call i32 (...) @vmm_get_host_fsbase()
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @VMCS_HOST_FS_BASE, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @vmwrite(i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %128

96:                                               ; preds = %89
  %97 = call i32 (...) @vmm_get_host_idtrbase()
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* @VMCS_HOST_IDTR_BASE, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @vmwrite(i32 %98, i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %128

103:                                              ; preds = %96
  %104 = load i64, i64* @no_flush_rsb, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* @VMCS_HOST_RIP, align 4
  %108 = load i64, i64* @vmx_exit_guest, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @vmwrite(i32 %107, i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %128

113:                                              ; preds = %106
  br label %122

114:                                              ; preds = %103
  %115 = load i32, i32* @VMCS_HOST_RIP, align 4
  %116 = load i64, i64* @vmx_exit_guest_flush_rsb, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @vmwrite(i32 %115, i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %128

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %113
  %123 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %124 = call i32 @vmwrite(i32 %123, i32 -1)
  store i32 %124, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %126, %120, %112, %102, %95, %88, %82, %76, %70, %64, %58, %52, %46, %37, %30, %23
  %129 = load %struct.vmcs*, %struct.vmcs** %2, align 8
  %130 = call i32 @VMCLEAR(%struct.vmcs* %129)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @vmm_get_host_codesel(...) #1

declare dso_local i32 @vmm_get_host_datasel(...) #1

declare dso_local i32 @vmm_get_host_tsssel(...) #1

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i32 @vmm_get_host_pat(...) #1

declare dso_local i32 @vmwrite(i32, i32) #1

declare dso_local i32 @vmm_get_host_efer(...) #1

declare dso_local i32 @vmm_get_host_cr0(...) #1

declare dso_local i32 @vmm_get_host_cr4(...) #1

declare dso_local i32 @vmm_get_host_fsbase(...) #1

declare dso_local i32 @vmm_get_host_idtrbase(...) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
