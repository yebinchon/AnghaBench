; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dofg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dofg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.process = type { i32, i64 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_BADJOB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dofg(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.process*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %6 = load %struct.command*, %struct.command** %4, align 8
  %7 = call i32 @USE(%struct.command* %6)
  %8 = call i32 (...) @okpcntl()
  %9 = load i32**, i32*** %3, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i32 1
  store i32** %10, i32*** %3, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call %struct.process* @pfind(i32* %13)
  store %struct.process* %14, %struct.process** %5, align 8
  %15 = load %struct.process*, %struct.process** %5, align 8
  %16 = call i32 @pstart(%struct.process* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load %struct.process*, %struct.process** %5, align 8
  %20 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @ERR_NAME, align 4
  %22 = load i32, i32* @ERR_BADJOB, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.process*, %struct.process** %5, align 8
  %25 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @stderror(i32 %23, i32 %26, i32 %28)
  br label %33

30:                                               ; preds = %11
  %31 = load %struct.process*, %struct.process** %5, align 8
  %32 = call i32 @pjwait(%struct.process* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i32**, i32*** %3, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32**, i32*** %3, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %3, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %11, label %44

44:                                               ; preds = %42
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @okpcntl(...) #1

declare dso_local %struct.process* @pfind(i32*) #1

declare dso_local i32 @pstart(%struct.process*, i32) #1

declare dso_local i32 @stderror(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pjwait(%struct.process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
