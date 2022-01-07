; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_file.c_check_existence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_file.c_check_existence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@FTYPE_MODE_EXIST_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@DIRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fname\00", align 1
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, %struct.TYPE_8__*)* @check_existence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_existence(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  store i64 0, i64* @errno, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FTYPE_MODE_EXIST_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %38 [
    i32 128, label %18
    i32 130, label %39
    i32 129, label %82
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @stat(i8* %19, %struct.stat* %8)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @errno, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @EINVAL, align 8
  store i64 %30, i64* @errno, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @fserr_exit(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %31, %22
  br label %38

38:                                               ; preds = %3, %37
  br label %39

39:                                               ; preds = %3, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @DIRCH, align 4
  %42 = call i8* @strrchr(i8* %40, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %100

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  %54 = call i8* @AGALOC(i64 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i8, i8* @NUL, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %62, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @stat(i8* %63, %struct.stat* %8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %46
  %67 = load i64, i64* @EINVAL, align 8
  store i64 %67, i64* @errno, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @S_ISDIR(i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %79

73:                                               ; preds = %66, %46
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @fserr_exit(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @AGFREE(i8* %80)
  br label %100

82:                                               ; preds = %3
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @stat(i8* %83, %struct.stat* %8)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* @EINVAL, align 8
  store i64 %87, i64* @errno, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @S_ISREG(i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br i1 %92, label %93, label %99

93:                                               ; preds = %86, %82
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @fserr_exit(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %79, %45
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fserr_exit(i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i8* @AGALOC(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @AGFREE(i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
