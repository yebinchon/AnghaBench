; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_ptrace_machdep.c_cpu_ptrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_ptrace_machdep.c_cpu_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__*, %struct.pcb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcb = type { i32, i32 }

@PT_FIRSTMACH = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_ptrace(%struct.thread* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcb*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PT_FIRSTMACH, align 4
  %15 = add nsw i32 %14, 0
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 132, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PT_FIRSTMACH, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 128, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %79 [
    i32 132, label %26
    i32 128, label %26
    i32 133, label %26
    i32 134, label %26
    i32 129, label %26
    i32 136, label %32
    i32 135, label %32
    i32 131, label %56
    i32 130, label %56
  ]

26:                                               ; preds = %24, %24, %24, %24, %24
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @cpu_ptrace_xstate(%struct.thread* %27, i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  br label %81

32:                                               ; preds = %24, %24
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 1
  %35 = load %struct.pcb*, %struct.pcb** %34, align 8
  store %struct.pcb* %35, %struct.pcb** %11, align 8
  %36 = load %struct.thread*, %struct.thread** %5, align 8
  %37 = load %struct.thread*, %struct.thread** @curthread, align 8
  %38 = icmp eq %struct.thread* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.pcb*, %struct.pcb** %11, align 8
  %41 = call i32 @update_pcb_bases(%struct.pcb* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 136
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.pcb*, %struct.pcb** %11, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 1
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.pcb*, %struct.pcb** %11, align 8
  %50 = getelementptr inbounds %struct.pcb, %struct.pcb* %49, i32 0, i32 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32* [ %47, %45 ], [ %50, %48 ]
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @copyout(i32* %53, i8* %54, i32 4)
  store i32 %55, i32* %12, align 4
  br label %81

56:                                               ; preds = %24, %24
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @copyin(i8* %57, i32* %10, i32 4)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %81

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.thread*, %struct.thread** %5, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %63, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %12, align 4
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.thread*, %struct.thread** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cpu_ptrace_setbase(%struct.thread* %75, i32 %76, i32 %77)
  br label %81

79:                                               ; preds = %24
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %74, %72, %61, %51, %26
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @cpu_ptrace_xstate(%struct.thread*, i32, i8*, i32) #1

declare dso_local i32 @update_pcb_bases(%struct.pcb*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @cpu_ptrace_setbase(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
