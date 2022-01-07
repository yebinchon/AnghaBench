; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dfix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i64** }

@noexec = common dso_local global i64 0, align 8
@_DOL = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dfix(%struct.command* %0) #0 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca i64**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64**, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  %6 = load i64, i64* @noexec, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.command*, %struct.command** %2, align 8
  %11 = getelementptr inbounds %struct.command, %struct.command* %10, i32 0, i32 0
  %12 = load i64**, i64*** %11, align 8
  store i64** %12, i64*** %3, align 8
  br label %13

13:                                               ; preds = %47, %9
  %14 = load i64**, i64*** %3, align 8
  %15 = getelementptr inbounds i64*, i64** %14, i32 1
  store i64** %15, i64*** %3, align 8
  %16 = load i64*, i64** %14, align 8
  store i64* %16, i64** %4, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @_DOL, align 4
  %27 = load i32, i32* @QUOTES, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @cmap(i64 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.command*, %struct.command** %2, align 8
  %33 = getelementptr inbounds %struct.command, %struct.command* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = call i64** @Dfix2(i64** %34)
  store i64** %35, i64*** %5, align 8
  %36 = load %struct.command*, %struct.command** %2, align 8
  %37 = getelementptr inbounds %struct.command, %struct.command* %36, i32 0, i32 0
  %38 = load i64**, i64*** %37, align 8
  %39 = call i32 @blkfree(i64** %38)
  %40 = load i64**, i64*** %5, align 8
  %41 = load %struct.command*, %struct.command** %2, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 0
  store i64** %40, i64*** %42, align 8
  br label %48

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i64*, i64** %4, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %4, align 8
  br label %19

47:                                               ; preds = %19
  br label %13

48:                                               ; preds = %8, %31, %13
  ret void
}

declare dso_local i64 @cmap(i64, i32) #1

declare dso_local i64** @Dfix2(i64**) #1

declare dso_local i32 @blkfree(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
