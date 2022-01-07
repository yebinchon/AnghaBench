; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@PATTACH_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PS_RUN = common dso_local global i32 0, align 4
@PT_ATTACH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: cannot ptrace child process %d\00", align 1
@WUNTRACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ERROR: child process %d didn't stop as expected\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: child process %d status 0x%x\00", align 1
@PS_STOP = common dso_local global i32 0, align 4
@PATTACH_NOSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_attach(i64 %0, i32 %1, %struct.proc_handle** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_handle**, align 8
  %8 = alloca %struct.proc_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc_handle** %2, %struct.proc_handle*** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i64 (...) @getpid()
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PATTACH_RDONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %98

24:                                               ; preds = %17, %13
  %25 = load i32, i32* @EV_CURRENT, align 4
  %26 = call i64 @elf_version(i32 %25)
  %27 = load i64, i64* @EV_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PS_RUN, align 4
  %35 = call i32 @proc_init(i64 %32, i32 %33, i32 %34, %struct.proc_handle** %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %85

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PATTACH_RDONLY, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load i32, i32* @PT_ATTACH, align 4
  %46 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %47 = call i32 @proc_getpid(%struct.proc_handle* %46)
  %48 = call i64 @ptrace(i32 %45, i32 %47, i32 0, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %85

54:                                               ; preds = %44
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @WUNTRACED, align 4
  %57 = call i32 @waitpid(i64 %55, i32* %10, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @DPRINTF(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %85

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @WIFSTOPPED(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @DPRINTFX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %68, i32 %69)
  br label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @PS_STOP, align 4
  %73 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %74 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PATTACH_NOSTOP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %82 = call i32 @proc_continue(%struct.proc_handle* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84, %59, %50, %38
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %90 = icmp ne %struct.proc_handle* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %93 = call i32 @proc_free(%struct.proc_handle* %92)
  store %struct.proc_handle* null, %struct.proc_handle** %8, align 8
  br label %94

94:                                               ; preds = %91, %88, %85
  %95 = load %struct.proc_handle*, %struct.proc_handle** %8, align 8
  %96 = load %struct.proc_handle**, %struct.proc_handle*** %7, align 8
  store %struct.proc_handle* %95, %struct.proc_handle** %96, align 8
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %29, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @proc_init(i64, i32, i32, %struct.proc_handle**) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @DPRINTFX(i8*, i64, i32) #1

declare dso_local i32 @proc_continue(%struct.proc_handle*) #1

declare dso_local i32 @proc_free(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
