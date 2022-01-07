; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_sigdate_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_sigdate_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s expi=%s incep=%s now=%s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s expi=%u incep=%u now=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64)* @sigdate_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigdate_error(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* @verbosity, align 8
  %17 = load i64, i64* @VERB_QUERY, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %60

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %15, align 8
  %24 = call i32 @memset(%struct.tm* %9, i32 0, i32 4)
  %25 = call i64 @gmtime_r(i64* %13, %struct.tm* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %20
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %29 = call i64 @strftime(i8* %28, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tm* %9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = call i64 @gmtime_r(i64* %14, %struct.tm* %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %36 = call i64 @strftime(i8* %35, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tm* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = call i64 @gmtime_r(i64* %15, %struct.tm* %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %43 = call i64 @strftime(i8* %42, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tm* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %50 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %47, i8* %48, i8* %49)
  br label %60

51:                                               ; preds = %41, %38, %34, %31, %27, %20
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %54, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %19, %51, %45
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @gmtime_r(i64*, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @log_info(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
