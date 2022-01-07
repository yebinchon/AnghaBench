; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_vmcb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_vmcb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb_ctrl = type { i32, i32, i32, i64, i8*, i8*, i8* }
%struct.vmcb_state = type { i32, i32, i32, i32, i32 }

@VMCB_CR_INTCPT = common dso_local global i32 0, align 4
@VMCB_EXC_INTCPT = common dso_local global i32 0, align 4
@IDT_MC = common dso_local global i32 0, align 4
@VMCB_CTRL1_INTCPT = common dso_local global i32 0, align 4
@VMCB_INTCPT_IO = common dso_local global i32 0, align 4
@VMCB_INTCPT_MSR = common dso_local global i32 0, align 4
@VMCB_INTCPT_CPUID = common dso_local global i32 0, align 4
@VMCB_INTCPT_INTR = common dso_local global i32 0, align 4
@VMCB_INTCPT_INIT = common dso_local global i32 0, align 4
@VMCB_INTCPT_NMI = common dso_local global i32 0, align 4
@VMCB_INTCPT_SMI = common dso_local global i32 0, align 4
@VMCB_INTCPT_SHUTDOWN = common dso_local global i32 0, align 4
@VMCB_INTCPT_FERR_FREEZE = common dso_local global i32 0, align 4
@VMCB_CTRL2_INTCPT = common dso_local global i32 0, align 4
@VMCB_INTCPT_MONITOR = common dso_local global i32 0, align 4
@VMCB_INTCPT_MWAIT = common dso_local global i32 0, align 4
@VMCB_INTCPT_VMRUN = common dso_local global i32 0, align 4
@EFER_SVM = common dso_local global i32 0, align 4
@PAT_WRITE_BACK = common dso_local global i32 0, align 4
@PAT_WRITE_THROUGH = common dso_local global i32 0, align 4
@PAT_UNCACHED = common dso_local global i32 0, align 4
@PAT_UNCACHEABLE = common dso_local global i32 0, align 4
@DBREG_DR6_RESERVED1 = common dso_local global i32 0, align 4
@DBREG_DR7_RESERVED1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_softc*, i32, i8*, i8*, i8*)* @vmcb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmcb_init(%struct.svm_softc* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.svm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vmcb_ctrl*, align 8
  %12 = alloca %struct.vmcb_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %15, i32 %16)
  store %struct.vmcb_ctrl* %17, %struct.vmcb_ctrl** %11, align 8
  %18 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc* %18, i32 %19)
  store %struct.vmcb_state* %20, %struct.vmcb_state** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %23 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %26 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %28 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %31 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %69, %5
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %72

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %50, %47, %44, %35
  %57 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @VMCB_CR_INTCPT, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @svm_disable_intercept(%struct.svm_softc* %57, i32 %58, i32 %59, i32 %60)
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @VMCB_CR_INTCPT, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @svm_enable_intercept(%struct.svm_softc* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %74 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @vcpu_trace_exceptions(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  br label %97

90:                                               ; preds = %86
  %91 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @VMCB_EXC_INTCPT, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = call i32 @svm_enable_intercept(%struct.svm_softc* %91, i32 %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %90, %89
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %80

100:                                              ; preds = %80
  br label %108

101:                                              ; preds = %72
  %102 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @VMCB_EXC_INTCPT, align 4
  %105 = load i32, i32* @IDT_MC, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = call i32 @svm_enable_intercept(%struct.svm_softc* %102, i32 %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %101, %100
  %109 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %112 = load i32, i32* @VMCB_INTCPT_IO, align 4
  %113 = call i32 @svm_enable_intercept(%struct.svm_softc* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %117 = load i32, i32* @VMCB_INTCPT_MSR, align 4
  %118 = call i32 @svm_enable_intercept(%struct.svm_softc* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %122 = load i32, i32* @VMCB_INTCPT_CPUID, align 4
  %123 = call i32 @svm_enable_intercept(%struct.svm_softc* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %127 = load i32, i32* @VMCB_INTCPT_INTR, align 4
  %128 = call i32 @svm_enable_intercept(%struct.svm_softc* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %132 = load i32, i32* @VMCB_INTCPT_INIT, align 4
  %133 = call i32 @svm_enable_intercept(%struct.svm_softc* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %137 = load i32, i32* @VMCB_INTCPT_NMI, align 4
  %138 = call i32 @svm_enable_intercept(%struct.svm_softc* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %142 = load i32, i32* @VMCB_INTCPT_SMI, align 4
  %143 = call i32 @svm_enable_intercept(%struct.svm_softc* %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %147 = load i32, i32* @VMCB_INTCPT_SHUTDOWN, align 4
  %148 = call i32 @svm_enable_intercept(%struct.svm_softc* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %152 = load i32, i32* @VMCB_INTCPT_FERR_FREEZE, align 4
  %153 = call i32 @svm_enable_intercept(%struct.svm_softc* %149, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @VMCB_CTRL2_INTCPT, align 4
  %157 = load i32, i32* @VMCB_INTCPT_MONITOR, align 4
  %158 = call i32 @svm_enable_intercept(%struct.svm_softc* %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @VMCB_CTRL2_INTCPT, align 4
  %162 = load i32, i32* @VMCB_INTCPT_MWAIT, align 4
  %163 = call i32 @svm_enable_intercept(%struct.svm_softc* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @VMCB_CTRL2_INTCPT, align 4
  %167 = load i32, i32* @VMCB_INTCPT_VMRUN, align 4
  %168 = call i32 @svm_enable_intercept(%struct.svm_softc* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %170 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %169, i32 0, i32 3
  store i64 0, i64* %170, align 8
  %171 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %172 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %174 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = call i32 @BIT(i32 0)
  %176 = load %struct.vmcb_state*, %struct.vmcb_state** %12, align 8
  %177 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @EFER_SVM, align 4
  %179 = load %struct.vmcb_state*, %struct.vmcb_state** %12, align 8
  %180 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @PAT_WRITE_BACK, align 4
  %182 = call i32 @PAT_VALUE(i32 0, i32 %181)
  %183 = load i32, i32* @PAT_WRITE_THROUGH, align 4
  %184 = call i32 @PAT_VALUE(i32 1, i32 %183)
  %185 = or i32 %182, %184
  %186 = load i32, i32* @PAT_UNCACHED, align 4
  %187 = call i32 @PAT_VALUE(i32 2, i32 %186)
  %188 = or i32 %185, %187
  %189 = load i32, i32* @PAT_UNCACHEABLE, align 4
  %190 = call i32 @PAT_VALUE(i32 3, i32 %189)
  %191 = or i32 %188, %190
  %192 = load i32, i32* @PAT_WRITE_BACK, align 4
  %193 = call i32 @PAT_VALUE(i32 4, i32 %192)
  %194 = or i32 %191, %193
  %195 = load i32, i32* @PAT_WRITE_THROUGH, align 4
  %196 = call i32 @PAT_VALUE(i32 5, i32 %195)
  %197 = or i32 %194, %196
  %198 = load i32, i32* @PAT_UNCACHED, align 4
  %199 = call i32 @PAT_VALUE(i32 6, i32 %198)
  %200 = or i32 %197, %199
  %201 = load i32, i32* @PAT_UNCACHEABLE, align 4
  %202 = call i32 @PAT_VALUE(i32 7, i32 %201)
  %203 = or i32 %200, %202
  %204 = load %struct.vmcb_state*, %struct.vmcb_state** %12, align 8
  %205 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @DBREG_DR6_RESERVED1, align 4
  %207 = load %struct.vmcb_state*, %struct.vmcb_state** %12, align 8
  %208 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @DBREG_DR7_RESERVED1, align 4
  %210 = load %struct.vmcb_state*, %struct.vmcb_state** %12, align 8
  %211 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  ret void
}

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @svm_disable_intercept(%struct.svm_softc*, i32, i32, i32) #1

declare dso_local i32 @svm_enable_intercept(%struct.svm_softc*, i32, i32, i32) #1

declare dso_local i64 @vcpu_trace_exceptions(i32, i32) #1

declare dso_local i32 @PAT_VALUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
