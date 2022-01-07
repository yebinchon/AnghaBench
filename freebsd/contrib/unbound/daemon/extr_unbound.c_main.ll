; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIGFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"c:dhpvw:\00", align 1
@optarg = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"option not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8*, i8** @CONFIGFILE, align 8
  store i8* %13, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %14 = call i32 @log_init(i32* null, i32 0, i32* null)
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 47)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  br label %30

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i8* [ %25, %20 ], [ %29, %26 ]
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @log_ident_set(i8* %32)
  br label %34

34:                                               ; preds = %57, %30
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %55 [
    i32 99, label %41
    i32 118, label %43
    i32 112, label %48
    i32 100, label %49
    i32 119, label %52
    i32 63, label %54
    i32 104, label %54
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %7, align 8
  br label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @verbosity, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @verbosity, align 4
  br label %57

48:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %57

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %57

52:                                               ; preds = %39
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** %8, align 8
  br label %57

54:                                               ; preds = %39, %39
  br label %55

55:                                               ; preds = %39, %54
  %56 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %88

57:                                               ; preds = %52, %49, %48, %43, %41
  br label %34

58:                                               ; preds = %34
  %59 = load i64, i64* @optind, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @fatal_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %88

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @run_daemon(i8* %74, i32 %75, i32 %76, i8* %77, i32 %78)
  %80 = call i32 @log_init(i32* null, i32 0, i32* null)
  %81 = call i64 (...) @log_get_lock()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = call i64 (...) @log_get_lock()
  %85 = inttoptr i64 %84 to i32*
  %86 = call i32 @lock_quick_destroy(i32* %85)
  br label %87

87:                                               ; preds = %83, %73
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %71, %55
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @log_init(i32*, i32, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @log_ident_set(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @run_daemon(i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @log_get_lock(...) #1

declare dso_local i32 @lock_quick_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
