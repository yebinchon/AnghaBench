; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_handle_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_handle_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.vm_inout_str }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }
%struct.vm_inout_str = type { i32, i32, i32, i32, i32, i32 }
%struct.vmcb_ctrl = type { i32 }
%struct.vmcb_state = type { i32, i32, i64 }
%struct.svm_regctx = type { i32 }

@UNHANDLED = common dso_local global i32 0, align 4
@VM_EXITCODE_INOUT = common dso_local global i32 0, align 4
@VM_EXITCODE_INOUT_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svm_softc*, i32, %struct.vm_exit*)* @svm_handle_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_handle_io(%struct.svm_softc* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  %8 = alloca %struct.vmcb_ctrl*, align 8
  %9 = alloca %struct.vmcb_state*, align 8
  %10 = alloca %struct.svm_regctx*, align 8
  %11 = alloca %struct.vm_inout_str*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %7, align 8
  %14 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc* %14, i32 %15)
  store %struct.vmcb_state* %16, %struct.vmcb_state** %9, align 8
  %17 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %17, i32 %18)
  store %struct.vmcb_ctrl* %19, %struct.vmcb_ctrl** %8, align 8
  %20 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc* %20, i32 %21)
  store %struct.svm_regctx* %22, %struct.svm_regctx** %10, align 8
  %23 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %8, align 8
  %24 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @BIT(i32 2)
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = call i32 (...) @decode_assist()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @UNHANDLED, align 4
  store i32 %38, i32* %4, align 4
  br label %148

39:                                               ; preds = %34, %3
  %40 = load i32, i32* @VM_EXITCODE_INOUT, align 4
  %41 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %42 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @BIT(i32 0)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %50 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %55 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @BIT(i32 3)
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %65 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 7
  %71 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %72 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 16
  %77 = sext i32 %76 to i64
  %78 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %79 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i64 %77, i64* %81, align 8
  %82 = load %struct.vmcb_state*, %struct.vmcb_state** %9, align 8
  %83 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %86 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i64 %84, i64* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %39
  %92 = load i32, i32* @VM_EXITCODE_INOUT_STR, align 4
  %93 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %94 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %96 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store %struct.vm_inout_str* %97, %struct.vm_inout_str** %11, align 8
  %98 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @svm_get_vmcb(%struct.svm_softc* %98, i32 %99)
  %101 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %102 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %101, i32 0, i32 5
  %103 = call i32 @svm_paging_info(i32 %100, i32* %102)
  %104 = load %struct.vmcb_state*, %struct.vmcb_state** %9, align 8
  %105 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %108 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.vmcb_state*, %struct.vmcb_state** %9, align 8
  %110 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %113 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.svm_regctx*, %struct.svm_regctx** %10, align 8
  %115 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %116 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @svm_inout_str_index(%struct.svm_regctx* %114, i32 %119)
  %121 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %122 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.svm_regctx*, %struct.svm_regctx** %10, align 8
  %124 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %125 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @svm_inout_str_count(%struct.svm_regctx* %123, i32 %128)
  %130 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %131 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @svm_inout_str_addrsize(i32 %132)
  %134 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %135 = getelementptr inbounds %struct.vm_inout_str, %struct.vm_inout_str* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %140 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vm_inout_str*, %struct.vm_inout_str** %11, align 8
  %145 = call i32 @svm_inout_str_seginfo(%struct.svm_softc* %136, i32 %137, i32 %138, i32 %143, %struct.vm_inout_str* %144)
  br label %146

146:                                              ; preds = %91, %39
  %147 = load i32, i32* @UNHANDLED, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %37
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc*, i32) #1

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @decode_assist(...) #1

declare dso_local i32 @svm_paging_info(i32, i32*) #1

declare dso_local i32 @svm_get_vmcb(%struct.svm_softc*, i32) #1

declare dso_local i32 @svm_inout_str_index(%struct.svm_regctx*, i32) #1

declare dso_local i32 @svm_inout_str_count(%struct.svm_regctx*, i32) #1

declare dso_local i32 @svm_inout_str_addrsize(i32) #1

declare dso_local i32 @svm_inout_str_seginfo(%struct.svm_softc*, i32, i32, i32, %struct.vm_inout_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
