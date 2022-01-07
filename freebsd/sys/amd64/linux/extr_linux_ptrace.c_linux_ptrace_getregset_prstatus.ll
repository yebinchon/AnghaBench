; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getregset_prstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getregset_prstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i64, i64 }
%struct.ptrace_lwpinfo = type { i32 }
%struct.reg = type { i32 }
%struct.linux_pt_regset = type { i32, i64, i64, i32, i32 }
%struct.iovec = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"copyin error %d\00", align 1
@PT_GETREGS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@PT_LWPINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PT_LWPINFO failed with error %d\00", align 1
@PL_FLAG_SCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"copyout error %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"iov copyout error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i64)* @linux_ptrace_getregset_prstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ptrace_getregset_prstatus(%struct.thread* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ptrace_lwpinfo, align 4
  %9 = alloca %struct.reg, align 4
  %10 = alloca %struct.linux_pt_regset, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca %struct.pcb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast %struct.iovec* %11 to %struct.linux_pt_regset*
  %20 = call i32 @copyin(i8* %18, %struct.linux_pt_regset* %19, i32 32)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @linux_msg(%struct.thread* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %4, align 4
  br label %115

28:                                               ; preds = %3
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = load i32, i32* @PT_GETREGS, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @kern_ptrace(%struct.thread* %29, i32 %30, i32 %31, %struct.reg* %9, i32 0)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %4, align 4
  br label %115

37:                                               ; preds = %28
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load %struct.pcb*, %struct.pcb** %39, align 8
  store %struct.pcb* %40, %struct.pcb** %12, align 8
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = load %struct.thread*, %struct.thread** @curthread, align 8
  %43 = icmp eq %struct.thread* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.pcb*, %struct.pcb** %12, align 8
  %46 = call i32 @update_pcb_bases(%struct.pcb* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.pcb*, %struct.pcb** %12, align 8
  %49 = getelementptr inbounds %struct.pcb, %struct.pcb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load %struct.pcb*, %struct.pcb** %12, align 8
  %52 = getelementptr inbounds %struct.pcb, %struct.pcb* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @map_regs_to_linux_regset(%struct.reg* %9, i64 %54, i64 %55, %struct.linux_pt_regset* %10)
  %57 = load %struct.thread*, %struct.thread** %5, align 8
  %58 = load i32, i32* @PT_LWPINFO, align 4
  %59 = load i32, i32* %6, align 4
  %60 = bitcast %struct.ptrace_lwpinfo* %8 to %struct.reg*
  %61 = call i32 @kern_ptrace(%struct.thread* %57, i32 %58, i32 %59, %struct.reg* %60, i32 4)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.thread*, %struct.thread** %5, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @linux_msg(%struct.thread* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %4, align 4
  br label %115

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PL_FLAG_SCE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %10, i32 0, i32 0
  store i32 -38, i32* %76, align 8
  %77 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %10, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %10, i32 0, i32 4
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @MIN(i64 %82, i32 32)
  store i64 %83, i64* %15, align 8
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load i64, i64* %15, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @copyout(%struct.linux_pt_regset* %10, i8* %86, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load %struct.thread*, %struct.thread** %5, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @linux_msg(%struct.thread* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %4, align 4
  br label %115

97:                                               ; preds = %80
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, %98
  store i64 %101, i64* %99, align 8
  %102 = bitcast %struct.iovec* %11 to %struct.linux_pt_regset*
  %103 = load i64, i64* %7, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @copyout(%struct.linux_pt_regset* %102, i8* %104, i32 32)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.thread*, %struct.thread** %5, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @linux_msg(%struct.thread* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %4, align 4
  br label %115

113:                                              ; preds = %97
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %108, %92, %64, %35, %23
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @copyin(i8*, %struct.linux_pt_regset*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

declare dso_local i32 @kern_ptrace(%struct.thread*, i32, i32, %struct.reg*, i32) #1

declare dso_local i32 @update_pcb_bases(%struct.pcb*) #1

declare dso_local i32 @map_regs_to_linux_regset(%struct.reg*, i64, i64, %struct.linux_pt_regset*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @copyout(%struct.linux_pt_regset*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
