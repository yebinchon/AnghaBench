; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pendjob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pendjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i64, i64, i64, %struct.process* }

@pcurrjob = common dso_local global %struct.process* null, align 8
@PFOREGND = common dso_local global i32 0, align 4
@PSTOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@pholdjob = common dso_local global %struct.process* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pendjob() #0 {
  %1 = alloca %struct.process*, align 8
  %2 = alloca %struct.process*, align 8
  %3 = load %struct.process*, %struct.process** @pcurrjob, align 8
  %4 = icmp ne %struct.process* %3, null
  br i1 %4, label %5, label %48

5:                                                ; preds = %0
  %6 = load %struct.process*, %struct.process** @pcurrjob, align 8
  %7 = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PFOREGND, align 4
  %10 = load i32, i32* @PSTOPPED, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %5
  %15 = load %struct.process*, %struct.process** @pcurrjob, align 8
  store %struct.process* %15, %struct.process** %1, align 8
  store %struct.process* null, %struct.process** @pcurrjob, align 8
  br label %16

16:                                               ; preds = %24, %14
  %17 = load %struct.process*, %struct.process** %1, align 8
  %18 = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.process*, %struct.process** %1, align 8
  %21 = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.process*, %struct.process** %1, align 8
  %26 = getelementptr inbounds %struct.process, %struct.process* %25, i32 0, i32 4
  %27 = load %struct.process*, %struct.process** %26, align 8
  store %struct.process* %27, %struct.process** %1, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.process*, %struct.process** %1, align 8
  %30 = getelementptr inbounds %struct.process, %struct.process* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.process*, %struct.process** %1, align 8
  store %struct.process* %33, %struct.process** %2, align 8
  br label %34

34:                                               ; preds = %42, %28
  %35 = load %struct.process*, %struct.process** %1, align 8
  %36 = getelementptr inbounds %struct.process, %struct.process* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.process*, %struct.process** %1, align 8
  %40 = getelementptr inbounds %struct.process, %struct.process* %39, i32 0, i32 4
  %41 = load %struct.process*, %struct.process** %40, align 8
  store %struct.process* %41, %struct.process** %1, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load %struct.process*, %struct.process** %1, align 8
  %44 = load %struct.process*, %struct.process** %2, align 8
  %45 = icmp ne %struct.process* %43, %44
  br i1 %45, label %34, label %46

46:                                               ; preds = %42
  %47 = call i32 @xputchar(i8 signext 10)
  br label %48

48:                                               ; preds = %46, %5, %0
  store %struct.process* null, %struct.process** @pcurrjob, align 8
  store %struct.process* null, %struct.process** @pholdjob, align 8
  ret void
}

declare dso_local i32 @xprintf(i8*, i64) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
