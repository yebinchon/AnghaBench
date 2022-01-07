; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Sender requested append without first opening file.\00", align 1
@ADIST_ERROR_WRONG_ORDER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Write to \22%s/%s\22 failed\00", align 1
@ADIST_ERROR_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Wrote %zd bytes into \22%s/%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Appended %zu bytes to file \22%s/%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @receiver_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receiver_append(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @pjdlog_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ADIST_ERROR_WRONG_ORDER, align 4
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %48, %33, %15
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @write(i32 %23, i8* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %17

34:                                               ; preds = %29
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pjdlog_errno(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i64, i64* @errno, align 8
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @PJDLOG_ASSERT(i32 %45)
  %47 = load i32, i32* @ADIST_ERROR_WRITE, align 4
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %20
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pjdlog_debug(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %50, i32 %53, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %5, align 8
  br label %17

62:                                               ; preds = %17
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pjdlog_debug(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %63, i32 %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %34, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @pjdlog_error(i8*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32, i32) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
