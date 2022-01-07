; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_printactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_printactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curinode = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"current inode\00", align 1
@curinum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"current inode %ju: unallocated inode\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"current inode %ju: screwy itype 0%o (mode 0%o)?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printactive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @checkactive()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

7:                                                ; preds = %1
  %8 = load i32, i32* @curinode, align 4
  %9 = load i32, i32* @di_mode, align 4
  %10 = call i32 @DIP(i32 %8, i32 %9)
  %11 = load i32, i32* @IFMT, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %27 [
    i32 132, label %13
    i32 129, label %13
    i32 134, label %13
    i32 133, label %13
    i32 130, label %13
    i32 128, label %13
    i32 131, label %13
    i32 0, label %24
  ]

13:                                               ; preds = %7, %7, %7, %7, %7, %7, %7
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @curinode, align 4
  %18 = call i32 @prtblknos(i32* @disk, i32 %17)
  br label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @curinum, align 4
  %21 = load i32, i32* @curinode, align 4
  %22 = call i32 @printstat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  br label %38

24:                                               ; preds = %7
  %25 = load i32, i32* @curinum, align 4
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %38

27:                                               ; preds = %7
  %28 = load i32, i32* @curinum, align 4
  %29 = load i32, i32* @curinode, align 4
  %30 = load i32, i32* @di_mode, align 4
  %31 = call i32 @DIP(i32 %29, i32 %30)
  %32 = load i32, i32* @IFMT, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @curinode, align 4
  %35 = load i32, i32* @di_mode, align 4
  %36 = call i32 @DIP(i32 %34, i32 %35)
  %37 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %24, %23
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %6
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @checkactive(...) #1

declare dso_local i32 @DIP(i32, i32) #1

declare dso_local i32 @prtblknos(i32*, i32) #1

declare dso_local i32 @printstat(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
