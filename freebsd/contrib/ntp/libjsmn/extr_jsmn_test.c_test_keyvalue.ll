; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_keyvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_keyvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"{\22a\22: 0, \22b\22: \22c\22}\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"{\22a\22\0A0}\00", align 1
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"{\22a\22, 0}\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"{\22a\22: {2}}\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"{\22a\22: {2: 3}}\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"{\22a\22: {\22a\22: 2 3}}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_keyvalue() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x %struct.TYPE_3__], align 16
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = call i32 @jsmn_init(i32* %3)
  %6 = load i8*, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %3, i8* %6, i32 %8, %struct.TYPE_3__* %9, i32 10)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 5
  %13 = zext i1 %12 to i32
  %14 = call i32 @check(i32 %13)
  %15 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @check(i32 %19)
  %21 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %0
  %26 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br label %30

30:                                               ; preds = %25, %0
  %31 = phi i1 [ false, %0 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @check(i32 %32)
  %34 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ false, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @check(i32 %45)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %47 = call i32 @jsmn_init(i32* %3)
  %48 = load i8*, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %52 = call i32 @jsmn_parse(i32* %3, i8* %48, i32 %50, %struct.TYPE_3__* %51, i32 10)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @check(i32 %56)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  %58 = call i32 @jsmn_init(i32* %3)
  %59 = load i8*, i8** %1, align 8
  %60 = load i8*, i8** %1, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %63 = call i32 @jsmn_parse(i32* %3, i8* %59, i32 %61, %struct.TYPE_3__* %62, i32 10)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @check(i32 %67)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %69 = call i32 @jsmn_init(i32* %3)
  %70 = load i8*, i8** %1, align 8
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %74 = call i32 @jsmn_parse(i32* %3, i8* %70, i32 %72, %struct.TYPE_3__* %73, i32 10)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @check(i32 %78)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %80 = call i32 @jsmn_init(i32* %3)
  %81 = load i8*, i8** %1, align 8
  %82 = load i8*, i8** %1, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %85 = call i32 @jsmn_parse(i32* %3, i8* %81, i32 %83, %struct.TYPE_3__* %84, i32 10)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @check(i32 %89)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  %91 = call i32 @jsmn_init(i32* %3)
  %92 = load i8*, i8** %1, align 8
  %93 = load i8*, i8** %1, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %96 = call i32 @jsmn_parse(i32* %3, i8* %92, i32 %94, %struct.TYPE_3__* %95, i32 10)
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @check(i32 %100)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
