; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"cCf:guUv\00", align 1
@optarg = common dso_local global i32 0, align 4
@ccdconf = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"g_ccd\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"geom_ccd\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"geom_ccd module not available!\00", align 1

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
  store i32 0, i32* %7, align 4
  store i32 132, i32* %8, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %32 [
    i32 99, label %16
    i32 67, label %19
    i32 102, label %22
    i32 103, label %24
    i32 117, label %25
    i32 85, label %28
    i32 118, label %31
  ]

16:                                               ; preds = %14
  store i32 132, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %34

19:                                               ; preds = %14
  store i32 131, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load i32, i32* @optarg, align 4
  store i32 %23, i32* @ccdconf, align 4
  br label %34

24:                                               ; preds = %14
  store i32 130, i32* %8, align 4
  br label %34

25:                                               ; preds = %14
  store i32 129, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %34

28:                                               ; preds = %14
  store i32 128, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %14
  store i32 1, i32* @verbose, align 4
  br label %34

32:                                               ; preds = %14
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %31, %28, %25, %24, %22, %19, %16
  br label %9

35:                                               ; preds = %9
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = call i64 @modfind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = call i64 @kldload(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i64 @modfind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %51
  %58 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %77 [
    i32 132, label %62
    i32 129, label %62
    i32 131, label %68
    i32 128, label %68
    i32 130, label %72
  ]

62:                                               ; preds = %60, %60
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @do_single(i32 %63, i8** %64, i32 %65)
  %67 = call i32 @exit(i32 %66) #3
  unreachable

68:                                               ; preds = %60, %60
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @do_all(i32 %69)
  %71 = call i32 @exit(i32 %70) #3
  unreachable

72:                                               ; preds = %60
  %73 = load i32, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 @dump_ccd(i32 %73, i8** %74)
  %76 = call i32 @exit(i32 %75) #3
  unreachable

77:                                               ; preds = %60
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @do_single(i32, i8**, i32) #1

declare dso_local i32 @do_all(i32) #1

declare dso_local i32 @dump_ccd(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
