; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptdel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64 }
%struct.ptrace_io_desc = type { i64*, i32, i8*, i32 }

@PS_DEAD = common dso_local global i64 0, align 8
@PS_UNDEAD = common dso_local global i64 0, align 8
@PS_IDLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"removing breakpoint at 0x%lx\00", align 1
@PS_STOP = common dso_local global i64 0, align 8
@PIOD_WRITE_I = common dso_local global i32 0, align 4
@BREAKPOINT_INSTR_SZ = common dso_local global i32 0, align 4
@PT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: couldn't write instruction at address 0x%jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_bkptdel(%struct.proc_handle* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ptrace_io_desc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %13 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PS_DEAD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %19 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PS_UNDEAD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %25 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PS_IDLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17, %3
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %73

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @DPRINTFX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i32 0, i32* %10, align 4
  %34 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %35 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PS_STOP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %41 = call i64 @proc_stop(%struct.proc_handle* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %73

44:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* @PIOD_WRITE_I, align 4
  %48 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 0
  store i64* %11, i64** %52, align 8
  %53 = load i32, i32* @BREAKPOINT_INSTR_SZ, align 4
  %54 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @PT_IO, align 4
  %56 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %57 = call i32 @proc_getpid(%struct.proc_handle* %56)
  %58 = ptrtoint %struct.ptrace_io_desc* %8 to i32
  %59 = call i64 @ptrace(i32 %55, i32 %57, i32 %58, i32 0)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %45
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %70 = call i32 @proc_continue(%struct.proc_handle* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %43, %29
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @DPRINTFX(i8*, i64) #1

declare dso_local i64 @proc_stop(%struct.proc_handle*) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @proc_continue(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
