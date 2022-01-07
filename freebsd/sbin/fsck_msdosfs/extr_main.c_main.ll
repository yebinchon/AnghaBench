; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skipclean = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CfFnpy\00", align 1
@alwaysno = common dso_local global i32 0, align 4
@alwaysyes = common dso_local global i32 0, align 4
@preen = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* @skipclean, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %23 [
    i32 67, label %16
    i32 102, label %17
    i32 70, label %18
    i32 110, label %20
    i32 121, label %21
    i32 112, label %22
  ]

16:                                               ; preds = %14
  br label %25

17:                                               ; preds = %14
  store i32 0, i32* @skipclean, align 4
  br label %25

18:                                               ; preds = %14
  %19 = call i32 @exit(i32 5) #3
  unreachable

20:                                               ; preds = %14
  store i32 1, i32* @alwaysno, align 4
  store i32 0, i32* @alwaysyes, align 4
  br label %25

21:                                               ; preds = %14
  store i32 1, i32* @alwaysyes, align 4
  store i32 0, i32* @alwaysno, align 4
  br label %25

22:                                               ; preds = %14
  store i32 1, i32* @preen, align 4
  br label %25

23:                                               ; preds = %14
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %22, %21, %20, %17, %16
  br label %9

26:                                               ; preds = %9
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %26
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @preen, align 4
  %48 = call i32 @setcdevname(i8* %46, i32 %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  %51 = load i8*, i8** %49, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = call i32 @checkfilesys(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %44
  br label %40

60:                                               ; preds = %40
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setcdevname(i8*, i32) #1

declare dso_local i32 @checkfilesys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
