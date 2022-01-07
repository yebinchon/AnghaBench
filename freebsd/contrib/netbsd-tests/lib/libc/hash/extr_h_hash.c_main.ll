; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_h_hash.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_h_hash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"mrst\00", align 1
@mflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %19 [
    i32 109, label %14
    i32 114, label %15
    i32 115, label %16
    i32 116, label %17
    i32 63, label %18
  ]

14:                                               ; preds = %12
  store i32 1, i32* @mflag, align 4
  br label %21

15:                                               ; preds = %12
  store i32 1, i32* @rflag, align 4
  br label %21

16:                                               ; preds = %12
  store i32 1, i32* @sflag, align 4
  br label %21

17:                                               ; preds = %12
  store i32 1, i32* @tflag, align 4
  br label %21

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %12, %18
  %20 = call i32 (...) @usage()
  br label %21

21:                                               ; preds = %19, %17, %16, %15, %14
  br label %7

22:                                               ; preds = %7
  %23 = load i64, i64* @optind, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* @optind, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 %28
  store i8** %30, i8*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* @mflag, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @sflag, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 1, i32* @mflag, align 4
  br label %42

42:                                               ; preds = %41, %38, %35
  %43 = load i32, i32* @mflag, align 4
  %44 = load i32, i32* @sflag, align 4
  %45 = xor i32 %43, %44
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* @tflag, align 4
  %51 = load i32, i32* @rflag, align 4
  %52 = xor i32 %50, %51
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* @tflag, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @timetest()
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* @rflag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @regress()
  br label %66

66:                                               ; preds = %64, %61
  %67 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @timetest(...) #1

declare dso_local i32 @regress(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
