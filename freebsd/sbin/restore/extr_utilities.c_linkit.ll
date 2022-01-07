; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_linkit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_linkit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@uflag = common dso_local global i64 0, align 8
@Nflag = common dso_local global i32 0, align 4
@SYMLINK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"warning: cannot create symbolic link %s->%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@HARDLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"warning: cannot create hard link %s->%s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"linkit: unknown type %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Create %s link %s->%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"symbolic\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linkit(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @uflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @Nflag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @unlink(i8* %16)
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SYMLINK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* @Nflag, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @symlink(i8* %26, i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i8* %35)
  %37 = load i32, i32* @FAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %25, %22
  br label %89

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @HARDLINK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load i32, i32* @Nflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @link(i8* %47, i8* %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @stat(i8* %52, %struct.stat* %9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @chflags(i8* %60, i64 0)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @link(i8* %64, i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @chflags(i8* %67, i64 %69)
  br label %71

71:                                               ; preds = %63, %59, %55, %51
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %77, i8* %79)
  %81 = load i32, i32* @FAIL, align 4
  store i32 %81, i32* %4, align 4
  br label %100

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %46, %43
  br label %88

84:                                               ; preds = %39
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @FAIL, align 4
  store i32 %87, i32* %4, align 4
  br label %100

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i32, i32* @stdout, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SYMLINK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @vprintf(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %95, i8* %96, i8* %97)
  %99 = load i32, i32* @GOOD, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %89, %84, %74, %30
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @chflags(i8*, i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
