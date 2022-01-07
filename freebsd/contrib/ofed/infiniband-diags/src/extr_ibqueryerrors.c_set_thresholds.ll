; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_set_thresholds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_set_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Thresholds: \00", align 1
@threshold_str = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate memory: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_thresholds(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %64

16:                                               ; preds = %1
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %18 = call i32 @snprintf(i8* %17, i32 63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i32 @malloc(i64 %21)
  store i32 %22, i32* @threshold_str, align 4
  %23 = load i32, i32* @threshold_str, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %16
  %32 = load i32, i32* @threshold_str, align 4
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %34 = call i32 @strcpy(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %52, %51, %45, %31
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @fgets(i8* %36, i32 1024, i32* %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %42 = call i8* @strtok_r(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %35

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %35

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strtok_r(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  store i8* %54, i8** %8, align 8
  %55 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strtoul(i8* %56, i32* null, i32 0)
  store i32 %57, i32* %4, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @set_thres(i8* %58, i32 %59)
  br label %35

61:                                               ; preds = %35
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fclose(i32* %62)
  br label %64

64:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @set_thres(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
