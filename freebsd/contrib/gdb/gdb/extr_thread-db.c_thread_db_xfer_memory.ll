; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }
%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_beneath = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @thread_db_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_db_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %15 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %15, %struct.cleanup** %13, align 8
  %16 = load i32, i32* @inferior_ptid, align 4
  %17 = call i64 @is_thread(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @target_thread_alive(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @GET_PID(i32 %24)
  %26 = call i32 @pid_to_ptid(i32 %25)
  store i32 %26, i32* @inferior_ptid, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @inferior_ptid, align 4
  %29 = call i32 @lwp_from_thread(i32 %28)
  store i32 %29, i32* @inferior_ptid, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @target_beneath, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %40 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %41 = call i32 %34(i32 %35, i8* %36, i32 %37, i32 %38, %struct.mem_attrib* %39, %struct.target_ops* %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %43 = call i32 @do_cleanups(%struct.cleanup* %42)
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @lwp_from_thread(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
