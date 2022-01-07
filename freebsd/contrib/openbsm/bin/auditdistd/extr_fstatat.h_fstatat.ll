; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_fstatat.h_fstatat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_fstatat.h_fstatat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.stat*, i32)* @fstatat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstatat(i32 %0, i8* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_DIRECTORY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %49

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @fchdir(i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %49

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.stat*, %struct.stat** %8, align 8
  %36 = call i32 @lstat(i8* %34, %struct.stat* %35)
  store i32 %36, i32* %12, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.stat*, %struct.stat** %8, align 8
  %40 = call i32 @stat(i8* %38, %struct.stat* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @fchdir(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* @errno, align 4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %24, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
