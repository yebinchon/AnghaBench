; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_safemovefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_safemovefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c".XXXXX\00", align 1
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_safemovefile(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca %struct.stat, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @stat(i8* %12, %struct.stat* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %9, align 8
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcpy(i8* %23, i8* %24)
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %27 = call i32 @strcat(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %29 = call i32 @mkstemp(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @_close(i32 %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %37 = call i64 @DeleteFile(i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @_S_IREAD, align 4
  %40 = load i32, i32* @_S_IWRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @_chmod(i8* %38, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %45 = call i64 @MoveFile(i8* %43, i8* %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %35, %17
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @_S_IREAD, align 4
  %49 = load i32, i32* @_S_IWRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @_chmod(i8* %47, i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @MoveFile(i8* %52, i8* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %46
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @TRUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @MoveFile(i8* %62, i8* %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @EACCES, align 4
  store i32 %68, i32* @errno, align 4
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69, %57
  store i32 -1, i32* %3, align 4
  br label %79

71:                                               ; preds = %46
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @TRUE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %77 = call i64 @DeleteFile(i8* %76)
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %75, %71
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i64 @DeleteFile(i8*) #1

declare dso_local i32 @_chmod(i8*, i32) #1

declare dso_local i64 @MoveFile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
