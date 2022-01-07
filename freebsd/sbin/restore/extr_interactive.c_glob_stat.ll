; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_glob_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_glob_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.direct = type { i64 }

@dflag = common dso_local global i32 0, align 4
@dumpmap = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@UFS_WINO = common dso_local global i64 0, align 8
@NODE = common dso_local global i64 0, align 8
@IFDIR = common dso_local global i32 0, align 4
@IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*)* @glob_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob_stat(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.direct*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.direct* @pathsearch(i8* %7)
  store %struct.direct* %8, %struct.direct** %6, align 8
  %9 = load %struct.direct*, %struct.direct** %6, align 8
  %10 = icmp eq %struct.direct* %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @dflag, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load %struct.direct*, %struct.direct** %6, align 8
  %16 = getelementptr inbounds %struct.direct, %struct.direct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @dumpmap, align 4
  %19 = call i64 @TSTINO(i64 %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* @vflag, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.direct*, %struct.direct** %6, align 8
  %26 = getelementptr inbounds %struct.direct, %struct.direct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UFS_WINO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %14, %2
  store i32 -1, i32* %3, align 4
  br label %47

31:                                               ; preds = %24, %21
  %32 = load %struct.direct*, %struct.direct** %6, align 8
  %33 = getelementptr inbounds %struct.direct, %struct.direct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @inodetype(i64 %34)
  %36 = load i64, i64* @NODE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @IFDIR, align 4
  %40 = load %struct.stat*, %struct.stat** %5, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @IFREG, align 4
  %44 = load %struct.stat*, %struct.stat** %5, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.direct* @pathsearch(i8*) #1

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i64 @inodetype(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
