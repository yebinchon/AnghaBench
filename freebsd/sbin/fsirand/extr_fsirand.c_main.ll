; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsirand/extr_fsirand.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsirand/extr_fsirand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"bfp\00", align 1
@ignorelabel = common dso_local global i32 0, align 4
@printonly = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't get resource limit to max data size\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"can't get resource limit for data size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rlimit, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %25 [
    i32 98, label %16
    i32 112, label %19
    i32 102, label %22
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @ignorelabel, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @ignorelabel, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load i32, i32* @printonly, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @printonly, align 4
  br label %27

22:                                               ; preds = %14
  %23 = load i32, i32* @force, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @force, align 4
  br label %27

25:                                               ; preds = %14
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %22, %19, %16
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @optind, align 4
  %31 = sub nsw i32 %29, %30
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %28
  %36 = call i32 (...) @srandomdev()
  %37 = load i32, i32* @RLIMIT_DATA, align 4
  %38 = call i64 @getrlimit(i32 %37, %struct.rlimit* %8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @RLIMIT_DATA, align 4
  %45 = call i64 @setrlimit(i32 %44, %struct.rlimit* %8)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  br label %52

50:                                               ; preds = %35
  %51 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* @optind, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %88, %52
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @optind, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @puts(i8* %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @fsirand(i8* %75)
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = call i32 @putchar(i8 signext 10)
  br label %87

87:                                               ; preds = %85, %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %54

91:                                               ; preds = %54
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @srandomdev(...) #1

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @fsirand(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

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
