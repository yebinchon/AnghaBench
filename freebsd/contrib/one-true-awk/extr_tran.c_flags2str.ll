; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_flags2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_flags2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftab = type { i8*, i32 }

@flags2str.flagtab = internal constant [11 x %struct.ftab] [%struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 130 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 128 }, %struct.ftab { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 133 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 136 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 137 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 132 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 131 }, %struct.ftab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 129 }, %struct.ftab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 135 }, %struct.ftab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 134 }, %struct.ftab zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"STR\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DONTFREE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"FCN\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"REC\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CONVC\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CONVO\00", align 1
@flags2str.buf = internal global [100 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @flags2str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @flags2str.buf, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [11 x %struct.ftab], [11 x %struct.ftab]* @flags2str.flagtab, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.ftab, %struct.ftab* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 16
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [11 x %struct.ftab], [11 x %struct.ftab]* @flags2str.flagtab, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.ftab, %struct.ftab* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ugt i8* %22, getelementptr inbounds ([100 x i8], [100 x i8]* @flags2str.buf, i64 0, i64 0)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  store i8 124, i8* %25, align 1
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [11 x %struct.ftab], [11 x %struct.ftab]* @flags2str.flagtab, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.ftab, %struct.ftab* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 16
  %34 = call i32 @strcpy(i8* %28, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %27, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

44:                                               ; preds = %5
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @flags2str.buf, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
