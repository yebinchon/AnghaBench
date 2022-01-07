; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@inferior_ptid = common dso_local global i32 0, align 4
@procfs_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@main_ta = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"sol_thread_store_registers: td_ta_map_id2thr %s\00", align 1
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"sol_thread_store_registers: td_thr_getgregs %s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"sol_thread_store_registers: td_thr_getfpregs %s\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"sol_thread_store_registers: td_thr_setgregs %s\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"sol_thread_store_registers: td_thr_setfpregs %s\00", align 1
@TD_NOXREGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sol_thread_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sol_thread_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = call i32 @is_thread(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 %14(i32 %15)
  br label %85

17:                                               ; preds = %1
  %18 = load i32, i32* @inferior_ptid, align 4
  %19 = call i32 @GET_THREAD(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @main_ta, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @p_td_ta_map_id2thr(i32 %20, i32 %21, i32* %4)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TD_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @td_err_string(i64 %27)
  %29 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @regcache_collect(i32 %38, i8* %37)
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @p_td_thr_getgregs(i32* %4, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @TD_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @td_err_string(i64 %46)
  %48 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = call i64 @p_td_thr_getfpregs(i32* %4, i32* %7)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @TD_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @td_err_string(i64 %55)
  %57 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @supply_register(i32 %59, i8* %37)
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %58, %30
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @fill_gregset(i32* %6, i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @fill_fpregset(i32* %7, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @p_td_thr_setgregs(i32* %4, i32 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @TD_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @td_err_string(i64 %73)
  %75 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %62
  %77 = call i64 @p_td_thr_setfpregs(i32* %4, i32* %7)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @TD_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @td_err_string(i64 %82)
  %84 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %13, %81, %76
  ret void
}

declare dso_local i32 @is_thread(i32) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i64 @p_td_ta_map_id2thr(i32, i32, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @td_err_string(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i64 @p_td_thr_getgregs(i32*, i32) #1

declare dso_local i64 @p_td_thr_getfpregs(i32*, i32*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

declare dso_local i64 @p_td_thr_setgregs(i32*, i32) #1

declare dso_local i64 @p_td_thr_setfpregs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
