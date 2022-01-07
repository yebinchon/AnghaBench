; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dofg1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dofg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.process = type { i32, i64 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_BADJOB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dofg1(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.process*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %6 = load %struct.command*, %struct.command** %4, align 8
  %7 = call i32 @USE(%struct.command* %6)
  %8 = call i32 (...) @okpcntl()
  %9 = load i32**, i32*** %3, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.process* @pfind(i32* %11)
  store %struct.process* %12, %struct.process** %5, align 8
  %13 = load %struct.process*, %struct.process** %5, align 8
  %14 = call i32 @pstart(%struct.process* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.process*, %struct.process** %5, align 8
  %18 = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @ERR_NAME, align 4
  %20 = load i32, i32* @ERR_BADJOB, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.process*, %struct.process** %5, align 8
  %23 = getelementptr inbounds %struct.process, %struct.process* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @stderror(i32 %21, i32 %24, i32 %26)
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.process*, %struct.process** %5, align 8
  %30 = call i32 @pjwait(%struct.process* %29)
  br label %31

31:                                               ; preds = %28, %16
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
