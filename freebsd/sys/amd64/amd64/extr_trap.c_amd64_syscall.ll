; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_amd64_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_amd64_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }

@PSL_T = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"System call %s returning with kernel FPU ctx leaked\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"System call %s returning with mangled pcb_save\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"System call %s returning with leaked invl_gen %lu\00", align 1
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PCB_FULL_IRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_syscall(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call i32 @syscallenter(%struct.thread* %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @__predict_false(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @PSL_T, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %13
  store i32 %19, i32* %17, align 8
  %20 = call i32 @ksiginfo_init_trap(%struct.TYPE_13__* %5)
  %21 = load i32, i32* @SIGTRAP, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @TRAP_TRACE, align 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = call i32 @trapsignal(%struct.thread* %32, %struct.TYPE_13__* %5)
  br label %34

34:                                               ; preds = %11, %2
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = call i32 @PCB_USER_FPU(%struct.TYPE_14__* %37)
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @syscallname(i32 %41, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %38, i8* %48)
  %50 = load %struct.thread*, %struct.thread** %3, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = call i64 @get_pcb_user_save_td(%struct.thread* %55)
  %57 = icmp eq i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.thread*, %struct.thread** %3, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.thread*, %struct.thread** %3, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @syscallname(i32 %61, i32 %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @KASSERT(i32 %58, i8* %68)
  %70 = call i32 (...) @pmap_not_in_di()
  %71 = load %struct.thread*, %struct.thread** %3, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.thread*, %struct.thread** %3, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @syscallname(i32 %73, i32 %77)
  %79 = load %struct.thread*, %struct.thread** %3, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %70, i8* %85)
  %87 = load %struct.thread*, %struct.thread** %3, align 8
  %88 = call i32 @syscallret(%struct.thread* %87)
  %89 = load %struct.thread*, %struct.thread** %3, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %95 = icmp sge i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @__predict_false(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %34
  %100 = load %struct.thread*, %struct.thread** %3, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i32, i32* @PCB_FULL_IRET, align 4
  %104 = call i32 @set_pcb_flags(%struct.TYPE_14__* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %34
  %106 = load %struct.thread*, %struct.thread** %3, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @amd64_syscall_ret_flush_l1d_inline(i32 %108)
  ret void
}

declare dso_local i32 @syscallenter(%struct.thread*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_13__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_13__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCB_USER_FPU(%struct.TYPE_14__*) #1

declare dso_local i32 @syscallname(i32, i32) #1

declare dso_local i64 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @pmap_not_in_di(...) #1

declare dso_local i32 @syscallret(%struct.thread*) #1

declare dso_local i32 @set_pcb_flags(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @amd64_syscall_ret_flush_l1d_inline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
