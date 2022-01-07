; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_optionMakePath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_optionMakePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_pkgdatadir = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optionMakePath(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %10, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %95

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 36
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %47, %29
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %11, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  store i8 %36, i8* %37, align 1
  %39 = sext i8 %36 to i32
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %48

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %95

47:                                               ; preds = %42
  br label %33

48:                                               ; preds = %41
  br label %91

49:                                               ; preds = %24
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %82 [
    i32 128, label %54
    i32 36, label %55
    i32 64, label %64
  ]

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %95

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @add_prog_path(i8* %56, i32 %57, i8* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %95

63:                                               ; preds = %55
  br label %90

64:                                               ; preds = %49
  %65 = load i32*, i32** @program_pkgdatadir, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %95

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32*, i32** @program_pkgdatadir, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = call i32 @snprintf(i8* %71, i64 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %74, i8* %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %95

81:                                               ; preds = %70
  br label %90

82:                                               ; preds = %49
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @add_env_val(i8* %83, i32 %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %95

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81, %63
  br label %91

91:                                               ; preds = %90, %48
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @get_realpath(i8* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %88, %80, %69, %62, %54, %46, %23
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @add_prog_path(i8*, i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32*, i8*) #1

declare dso_local i32 @add_env_val(i8*, i32, i8*) #1

declare dso_local i32 @get_realpath(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
