; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_fileactions.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_fileactions.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"test...\00", align 1
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: filedesc 3 is not closed\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: filedesc 4 is not closed\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: could not write to filedesc 5\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: could not write to filedesc 6\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: could not fstat stdout\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: could not fstat filedesc 7\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: could not write to filedesc 7\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: stat results differ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @BUFSIZE, align 4
  %18 = call i32 @read(i32 3, i8* %15, i32 %17)
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EBADF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* (...) @getprogname()
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @BUFSIZE, align 4
  %31 = call i32 @read(i32 4, i8* %15, i32 %30)
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EBADF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* (...) @getprogname()
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* @BUFSIZE, align 4
  %44 = call i64 @write(i32 5, i8* %15, i32 %43)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* (...) @getprogname()
  %49 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @BUFSIZE, align 4
  %53 = call i64 @write(i32 6, i8* %15, i32 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = call i8* (...) @getprogname()
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fileno(i32 %63)
  %65 = call i64 @fstat(i32 %64, %struct.stat* %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @stderr, align 4
  %69 = call i8* (...) @getprogname()
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = call i64 @fstat(i32 7, %struct.stat* %10)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* (...) @getprogname()
  %78 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = call i32 @strlen(i8* %15)
  %82 = call i64 @write(i32 7, i8* %15, i32 %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* (...) @getprogname()
  %87 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = call i64 @memcmp(%struct.stat* %9, %struct.stat* %10, i32 4)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @stderr, align 4
  %94 = call i8* (...) @getprogname()
  %95 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @getprogname(...) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @memcmp(%struct.stat*, %struct.stat*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
