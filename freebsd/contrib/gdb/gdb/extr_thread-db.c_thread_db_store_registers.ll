; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32)* }
%struct.thread_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_beneath = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Cannot store general-purpose registers for thread %ld: %s\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Cannot store floating-point registers  for thread %ld: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thread_db_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @inferior_ptid, align 4
  %10 = call i32 @is_thread(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @target_beneath, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 %15(i32 %16)
  br label %71

18:                                               ; preds = %1
  %19 = load i32, i32* @inferior_ptid, align 4
  %20 = call %struct.thread_info* @find_thread_pid(i32 %19)
  store %struct.thread_info* %20, %struct.thread_info** %6, align 8
  %21 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %22 = call i32 @thread_db_map_id2thr(%struct.thread_info* %21, i32 1)
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %7, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @deprecated_read_register_gen(i32 %30, i8* %29)
  %32 = call i32 @thread_db_fetch_registers(i32 -1)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @supply_register(i32 %33, i8* %29)
  %35 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %35)
  br label %36

36:                                               ; preds = %25, %18
  %37 = load i64, i64* %3, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @fill_gregset(i32* %38, i32 -1)
  %40 = call i32 @fill_fpregset(i32* %4, i32 -1)
  %41 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @td_thr_setgregs_p(i32* %44, i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @TD_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load i32, i32* @inferior_ptid, align 4
  %52 = call i64 @GET_THREAD(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @thread_db_err_str(i64 %53)
  %55 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %52, i8* %54)
  br label %56

56:                                               ; preds = %50, %36
  %57 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %58 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i64 @td_thr_setfpregs_p(i32* %60, i32* %4)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @TD_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* @inferior_ptid, align 4
  %67 = call i64 @GET_THREAD(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @thread_db_err_str(i64 %68)
  %70 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %67, i8* %69)
  br label %71

71:                                               ; preds = %12, %65, %56
  ret void
}

declare dso_local i32 @is_thread(i32) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @thread_db_map_id2thr(%struct.thread_info*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #1

declare dso_local i32 @thread_db_fetch_registers(i32) #1

declare dso_local i32 @supply_register(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

declare dso_local i64 @td_thr_setgregs_p(i32*, i64) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

declare dso_local i64 @GET_THREAD(i32) #1

declare dso_local i8* @thread_db_err_str(i64) #1

declare dso_local i64 @td_thr_setfpregs_p(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
