; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getcapsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getcapsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ERANGE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"login_getcapsize: class '%s' bad value %s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @login_getcapsize(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %5, align 4
  br label %104

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @cgetstr(i32* %29, i8* %30, i8** %11)
  store i32 %31, i32* %13, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %5, align 4
  br label %104

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* @ERANGE, align 8
  store i64 %39, i64* @errno, align 8
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %5, align 4
  br label %104

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @isinfinite(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %47, i32* %5, align 4
  br label %104

48:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %14, align 4
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %12, align 8
  br label %50

50:                                               ; preds = %101, %48
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strtoq(i8* %55, i8** %10, i32 0)
  store i32 %56, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* @errno, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63, %59, %54
  br label %67

67:                                               ; preds = %100, %90, %66
  %68 = load i32, i32* @LOG_WARNING, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @syslog(i32 %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %72, i8* %73)
  %75 = load i64, i64* @ERANGE, align 8
  store i64 %75, i64* @errno, align 8
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %5, align 4
  br label %104

77:                                               ; preds = %63
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %90 [
    i32 0, label %82
    i32 98, label %85
    i32 66, label %85
    i32 107, label %86
    i32 75, label %86
    i32 109, label %87
    i32 77, label %87
    i32 103, label %88
    i32 71, label %88
    i32 116, label %89
    i32 84, label %89
  ]

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %10, align 8
  br label %91

85:                                               ; preds = %77, %77
  store i32 512, i32* %16, align 4
  br label %91

86:                                               ; preds = %77, %77
  store i32 1024, i32* %16, align 4
  br label %91

87:                                               ; preds = %77, %77
  store i32 1048576, i32* %16, align 4
  br label %91

88:                                               ; preds = %77, %77
  store i32 1073741824, i32* %16, align 4
  br label %91

89:                                               ; preds = %77, %77
  store i32 0, i32* %16, align 4
  br label %91

90:                                               ; preds = %77
  br label %67

91:                                               ; preds = %89, %88, %87, %86, %85, %82
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @rmultiply(i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i64, i64* @errno, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %67

101:                                              ; preds = %91
  br label %50

102:                                              ; preds = %50
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %67, %46, %38, %33, %24
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @cgetstr(i32*, i8*, i8**) #1

declare dso_local i64 @isinfinite(i8*) #1

declare dso_local i32 @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @rmultiply(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
