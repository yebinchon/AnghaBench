; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpu_kern_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpu_kern_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32, i64 }
%struct.fpu_kern_ctx = type { i32, i64 }

@PCB_FPUNOSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"non-null ctx after FPU_KERN_NOCTX\00", align 1
@fpcurthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"non-NULL fpcurthread for PCB_FPUNOSAVE\00", align 1
@PCB_FPUINITDONE = common dso_local global i32 0, align 4
@FPU_KERN_CTX_INUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"leaving not inuse ctx\00", align 1
@FPU_KERN_CTX_DUMMY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"dummy ctx\00", align 1
@curthread = common dso_local global i32* null, align 8
@PCB_USERFPUINITDONE = common dso_local global i32 0, align 4
@PCB_KERNFPU = common dso_local global i32 0, align 4
@FPU_KERN_CTX_FPUINITDONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unpaired fpu_kern_leave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_kern_leave(%struct.thread* %0, %struct.fpu_kern_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fpu_kern_ctx*, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fpu_kern_ctx* %1, %struct.fpu_kern_ctx** %5, align 8
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.pcb*, %struct.pcb** %8, align 8
  store %struct.pcb* %9, %struct.pcb** %6, align 8
  %10 = load %struct.pcb*, %struct.pcb** %6, align 8
  %11 = getelementptr inbounds %struct.pcb, %struct.pcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCB_FPUNOSAVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %18 = icmp eq %struct.fpu_kern_ctx* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @fpcurthread, align 4
  %22 = call i32* @PCPU_GET(i32 %21)
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @CRITICAL_ASSERT(%struct.thread* %26)
  %28 = load %struct.pcb*, %struct.pcb** %6, align 8
  %29 = load i32, i32* @PCB_FPUNOSAVE, align 4
  %30 = load i32, i32* @PCB_FPUINITDONE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @clear_pcb_flags(%struct.pcb* %28, i32 %31)
  %33 = call i32 (...) @start_emulating()
  br label %81

34:                                               ; preds = %2
  %35 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FPU_KERN_CTX_INUSE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @FPU_KERN_CTX_INUSE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = call i64 @is_fpu_kern_thread(i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FPU_KERN_CTX_DUMMY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %133

59:                                               ; preds = %51, %34
  %60 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FPU_KERN_CTX_DUMMY, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @KASSERT(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 (...) @critical_enter()
  %69 = load i32*, i32** @curthread, align 8
  %70 = load i32, i32* @fpcurthread, align 4
  %71 = call i32* @PCPU_GET(i32 %70)
  %72 = icmp eq i32* %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = call i32 (...) @fpudrop()
  br label %75

75:                                               ; preds = %73, %59
  %76 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pcb*, %struct.pcb** %6, align 8
  %80 = getelementptr inbounds %struct.pcb, %struct.pcb* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %16
  %82 = load %struct.pcb*, %struct.pcb** %6, align 8
  %83 = getelementptr inbounds %struct.pcb, %struct.pcb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.pcb*, %struct.pcb** %6, align 8
  %86 = call i64 @get_pcb_user_save_pcb(%struct.pcb* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.pcb*, %struct.pcb** %6, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PCB_USERFPUINITDONE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.pcb*, %struct.pcb** %6, align 8
  %97 = load i32, i32* @PCB_FPUINITDONE, align 4
  %98 = call i32 @set_pcb_flags(%struct.pcb* %96, i32 %97)
  %99 = load %struct.pcb*, %struct.pcb** %6, align 8
  %100 = load i32, i32* @PCB_KERNFPU, align 4
  %101 = call i32 @clear_pcb_flags(%struct.pcb* %99, i32 %100)
  br label %108

102:                                              ; preds = %88
  %103 = load %struct.pcb*, %struct.pcb** %6, align 8
  %104 = load i32, i32* @PCB_FPUINITDONE, align 4
  %105 = load i32, i32* @PCB_KERNFPU, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @clear_pcb_flags(%struct.pcb* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %95
  br label %131

109:                                              ; preds = %81
  %110 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %111 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FPU_KERN_CTX_FPUINITDONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.pcb*, %struct.pcb** %6, align 8
  %118 = load i32, i32* @PCB_FPUINITDONE, align 4
  %119 = call i32 @set_pcb_flags(%struct.pcb* %117, i32 %118)
  br label %124

120:                                              ; preds = %109
  %121 = load %struct.pcb*, %struct.pcb** %6, align 8
  %122 = load i32, i32* @PCB_FPUINITDONE, align 4
  %123 = call i32 @clear_pcb_flags(%struct.pcb* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.pcb*, %struct.pcb** %6, align 8
  %126 = call i32 @PCB_USER_FPU(%struct.pcb* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @KASSERT(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %124, %108
  %132 = call i32 (...) @critical_exit()
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %58
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PCPU_GET(i32) #1

declare dso_local i32 @CRITICAL_ASSERT(%struct.thread*) #1

declare dso_local i32 @clear_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @start_emulating(...) #1

declare dso_local i64 @is_fpu_kern_thread(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @fpudrop(...) #1

declare dso_local i64 @get_pcb_user_save_pcb(%struct.pcb*) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
