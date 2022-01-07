; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_setreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@curcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vmx_setreg: %s%d is running\00", align 1
@VM_REG_GUEST_INTR_SHADOW = common dso_local global i32 0, align 4
@entry_ctls = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_EFER = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@VMCS_ENTRY_CTLS = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VM_ENTRY_GUEST_LMA = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @vmx_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setreg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmx*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.vmx*
  store %struct.vmx* %18, %struct.vmx** %16, align 8
  %19 = load %struct.vmx*, %struct.vmx** %16, align 8
  %20 = getelementptr inbounds %struct.vmx, %struct.vmx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vcpu_is_running(i32 %21, i32 %22, i32* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @curcpu, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.vmx*, %struct.vmx** %16, align 8
  %32 = getelementptr inbounds %struct.vmx, %struct.vmx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vm_name(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %26, %4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @VM_REG_GUEST_INTR_SHADOW, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.vmx*, %struct.vmx** %16, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @vmx_modify_intr_shadow(%struct.vmx* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %155

47:                                               ; preds = %37
  %48 = load %struct.vmx*, %struct.vmx** %16, align 8
  %49 = getelementptr inbounds %struct.vmx, %struct.vmx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @vmxctx_setreg(%struct.TYPE_2__* %53, i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %155

59:                                               ; preds = %47
  %60 = load %struct.vmx*, %struct.vmx** %16, align 8
  %61 = getelementptr inbounds %struct.vmx, %struct.vmx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vmcs_setreg(i32* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %153

72:                                               ; preds = %59
  %73 = load i32, i32* @entry_ctls, align 4
  %74 = load i32, i32* @VM_ENTRY_LOAD_EFER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %77
  %82 = load %struct.vmx*, %struct.vmx** %16, align 8
  %83 = getelementptr inbounds %struct.vmx, %struct.vmx* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %90 = call i32 @VMCS_IDENT(i32 %89)
  %91 = call i32 @vmcs_getreg(i32* %87, i32 %88, i32 %90, i32* %14)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EFER_LMA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load i32, i32* @VM_ENTRY_GUEST_LMA, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %105

100:                                              ; preds = %81
  %101 = load i32, i32* @VM_ENTRY_GUEST_LMA, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load %struct.vmx*, %struct.vmx** %16, align 8
  %107 = getelementptr inbounds %struct.vmx, %struct.vmx* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %114 = call i32 @VMCS_IDENT(i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @vmcs_setreg(i32* %111, i32 %112, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %105, %77, %72
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @vmx_shadow_reg(i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.vmx*, %struct.vmx** %16, align 8
  %124 = getelementptr inbounds %struct.vmx, %struct.vmx* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @VMCS_IDENT(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @vmcs_setreg(i32* %128, i32 %129, i32 %131, i32 %132)
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %122, %117
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.vmx*, %struct.vmx** %16, align 8
  %140 = getelementptr inbounds %struct.vmx, %struct.vmx* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %15, align 4
  %147 = load %struct.vmx*, %struct.vmx** %16, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @vmx_invvpid(%struct.vmx* %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %138, %134
  br label %153

153:                                              ; preds = %152, %59
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %58, %41
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @vcpu_is_running(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @vm_name(i32) #1

declare dso_local i32 @vmx_modify_intr_shadow(%struct.vmx*, i32, i32, i32) #1

declare dso_local i64 @vmxctx_setreg(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @vmcs_setreg(i32*, i32, i32, i32) #1

declare dso_local i32 @vmcs_getreg(i32*, i32, i32, i32*) #1

declare dso_local i32 @VMCS_IDENT(i32) #1

declare dso_local i32 @vmx_shadow_reg(i32) #1

declare dso_local i32 @vmx_invvpid(%struct.vmx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
