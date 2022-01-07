; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_misc.c_nodetoino.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_misc.c_nodetoino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unknown type %d\00", align 1
@S_IFSOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nodetoino(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 134, label %5
    i32 133, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
    i32 129, label %15
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @S_IFBLK, align 4
  store i32 %6, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @S_IFCHR, align 4
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @S_IFDIR, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @S_IFIFO, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @S_IFREG, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @S_IFLNK, align 4
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @abort() #3
  unreachable

21:                                               ; preds = %15, %13, %11, %9, %7, %5
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
