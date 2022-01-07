; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__progname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"strdup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vqd:\00", align 1
@optarg = common dso_local global i32 0, align 4
@data_dir = common dso_local global i32 0, align 4
@verbose_mode = common dso_local global i32 0, align 4
@quiet_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unrecognised command line option\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Usage: %s [-v]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" %u tests ok\0A\00", align 1
@test_number = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8*, i8** @__progname, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** @__progname, align 8
  %14 = load i8*, i8** @__progname, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** @__progname, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %9
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** @__progname, align 8
  br label %29

26:                                               ; preds = %16
  %27 = load i8*, i8** @__progname, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** @__progname, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8*, i8** @__progname, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** @__progname, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %2
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %50 [
    i32 100, label %46
    i32 113, label %48
    i32 118, label %49
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @optarg, align 4
  store i32 %47, i32* @data_dir, align 4
  br label %57

48:                                               ; preds = %44
  store i32 0, i32* @verbose_mode, align 4
  store i32 1, i32* @quiet_mode, align 4
  br label %57

49:                                               ; preds = %44
  store i32 1, i32* @verbose_mode, align 4
  store i32 0, i32* @quiet_mode, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @__progname, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %49, %48, %46
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* @stdout, align 4
  %60 = load i32, i32* @_IONBF, align 4
  %61 = call i32 @setvbuf(i32 %59, i32* null, i32 %60, i32 0)
  %62 = load i32, i32* @quiet_mode, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** @__progname, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @verbose_mode, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = call i32 (...) @tests()
  %74 = load i32, i32* @quiet_mode, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @test_number, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  ret i32 0
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tests(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
