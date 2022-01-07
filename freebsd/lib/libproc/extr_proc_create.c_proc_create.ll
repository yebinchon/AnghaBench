; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PT_TRACE_ME = common dso_local global i32 0, align 4
@environ = common dso_local global i8** null, align 8
@WUNTRACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ERROR: child process %d didn't stop as expected\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: child process %d status 0x%x\00", align 1
@PS_IDLE = common dso_local global i32 0, align 4
@PS_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_create(i8* %0, i8** %1, i8** %2, i32 (i8*)** %3, i8* %4, %struct.proc_handle** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32 (i8*)**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.proc_handle**, align 8
  %14 = alloca %struct.proc_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 (i8*)** %3, i32 (i8*)*** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.proc_handle** %5, %struct.proc_handle*** %13, align 8
  %18 = load i32, i32* @EV_CURRENT, align 4
  %19 = call i64 @elf_version(i32 %18)
  %20 = load i64, i64* @EV_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %7, align 4
  br label %100

24:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  store %struct.proc_handle* null, %struct.proc_handle** %14, align 8
  %25 = call i32 (...) @fork()
  store i32 %25, i32* %17, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %15, align 4
  br label %96

29:                                               ; preds = %24
  %30 = load i32, i32* %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32, i32* @PT_TRACE_ME, align 4
  %34 = call i64 @ptrace(i32 %33, i32 0, i32 0, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @_exit(i32 1) #3
  unreachable

38:                                               ; preds = %32
  %39 = load i32 (i8*)**, i32 (i8*)*** %11, align 8
  %40 = icmp ne i32 (i8*)** %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32 (i8*)**, i32 (i8*)*** %11, align 8
  %43 = load i32 (i8*)*, i32 (i8*)** %42, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 %43(i8* %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i8**, i8*** %10, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8**, i8*** %10, align 8
  store i8** %50, i8*** @environ, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = call i32 @execvp(i8* %52, i8** %53)
  %55 = call i32 @_exit(i32 2) #3
  unreachable

56:                                               ; preds = %29
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @WUNTRACED, align 4
  %59 = call i32 @waitpid(i32 %57, i32* %16, i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %85

65:                                               ; preds = %56
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @WIFSTOPPED(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOENT, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @DPRINTFX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %85

74:                                               ; preds = %65
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @PS_IDLE, align 4
  %77 = call i32 @proc_init(i32 %75, i32 0, i32 %76, %struct.proc_handle** %14)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @PS_STOP, align 4
  %82 = load %struct.proc_handle*, %struct.proc_handle** %14, align 8
  %83 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %69, %61
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.proc_handle*, %struct.proc_handle** %14, align 8
  %90 = icmp ne %struct.proc_handle* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.proc_handle*, %struct.proc_handle** %14, align 8
  %93 = call i32 @proc_free(%struct.proc_handle* %92)
  store %struct.proc_handle* null, %struct.proc_handle** %14, align 8
  br label %94

94:                                               ; preds = %91, %88, %85
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %27
  %97 = load %struct.proc_handle*, %struct.proc_handle** %14, align 8
  %98 = load %struct.proc_handle**, %struct.proc_handle*** %13, align 8
  store %struct.proc_handle* %97, %struct.proc_handle** %98, align 8
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %22
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @DPRINTFX(i8*, i32, i32) #1

declare dso_local i32 @proc_init(i32, i32, i32, %struct.proc_handle**) #1

declare dso_local i32 @proc_free(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
