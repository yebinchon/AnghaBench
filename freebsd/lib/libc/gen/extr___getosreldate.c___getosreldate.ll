; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr___getosreldate.c___getosreldate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr___getosreldate.c___getosreldate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__getosreldate.osreldate = internal global i32 0, align 4
@AT_OSRELDATE = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_OSRELDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__getosreldate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @__getosreldate.osreldate, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @__getosreldate.osreldate, align 4
  store i32 %9, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  %11 = load i32, i32* @AT_OSRELDATE, align 4
  %12 = call i32 @_elf_aux_info(i32 %11, i32* @__getosreldate.osreldate, i32 4)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* @__getosreldate.osreldate, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @__getosreldate.osreldate, align 4
  store i32 %19, i32* %1, align 4
  br label %39

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @CTL_KERN, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @KERN_OSRELDATE, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %5, align 4
  store i64 4, i64* %2, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %26 = call i32 @sysctl(i32* %25, i32 2, i32* %5, i64* %2, i32* null, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* %2, align 8
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* @__getosreldate.osreldate, align 4
  br label %37

37:                                               ; preds = %35, %32, %29, %20
  %38 = load i32, i32* @__getosreldate.osreldate, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %18, %8
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @_elf_aux_info(i32, i32*, i32) #1

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
