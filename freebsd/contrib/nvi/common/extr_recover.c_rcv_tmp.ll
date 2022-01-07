; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_tmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.stat = type { i32 }

@O_RECDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vi.XXXXXX\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"056|Modifications not recoverable if the session fails\00", align 1
@F_RCV_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcv_tmp(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @O_RECDIR, align 4
  %14 = call i64 @opts_empty(i32* %12, i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %71

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @O_RECDIR, align 4
  %20 = call i8* @O_STR(i32* %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOENT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @mkdir(i8* %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @M_SYSERR, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %33, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %71

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @S_IRWXU, align 4
  %40 = load i32, i32* @S_IRWXG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IRWXO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_ISVTX, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @chmod(i8* %38, i32 %45)
  br label %47

47:                                               ; preds = %37, %17
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @join(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %11, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %71

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @rcv_mktemp(i32* %53, i8* %54, i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @free(i8* %59)
  br label %71

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @S_IRWXU, align 4
  %64 = call i32 @fchmod(i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br i1 false, label %70, label %75

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %58, %51, %32, %16
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @M_ERR, align 4
  %74 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %72, i32 %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = load i32, i32* @F_RCV_ON, align 4
  %78 = call i32 @F_SET(%struct.TYPE_4__* %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @opts_empty(i32*, i32, i32) #1

declare dso_local i8* @O_STR(i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @rcv_mktemp(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
