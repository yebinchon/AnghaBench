; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_add_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_add_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@insecure = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: ignoring directory not owned by root\00", align 1
@S_IWOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: ignoring world-writable directory\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: ignoring group-writable directory\00", align 1
@ndirs = common dso_local global i32 0, align 4
@dirs = common dso_local global i8** null, align 8
@MAXDIRS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\22%s\22: Too many directories in path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @add_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dir(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @insecure, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @stat(i8* %15, %struct.stat* %7)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %80

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %80

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_IWOTH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %80

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @S_IWGRP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %80

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %11, %3
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ndirs, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i8**, i8*** @dirs, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strcmp(i8* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %80

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load i32, i32* @ndirs, align 4
  %68 = load i32, i32* @MAXDIRS, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i8*, i8** %5, align 8
  %75 = load i8**, i8*** @dirs, align 8
  %76 = load i32, i32* @ndirs, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @ndirs, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %74, i8** %79, align 8
  br label %80

80:                                               ; preds = %73, %61, %43, %34, %25, %18
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
