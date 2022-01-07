; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_printchanges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_printchanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqblk = type { i64, i64 }
%struct.fileusage = type { i8*, i64, i64 }

@vflag = common dso_local global i32 0, align 4
@aflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%-8lu fixed \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%-8s fixed \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(group):\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"(user): \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"(unknown quota type %d)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\09inodes %lu -> %lu\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09blocks %lu -> %lu\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printchanges(i8* %0, i32 %1, %struct.dqblk* %2, %struct.fileusage* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dqblk*, align 8
  %9 = alloca %struct.fileusage*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dqblk* %2, %struct.dqblk** %8, align 8
  store %struct.fileusage* %3, %struct.fileusage** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @vflag, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %83

14:                                               ; preds = %5
  %15 = load i64, i64* @aflag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %22 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %33 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %40
  ]

38:                                               ; preds = %36
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %45

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %40, %38
  %46 = load %struct.dqblk*, %struct.dqblk** %8, align 8
  %47 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %50 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.dqblk*, %struct.dqblk** %8, align 8
  %55 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %59 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %53, %45
  %64 = load %struct.dqblk*, %struct.dqblk** %8, align 8
  %65 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %68 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load %struct.dqblk*, %struct.dqblk** %8, align 8
  %73 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.fileusage*, %struct.fileusage** %9, align 8
  %77 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %71, %63
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %13
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
