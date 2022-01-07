; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_xsetbv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_xsetbv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32, %struct.vmxctx* }
%struct.vmxctx = type { i64, i32, i32 }
%struct.vm_exit = type { i32 }
%struct.xsave_limits = type { i32, i32 }

@HANDLED = common dso_local global i32 0, align 4
@VMCS_GUEST_CR4 = common dso_local global i32 0, align 4
@CR4_XSAVE = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_X87 = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_AVX = common dso_local global i32 0, align 4
@XFEATURE_AVX = common dso_local global i32 0, align 4
@XFEATURE_AVX512 = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_BNDREGS = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_BNDCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, %struct.vm_exit*)* @vmx_emulate_xsetbv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_xsetbv(%struct.vmx* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  %8 = alloca %struct.vmxctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xsave_limits*, align 8
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %7, align 8
  %11 = load %struct.vmx*, %struct.vmx** %5, align 8
  %12 = getelementptr inbounds %struct.vmx, %struct.vmx* %11, i32 0, i32 1
  %13 = load %struct.vmxctx*, %struct.vmxctx** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %13, i64 %15
  store %struct.vmxctx* %16, %struct.vmxctx** %8, align 8
  %17 = call %struct.xsave_limits* (...) @vmm_get_xsave_limits()
  store %struct.xsave_limits* %17, %struct.xsave_limits** %10, align 8
  %18 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %19 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.vmx*, %struct.vmx** %5, align 8
  %24 = getelementptr inbounds %struct.vmx, %struct.vmx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @vm_inject_gp(i32 %25, i32 %26)
  %28 = load i32, i32* @HANDLED, align 4
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %3
  %30 = load %struct.xsave_limits*, %struct.xsave_limits** %10, align 8
  %31 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @VMCS_GUEST_CR4, align 4
  %36 = call i32 @vmcs_read(i32 %35)
  %37 = load i32, i32* @CR4_XSAVE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.vmx*, %struct.vmx** %5, align 8
  %42 = getelementptr inbounds %struct.vmx, %struct.vmx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @vm_inject_ud(i32 %43, i32 %44)
  %46 = load i32, i32* @HANDLED, align 4
  store i32 %46, i32* %4, align 4
  br label %145

47:                                               ; preds = %34
  %48 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %49 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 32
  %52 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %53 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.xsave_limits*, %struct.xsave_limits** %10, align 8
  %58 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %47
  %64 = load %struct.vmx*, %struct.vmx** %5, align 8
  %65 = getelementptr inbounds %struct.vmx, %struct.vmx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @vm_inject_gp(i32 %66, i32 %67)
  %69 = load i32, i32* @HANDLED, align 4
  store i32 %69, i32* %4, align 4
  br label %145

70:                                               ; preds = %47
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.vmx*, %struct.vmx** %5, align 8
  %77 = getelementptr inbounds %struct.vmx, %struct.vmx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @vm_inject_gp(i32 %78, i32 %79)
  %81 = load i32, i32* @HANDLED, align 4
  store i32 %81, i32* %4, align 4
  br label %145

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @XFEATURE_ENABLED_AVX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @XFEATURE_AVX, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @XFEATURE_AVX, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.vmx*, %struct.vmx** %5, align 8
  %95 = getelementptr inbounds %struct.vmx, %struct.vmx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @vm_inject_gp(i32 %96, i32 %97)
  %99 = load i32, i32* @HANDLED, align 4
  store i32 %99, i32* %4, align 4
  br label %145

100:                                              ; preds = %87, %82
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @XFEATURE_AVX512, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @XFEATURE_AVX512, align 4
  %108 = load i32, i32* @XFEATURE_AVX, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = load i32, i32* @XFEATURE_AVX512, align 4
  %112 = load i32, i32* @XFEATURE_AVX, align 4
  %113 = or i32 %111, %112
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.vmx*, %struct.vmx** %5, align 8
  %117 = getelementptr inbounds %struct.vmx, %struct.vmx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @vm_inject_gp(i32 %118, i32 %119)
  %121 = load i32, i32* @HANDLED, align 4
  store i32 %121, i32* %4, align 4
  br label %145

122:                                              ; preds = %105, %100
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @XFEATURE_ENABLED_BNDREGS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @XFEATURE_ENABLED_BNDCSR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = icmp ne i32 %127, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %122
  %135 = load %struct.vmx*, %struct.vmx** %5, align 8
  %136 = getelementptr inbounds %struct.vmx, %struct.vmx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @vm_inject_gp(i32 %137, i32 %138)
  %140 = load i32, i32* @HANDLED, align 4
  store i32 %140, i32* %4, align 4
  br label %145

141:                                              ; preds = %122
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @load_xcr(i32 0, i32 %142)
  %144 = load i32, i32* @HANDLED, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %141, %134, %115, %93, %75, %63, %40, %22
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.xsave_limits* @vmm_get_xsave_limits(...) #1

declare dso_local i32 @vm_inject_gp(i32, i32) #1

declare dso_local i32 @vmcs_read(i32) #1

declare dso_local i32 @vm_inject_ud(i32, i32) #1

declare dso_local i32 @load_xcr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
