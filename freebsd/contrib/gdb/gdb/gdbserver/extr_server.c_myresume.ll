; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_myresume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_myresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.thread_resume*)* }
%struct.thread_resume = type { i32, i32, i32, i32 }
%struct.inferior_list_entry = type { i32 }

@cont_thread = common dso_local global i64 0, align 8
@current_inferior = common dso_local global i64 0, align 8
@the_target = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myresume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.thread_resume], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @cont_thread, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12, %9, %2
  %16 = load i64, i64* @current_inferior, align 8
  %17 = inttoptr i64 %16 to %struct.inferior_list_entry*
  %18 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 0
  %21 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 0
  %24 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 0
  %27 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 16
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = load i64, i64* @cont_thread, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %50, i32 0, i32 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.thread_resume*)*, i32 (%struct.thread_resume*)** %53, align 8
  %55 = getelementptr inbounds [2 x %struct.thread_resume], [2 x %struct.thread_resume]* %5, i64 0, i64 0
  %56 = call i32 %54(%struct.thread_resume* %55)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
