; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_addid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_addid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileusage = type { i32, i32, %struct.fileusage* }

@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@fuhead = common dso_local global %struct.fileusage*** null, align 8
@FUHASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@vflag = common dso_local global i64 0, align 8
@aflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown %cid: %lu\0A\00", align 1
@USRQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileusage* @addid(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fileusage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fileusage*, align 8
  %11 = alloca %struct.fileusage**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.fileusage* @lookup(i32 %13, i32 %14)
  store %struct.fileusage* %15, %struct.fileusage** %10, align 8
  %16 = icmp ne %struct.fileusage* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  store %struct.fileusage* %18, %struct.fileusage** %5, align 8
  br label %94

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %12, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 16, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.fileusage* @calloc(i32 1, i32 %30)
  store %struct.fileusage* %31, %struct.fileusage** %10, align 8
  %32 = icmp eq %struct.fileusage* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load %struct.fileusage***, %struct.fileusage**** @fuhead, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.fileusage**, %struct.fileusage*** %36, i64 %38
  %40 = load %struct.fileusage**, %struct.fileusage*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FUHASH, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fileusage*, %struct.fileusage** %40, i64 %45
  store %struct.fileusage** %46, %struct.fileusage*** %11, align 8
  %47 = load %struct.fileusage**, %struct.fileusage*** %11, align 8
  %48 = load %struct.fileusage*, %struct.fileusage** %47, align 8
  %49 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  %50 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %49, i32 0, i32 2
  store %struct.fileusage* %48, %struct.fileusage** %50, align 8
  %51 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  %52 = load %struct.fileusage**, %struct.fileusage*** %11, align 8
  store %struct.fileusage* %51, %struct.fileusage** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  %55 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %35
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  %61 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @bcopy(i8* %59, i32 %62, i32 %64)
  br label %92

66:                                               ; preds = %35
  %67 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  %68 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @sprintf(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* @vflag, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %66
  %75 = load i64, i64* @aflag, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %77, %74
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @USRQUOTA, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 117, i32 103
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %66
  br label %92

92:                                               ; preds = %91, %58
  %93 = load %struct.fileusage*, %struct.fileusage** %10, align 8
  store %struct.fileusage* %93, %struct.fileusage** %5, align 8
  br label %94

94:                                               ; preds = %92, %17
  %95 = load %struct.fileusage*, %struct.fileusage** %5, align 8
  ret %struct.fileusage* %95
}

declare dso_local %struct.fileusage* @lookup(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.fileusage* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
