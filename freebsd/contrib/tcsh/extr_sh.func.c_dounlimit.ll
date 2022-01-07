; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dounlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dounlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limits = type { i64 }
%struct.command = type { i32 }

@ERR_ULIMUS = common dso_local global i32 0, align 4
@limits = common dso_local global %struct.limits* null, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@ERR_SILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dounlimit(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.command*, %struct.command** %4, align 8
  %11 = call i32 @USE(%struct.command* %10)
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ %22, %17 ]
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %42, %25
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %39 [
    i32 102, label %37
    i32 104, label %38
  ]

37:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %42

38:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ERR_ULIMUS, align 4
  %41 = call i32 @stderror(i32 %40)
  br label %42

42:                                               ; preds = %39, %38, %37
  br label %28

43:                                               ; preds = %28
  br label %12

44:                                               ; preds = %23
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load %struct.limits*, %struct.limits** @limits, align 8
  store %struct.limits* %49, %struct.limits** %5, align 8
  br label %50

50:                                               ; preds = %66, %48
  %51 = load %struct.limits*, %struct.limits** %5, align 8
  %52 = getelementptr inbounds %struct.limits, %struct.limits* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.limits*, %struct.limits** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* @RLIM_INFINITY, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @setlim(%struct.limits* %56, i32 %57, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.limits*, %struct.limits** %5, align 8
  %68 = getelementptr inbounds %struct.limits, %struct.limits* %67, i32 1
  store %struct.limits* %68, %struct.limits** %5, align 8
  br label %50

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @ERR_SILENT, align 4
  %77 = call i32 @stderror(i32 %76)
  br label %78

78:                                               ; preds = %75, %72, %69
  br label %103

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i8**, i8*** %3, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %3, align 8
  %87 = load i8*, i8** %85, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = call %struct.limits* @findlim(i32 %88)
  store %struct.limits* %89, %struct.limits** %5, align 8
  %90 = load %struct.limits*, %struct.limits** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i64, i64* @RLIM_INFINITY, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @setlim(%struct.limits* %90, i32 %91, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @ERR_SILENT, align 4
  %101 = call i32 @stderror(i32 %100)
  br label %102

102:                                              ; preds = %99, %96, %84
  br label %80

103:                                              ; preds = %78, %80
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @setlim(%struct.limits*, i32, i32) #1

declare dso_local %struct.limits* @findlim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
