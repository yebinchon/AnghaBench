; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpudna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpudna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@curpcb = common dso_local global %struct.TYPE_2__* null, align 8
@PCB_FPUNOSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fpudna while in fpu_kern_enter(FPU_KERN_NOCTX)\00", align 1
@fpcurthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"fpudna: fpcurthread = %p (%d), curthread = %p (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpudna() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %2, %struct.thread** %1, align 8
  %3 = call i32 (...) @critical_enter()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curpcb, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PCB_FPUNOSAVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @fpcurthread, align 4
  %13 = call %struct.thread* @PCPU_GET(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %1, align 8
  %15 = icmp eq %struct.thread* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @__predict_false(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 (...) @stop_emulating()
  br label %43

21:                                               ; preds = %0
  %22 = load i32, i32* @fpcurthread, align 4
  %23 = call %struct.thread* @PCPU_GET(i32 %22)
  %24 = icmp ne %struct.thread* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* @fpcurthread, align 4
  %30 = call %struct.thread* @PCPU_GET(i32 %29)
  %31 = load i32, i32* @fpcurthread, align 4
  %32 = call %struct.thread* @PCPU_GET(i32 %31)
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.thread*, %struct.thread** %1, align 8
  %36 = load %struct.thread*, %struct.thread** %1, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %30, i32 %34, %struct.thread* %35, i32 %38)
  br label %40

40:                                               ; preds = %28, %21
  %41 = load %struct.thread*, %struct.thread** %1, align 8
  %42 = call i32 @restore_fpu_curthread(%struct.thread* %41)
  br label %43

43:                                               ; preds = %40, %19
  %44 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @panic(i8*, %struct.thread*, i32, %struct.thread*, i32) #1

declare dso_local i32 @restore_fpu_curthread(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
