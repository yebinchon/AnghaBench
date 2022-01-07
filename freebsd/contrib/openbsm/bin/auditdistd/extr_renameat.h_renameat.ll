; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_renameat.h_renameat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_renameat.h_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*)* @renameat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renameat(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @O_DIRECTORY, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %46

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fchdir(i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %46

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @rename(i8* %36, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fchdir(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* @errno, align 4
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %30, %25, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
