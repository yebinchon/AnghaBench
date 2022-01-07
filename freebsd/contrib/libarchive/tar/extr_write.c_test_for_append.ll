; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_test_for_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_test_for_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32*, i32*, i32** }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"no files or directories specified\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot append to stdout.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot append to %s: not a regular file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdtar*)* @test_for_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_for_append(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  %3 = alloca %struct.stat, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %4 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %5 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %4, i32 0, i32 2
  %6 = load i32**, i32*** %5, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %11 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9, %1
  %17 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %18 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %25 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @stat(i32* %26, %struct.stat* %3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %45

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISREG(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @S_ISBLK(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %42 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  br label %45

45:                                               ; preds = %29, %40, %35, %30
  ret void
}

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i64 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
