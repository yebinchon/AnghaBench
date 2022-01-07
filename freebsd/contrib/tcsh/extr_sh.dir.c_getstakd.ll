; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_getstakd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_getstakd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { i32*, %struct.directory*, %struct.directory* }

@dcwd = common dso_local global %struct.directory* null, align 8
@dhead = common dso_local global %struct.directory zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getstakd(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.directory*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.directory*, %struct.directory** @dcwd, align 8
  store %struct.directory* %5, %struct.directory** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.directory*, %struct.directory** %4, align 8
  %10 = getelementptr inbounds %struct.directory, %struct.directory* %9, i32 0, i32 2
  %11 = load %struct.directory*, %struct.directory** %10, align 8
  store %struct.directory* %11, %struct.directory** %4, align 8
  %12 = load %struct.directory*, %struct.directory** %4, align 8
  %13 = icmp eq %struct.directory* %12, @dhead
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.directory*, %struct.directory** %4, align 8
  %16 = getelementptr inbounds %struct.directory, %struct.directory* %15, i32 0, i32 2
  %17 = load %struct.directory*, %struct.directory** %16, align 8
  store %struct.directory* %17, %struct.directory** %4, align 8
  br label %18

18:                                               ; preds = %14, %8
  br label %41

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.directory*, %struct.directory** %4, align 8
  %26 = getelementptr inbounds %struct.directory, %struct.directory* %25, i32 0, i32 1
  %27 = load %struct.directory*, %struct.directory** %26, align 8
  store %struct.directory* %27, %struct.directory** %4, align 8
  %28 = load %struct.directory*, %struct.directory** %4, align 8
  %29 = icmp eq %struct.directory* %28, @dhead
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.directory*, %struct.directory** %4, align 8
  %32 = getelementptr inbounds %struct.directory, %struct.directory* %31, i32 0, i32 1
  %33 = load %struct.directory*, %struct.directory** %32, align 8
  store %struct.directory* %33, %struct.directory** %4, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.directory*, %struct.directory** %4, align 8
  %36 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %37 = icmp eq %struct.directory* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32* null, i32** %2, align 8
  br label %45

39:                                               ; preds = %34
  br label %20

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.directory*, %struct.directory** %4, align 8
  %43 = getelementptr inbounds %struct.directory, %struct.directory* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
