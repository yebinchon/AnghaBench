; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dobg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dobg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.process = type { i32, i64 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_BADJOB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dobg(i32** %0, %struct.command* %1) #0 {
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

11:                                               ; preds = %40, %2
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call %struct.process* @pfind(i32* %13)
  store %struct.process* %14, %struct.process** %5, align 8
  %15 = load %struct.process*, %struct.process** %5, align 8
  %16 = call i32 @pstart(%struct.process* %15, i32 0)
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
  br label %30

30:                                               ; preds = %18, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32**, i32*** %3, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32**, i32*** %3, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i32 1
  store i32** %37, i32*** %3, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %11, label %42

42:                                               ; preds = %40
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @okpcntl(...) #1

declare dso_local %struct.process* @pfind(i32*) #1

declare dso_local i32 @pstart(%struct.process*, i32) #1

declare dso_local i32 @stderror(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
