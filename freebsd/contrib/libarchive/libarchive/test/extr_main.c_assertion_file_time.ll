; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_file_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_file_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Can't stat %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"INTERNAL: Bad type %c for file time\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"File %s has %ctime %lld, %lld seconds ago\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"File %s has %ctime %lld.%09lld, expected %lld.%09lld\00", align 1
@EPOC_TIME = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64, i64, i8, i32)* @assertion_file_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assertion_file_time(i8* %0, i32 %1, i8* %2, i64 %3, i64 %4, i8 signext %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8 %5, i8* %14, align 1
  store i32 %6, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @assertion_count(i8* %21, i32 %22)
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @lstat(i8* %24, %struct.stat* %19)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 (i8*, i32, i8*, i8*, ...) @failure_start(i8* %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %8, align 4
  br label %106

34:                                               ; preds = %7
  %35 = load i8, i8* %14, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %44 [
    i32 97, label %37
    i32 109, label %40
    i32 98, label %43
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %16, align 8
  br label %49

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %16, align 8
  br label %49

43:                                               ; preds = %34
  store i64 0, i64* %16, align 8
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8, i8* %14, align 1
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 signext %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %43, %40, %37
  store i64 0, i64* %13, align 8
  store i64 0, i64* %17, align 8
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 98
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %106

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = call i32 @time(i32* null)
  store i32 %58, i32* %20, align 4
  %59 = load i64, i64* %16, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sub nsw i32 %60, 10
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %16, align 8
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64, %57
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %14, align 1
  %75 = sext i8 %74 to i32
  %76 = load i64, i64* %16, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %16, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i32 (i8*, i32, i8*, i8*, ...) @failure_start(i8* %71, i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75, i64 %76, i64 %80)
  %82 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %8, align 4
  br label %106

83:                                               ; preds = %64
  br label %105

84:                                               ; preds = %54
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %14, align 1
  %97 = sext i8 %96 to i32
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %17, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 (i8*, i32, i8*, i8*, ...) @failure_start(i8* %93, i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %95, i32 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %8, align 4
  br label %106

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %83
  store i32 1, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %92, %70, %53, %28
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
