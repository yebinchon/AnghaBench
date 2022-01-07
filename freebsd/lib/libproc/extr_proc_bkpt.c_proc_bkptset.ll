; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64 }
%struct.ptrace_io_desc = type { i64*, i8*, i8*, i32 }

@PS_DEAD = common dso_local global i64 0, align 8
@PS_UNDEAD = common dso_local global i64 0, align 8
@PS_IDLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"adding breakpoint at 0x%lx\00", align 1
@PS_STOP = common dso_local global i64 0, align 8
@PIOD_READ_I = common dso_local global i32 0, align 4
@BREAKPOINT_INSTR_SZ = common dso_local global i8* null, align 8
@PT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: couldn't read instruction at address 0x%jx\00", align 1
@BREAKPOINT_INSTR = common dso_local global i64 0, align 8
@PIOD_WRITE_I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"ERROR: couldn't write instruction at address 0x%jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_bkptset(%struct.proc_handle* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ptrace_io_desc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %14 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PS_DEAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %20 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PS_UNDEAD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %26 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PS_IDLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18, %3
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %96

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @DPRINTFX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %33)
  store i32 0, i32* %10, align 4
  %35 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %36 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PS_STOP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %42 = call i64 @proc_stop(%struct.proc_handle* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %96

45:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %32
  store i64 0, i64* %11, align 8
  %47 = load i32, i32* @PIOD_READ_I, align 4
  %48 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 0
  store i64* %11, i64** %52, align 8
  %53 = load i8*, i8** @BREAKPOINT_INSTR_SZ, align 8
  %54 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @PT_IO, align 4
  %56 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %57 = call i32 @proc_getpid(%struct.proc_handle* %56)
  %58 = ptrtoint %struct.ptrace_io_desc* %8 to i32
  %59 = call i64 @ptrace(i32 %55, i32 %57, i32 %58, i32 0)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %9, align 4
  br label %88

65:                                               ; preds = %46
  %66 = load i64, i64* %11, align 8
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @BREAKPOINT_INSTR, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* @PIOD_WRITE_I, align 4
  %70 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 0
  store i64* %11, i64** %74, align 8
  %75 = load i8*, i8** @BREAKPOINT_INSTR_SZ, align 8
  %76 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @PT_IO, align 4
  %78 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %79 = call i32 @proc_getpid(%struct.proc_handle* %78)
  %80 = ptrtoint %struct.ptrace_io_desc* %8 to i32
  %81 = call i64 @ptrace(i32 %77, i32 %79, i32 %80, i32 0)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @DPRINTF(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %9, align 4
  br label %88

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %83, %61
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %93 = call i32 @proc_continue(%struct.proc_handle* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %44, %30
  %97 = load i32, i32* %4, align 4
  ret i32 %97
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
