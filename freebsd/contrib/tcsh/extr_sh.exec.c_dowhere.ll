; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_dowhere.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_dowhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@STRautorehash = common dso_local global i32 0, align 4
@STRstatus = common dso_local global i32 0, align 4
@STR1 = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dowhere(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.command*, %struct.command** %4, align 8
  %7 = call i32 @USE(%struct.command* %6)
  %8 = load i32, i32* @STRautorehash, align 4
  %9 = call i64 @adrof(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @dohash(i32* null, i32* null)
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32**, i32*** %3, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %3, align 8
  br label %16

16:                                               ; preds = %26, %13
  %17 = load i32**, i32*** %3, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32**, i32*** %3, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @find_cmd(i32* %22, i32 1)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load i32**, i32*** %3, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i32 1
  store i32** %28, i32*** %3, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @STRstatus, align 4
  %34 = load i32, i32* @STR1, align 4
  %35 = load i32, i32* @VAR_READWRITE, align 4
  %36 = call i32 @setcopy(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @dohash(i32*, i32*) #1

declare dso_local i32 @find_cmd(i32*, i32) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
