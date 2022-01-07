; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_lwp_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_lwp_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@inferior_ptid = common dso_local global i32 0, align 4
@child_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PT_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot get lwp %d registers: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PT_SETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot set lwp %d registers: %s\0A\00", align 1
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot get lwp %d float registers: %s\0A\00", align 1
@PT_SETFPREGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot set lwp %d float registers: %s\0A\00", align 1
@PT_GETXMMREGS = common dso_local global i32 0, align 4
@PT_SETXMMREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fbsd_lwp_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_lwp_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @inferior_ptid, align 4
  %7 = call i32 @IS_LWP(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child_ops, i32 0, i32 0), align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 %10(i32 %11)
  br label %71

13:                                               ; preds = %1
  %14 = load i32, i32* @inferior_ptid, align 4
  %15 = call i32 @GET_LWP(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @PT_GETREGS, align 4
  %20 = load i32, i32* %5, align 4
  %21 = bitcast i32* %3 to i8*
  %22 = call i32 @ptrace(i32 %19, i32 %20, i8* %21, i32 0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i8* @safe_strerror(i32 %26)
  %28 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %27)
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @fill_gregset(i32* %3, i32 %31)
  %33 = load i32, i32* @PT_SETREGS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = bitcast i32* %3 to i8*
  %36 = call i32 @ptrace(i32 %33, i32 %34, i8* %35, i32 0)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @safe_strerror(i32 %40)
  %42 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* @PT_GETFPREGS, align 4
  %48 = load i32, i32* %5, align 4
  %49 = bitcast i32* %4 to i8*
  %50 = call i32 @ptrace(i32 %47, i32 %48, i8* %49, i32 0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i8* @safe_strerror(i32 %54)
  %56 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %55)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @fill_fpregset(i32* %4, i32 %59)
  %61 = load i32, i32* @PT_SETFPREGS, align 4
  %62 = load i32, i32* %5, align 4
  %63 = bitcast i32* %4 to i8*
  %64 = call i32 @ptrace(i32 %61, i32 %62, i8* %63, i32 0)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i8* @safe_strerror(i32 %68)
  %70 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %67, i8* %69)
  br label %71

71:                                               ; preds = %9, %66, %58
  ret void
}

declare dso_local i32 @IS_LWP(i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @ptrace(i32, i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @safe_strerror(i32) #1

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
