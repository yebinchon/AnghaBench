; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsutil.c_devcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsutil.c_devcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't stat `/'\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Can't stat %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s is not a char device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devcheck(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @stat(i8* %12, %struct.stat* %5)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %2, align 8
  br label %29

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISCHR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %27, %15, %8
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @perr(i8*, ...) #1

declare dso_local i32 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
