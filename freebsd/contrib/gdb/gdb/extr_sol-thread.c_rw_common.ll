; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_rw_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_rw_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32, i32, %struct.TYPE_4__*)* }
%struct.TYPE_5__ = type { i32 (i32, i8*, i32, i32, i32, i32*)* }
%struct.ps_prochandle = type { i32 }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@core_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rw_common (): read\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rw_common (): write\00", align 1
@PS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"rw_common (): unable to read at addr 0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"rw_common (): unable to write at addr 0x%lx\00", align 1
@PS_OK = common dso_local global i32 0, align 4
@exec_bfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ps_prochandle*, i32, i8*, i32)* @rw_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rw_common(i32 %0, %struct.ps_prochandle* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps_prochandle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cleanup*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.ps_prochandle* %1, %struct.ps_prochandle** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %14, %struct.cleanup** %12, align 8
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i64 @is_thread(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @inferior_ptid, align 4
  %20 = call i32 @target_thread_alive(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %5
  %23 = call i32 (...) @procfs_first_available()
  store i32 %23, i32* @inferior_ptid, align 4
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %25
  %29 = load i64, i64* @target_has_execution, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32 (i32, i8*, i32, i32, i32, %struct.TYPE_4__*)*, i32 (i32, i8*, i32, i32, i32, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @procfs_ops, i32 0, i32 0), align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %32(i32 %33, i8* %34, i32 %35, i32 %36, i32 0, %struct.TYPE_4__* @procfs_ops)
  store i32 %37, i32* %13, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load i32 (i32, i8*, i32, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @orig_core_ops, i32 0, i32 0), align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %39(i32 %40, i8* %41, i32 %42, i32 %43, i32 0, i32* @core_ops)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @print_sys_errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @print_sys_errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %59 = call i32 @do_cleanups(%struct.cleanup* %58)
  %60 = load i32, i32* @PS_ERR, align 4
  store i32 %60, i32* %6, align 4
  br label %92

61:                                               ; preds = %45
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %77 = call i32 @do_cleanups(%struct.cleanup* %76)
  %78 = load i32, i32* @PS_ERR, align 4
  store i32 %78, i32* %6, align 4
  br label %92

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %10, align 8
  br label %25

88:                                               ; preds = %25
  %89 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %90 = call i32 @do_cleanups(%struct.cleanup* %89)
  %91 = load i32, i32* @PS_OK, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %75, %57
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @procfs_first_available(...) #1

declare dso_local i32 @print_sys_errmsg(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @warning(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
