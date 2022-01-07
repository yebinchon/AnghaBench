; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_read_worklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_read_worklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Reading worklist ...\00", align 1
@rworklist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error opening file %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%jd %jd %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error parsing file %s at line %d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @read_worklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_worklist(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fflush(i32 %11)
  %13 = load i32, i32* @rworklist, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @rworklist, align 4
  %19 = call i32 (i32, i8*, i32, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  store i32 0, i32* %7, align 4
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @fscanf(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %3, i64* %4, i32* %6)
  %27 = icmp ne i32 3, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @feof(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @rworklist, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, i32, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34)
  br label %37

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @new_lump(i64 %39, i64 %40, i32 %41)
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %22

46:                                               ; preds = %36
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i32, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*, i64*, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @new_lump(i64, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
