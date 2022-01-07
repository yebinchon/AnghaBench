; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.varent = type { i64* }

@STRargv = common dso_local global i32* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOMORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shift(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.varent*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load %struct.command*, %struct.command** %4, align 8
  %8 = call i32 @USE(%struct.command* %7)
  %9 = load i32**, i32*** %3, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i32 1
  store i32** %10, i32*** %3, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** @STRargv, align 8
  store i32* %16, i32** %6, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @strip(i32* %18)
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.varent* @adrof(i32* %21)
  store %struct.varent* %22, %struct.varent** %5, align 8
  %23 = load %struct.varent*, %struct.varent** %5, align 8
  %24 = icmp eq %struct.varent* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.varent*, %struct.varent** %5, align 8
  %27 = getelementptr inbounds %struct.varent, %struct.varent* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @udvar(i32* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.varent*, %struct.varent** %5, align 8
  %35 = getelementptr inbounds %struct.varent, %struct.varent* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @ERR_NAME, align 4
  %42 = load i32, i32* @ERR_NOMORE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @stderror(i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.varent*, %struct.varent** %5, align 8
  %47 = getelementptr inbounds %struct.varent, %struct.varent* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @lshift(i64* %48, i32 1)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @update_vars(i32* %50)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @strip(i32*) #1

declare dso_local %struct.varent* @adrof(i32*) #1

declare dso_local i32 @udvar(i32*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @lshift(i64*, i32) #1

declare dso_local i32 @update_vars(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
