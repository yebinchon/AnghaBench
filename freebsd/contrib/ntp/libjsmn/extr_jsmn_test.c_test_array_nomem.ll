; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_array_nomem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_array_nomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"  [ 1, true, [123, \22hello\22]]\00", align 1
@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_array_nomem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x %struct.TYPE_6__], align 16
  %5 = alloca [10 x %struct.TYPE_6__], align 16
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %67, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %70

10:                                               ; preds = %7
  %11 = call i32 @jsmn_init(i32* %3)
  %12 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %13 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 160)
  %14 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 160)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @jsmn_parse(i32* %3, i8* %16, i32 %18, %struct.TYPE_6__* %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @check(i32 %25)
  %27 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %29 = call i32 @memcpy(%struct.TYPE_6__* %27, %struct.TYPE_6__* %28, i32 160)
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %34 = call i32 @jsmn_parse(i32* %3, i8* %30, i32 %32, %struct.TYPE_6__* %33, i32 10)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @check(i32 %37)
  %39 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 16
  %42 = load i64, i64* @JSMN_ARRAY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %10
  %45 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 3
  br label %49

49:                                               ; preds = %44, %10
  %50 = phi i1 [ false, %10 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @check(i32 %51)
  %53 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 16
  %56 = load i64, i64* @JSMN_ARRAY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = getelementptr inbounds [10 x %struct.TYPE_6__], [10 x %struct.TYPE_6__]* %5, i64 0, i64 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 2
  br label %63

63:                                               ; preds = %58, %49
  %64 = phi i1 [ false, %49 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @check(i32 %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %7

70:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
