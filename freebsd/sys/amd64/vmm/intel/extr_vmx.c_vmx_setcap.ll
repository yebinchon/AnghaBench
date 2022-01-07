; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_setcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_setcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.TYPE_2__*, %struct.vmcs* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vmcs = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@cap_halt_exit = common dso_local global i32 0, align 4
@PROCBASED_HLT_EXITING = common dso_local global i32 0, align 4
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@cap_monitor_trap = common dso_local global i32 0, align 4
@PROCBASED_MTF = common dso_local global i32 0, align 4
@cap_pause_exit = common dso_local global i32 0, align 4
@PROCBASED_PAUSE_EXITING = common dso_local global i32 0, align 4
@cap_unrestricted_guest = common dso_local global i32 0, align 4
@PROCBASED2_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@VMCS_SEC_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@cap_invpcid = common dso_local global i32 0, align 4
@PROCBASED2_ENABLE_INVPCID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @vmx_setcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setcap(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmx*, align 8
  %10 = alloca %struct.vmcs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.vmx*
  store %struct.vmx* %18, %struct.vmx** %9, align 8
  %19 = load %struct.vmx*, %struct.vmx** %9, align 8
  %20 = getelementptr inbounds %struct.vmx, %struct.vmx* %19, i32 0, i32 1
  %21 = load %struct.vmcs*, %struct.vmcs** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vmcs, %struct.vmcs* %21, i64 %23
  store %struct.vmcs* %24, %struct.vmcs** %10, align 8
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %16, align 4
  store i32* null, i32** %12, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %107 [
    i32 131, label %27
    i32 130, label %43
    i32 129, label %59
    i32 128, label %75
    i32 132, label %91
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* @cap_halt_exit, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  %31 = load %struct.vmx*, %struct.vmx** %9, align 8
  %32 = getelementptr inbounds %struct.vmx, %struct.vmx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @PROCBASED_HLT_EXITING, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %30, %27
  br label %108

43:                                               ; preds = %4
  %44 = load i32, i32* @cap_monitor_trap, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  %47 = load %struct.vmx*, %struct.vmx** %9, align 8
  %48 = getelementptr inbounds %struct.vmx, %struct.vmx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @PROCBASED_MTF, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %46, %43
  br label %108

59:                                               ; preds = %4
  %60 = load i32, i32* @cap_pause_exit, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  %63 = load %struct.vmx*, %struct.vmx** %9, align 8
  %64 = getelementptr inbounds %struct.vmx, %struct.vmx* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @PROCBASED_PAUSE_EXITING, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %62, %59
  br label %108

75:                                               ; preds = %4
  %76 = load i32, i32* @cap_unrestricted_guest, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  %79 = load %struct.vmx*, %struct.vmx** %9, align 8
  %80 = getelementptr inbounds %struct.vmx, %struct.vmx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @PROCBASED2_UNRESTRICTED_GUEST, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @VMCS_SEC_PROC_BASED_CTLS, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %78, %75
  br label %108

91:                                               ; preds = %4
  %92 = load i32, i32* @cap_invpcid, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  %95 = load %struct.vmx*, %struct.vmx** %9, align 8
  %96 = getelementptr inbounds %struct.vmx, %struct.vmx* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @PROCBASED2_ENABLE_INVPCID, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* @VMCS_SEC_PROC_BASED_CTLS, align 4
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %94, %91
  br label %108

107:                                              ; preds = %4
  br label %108

108:                                              ; preds = %107, %106, %90, %74, %58, %42
  %109 = load i32, i32* %16, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %171

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %123

118:                                              ; preds = %111
  %119 = load i32, i32* %14, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.vmcs*, %struct.vmcs** %10, align 8
  %125 = call i32 @VMPTRLD(%struct.vmcs* %124)
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @vmwrite(i32 %126, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load %struct.vmcs*, %struct.vmcs** %10, align 8
  %130 = call i32 @VMCLEAR(%struct.vmcs* %129)
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %16, align 4
  br label %170

135:                                              ; preds = %123
  %136 = load i32*, i32** %12, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = load i32*, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 1, %145
  %147 = load %struct.vmx*, %struct.vmx** %9, align 8
  %148 = getelementptr inbounds %struct.vmx, %struct.vmx* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %146
  store i32 %155, i32* %153, align 4
  br label %169

156:                                              ; preds = %141
  %157 = load i32, i32* %7, align 4
  %158 = shl i32 1, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.vmx*, %struct.vmx** %9, align 8
  %161 = getelementptr inbounds %struct.vmx, %struct.vmx* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %159
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %156, %144
  br label %170

170:                                              ; preds = %169, %133
  br label %171

171:                                              ; preds = %170, %108
  %172 = load i32, i32* %16, align 4
  ret i32 %172
}

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i32 @vmwrite(i32, i32) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
