; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_calcdest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_calcdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@APIC_DFR_MODEL_MASK = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_FLAT = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_CLUSTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"vlapic has bad logical model %x - cannot deliver interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32*, i32, i32, i32, i32)* @vlapic_calcdest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_calcdest(%struct.vm* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlapic*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %26
  %36 = load %struct.vm*, %struct.vm** %7, align 8
  %37 = call i32 @vm_active_cpus(%struct.vm* %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %162

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @CPU_ZERO(i32* %43)
  %45 = load %struct.vm*, %struct.vm** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @vm_apicid2vcpuid(%struct.vm* %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.vm*, %struct.vm** %7, align 8
  %49 = call i32 @vm_active_cpus(%struct.vm* %48)
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %23, align 4
  %51 = load %struct.vm*, %struct.vm** %7, align 8
  %52 = call i32 @vm_get_maxcpus(%struct.vm* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32, i32* %23, align 4
  %56 = call i64 @CPU_ISSET(i32 %55, i32* %22)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %23, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @CPU_SET(i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %58, %54, %42
  br label %162

63:                                               ; preds = %39
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 255
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 16
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 65535
  store i32 %72, i32* %19, align 4
  br label %79

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 15
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 15
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @CPU_ZERO(i32* %80)
  %82 = load %struct.vm*, %struct.vm** %7, align 8
  %83 = call i32 @vm_active_cpus(%struct.vm* %82)
  store i32 %83, i32* %22, align 4
  br label %84

84:                                               ; preds = %160, %142, %139, %79
  %85 = call i32 @CPU_FFS(i32* %22)
  store i32 %85, i32* %23, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %161

87:                                               ; preds = %84
  %88 = load i32, i32* %23, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = call i32 @CPU_CLR(i32 %90, i32* %22)
  %92 = load %struct.vm*, %struct.vm** %7, align 8
  %93 = load i32, i32* %23, align 4
  %94 = call %struct.vlapic* @vm_lapic(%struct.vm* %92, i32 %93)
  store %struct.vlapic* %94, %struct.vlapic** %13, align 8
  %95 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %96 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  %100 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %101 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @APIC_DFR_MODEL_FLAT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %87
  %111 = load i32, i32* %15, align 4
  %112 = ashr i32 %111, 24
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %20, align 4
  br label %147

114:                                              ; preds = %87
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @APIC_DFR_MODEL_CLUSTER, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %114
  %121 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %122 = call i64 @x2apic(%struct.vlapic* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = ashr i32 %125, 16
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, 65535
  store i32 %128, i32* %16, align 4
  br label %135

129:                                              ; preds = %120
  %130 = load i32, i32* %15, align 4
  %131 = ashr i32 %130, 28
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %15, align 4
  %133 = ashr i32 %132, 24
  %134 = and i32 %133, 15
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %84

140:                                              ; preds = %135
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %20, align 4
  br label %146

142:                                              ; preds = %114
  %143 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @VLAPIC_CTR1(%struct.vlapic* %143, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %84

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %110
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %16, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i32, i32* %23, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @CPU_SET(i32 %153, i32* %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %161

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %147
  br label %84

161:                                              ; preds = %158, %84
  br label %162

162:                                              ; preds = %35, %161, %62
  ret void
}

declare dso_local i32 @vm_active_cpus(%struct.vm*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @vm_apicid2vcpuid(%struct.vm*, i32) #1

declare dso_local i32 @vm_get_maxcpus(%struct.vm*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
