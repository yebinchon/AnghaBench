; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i64, i32** }

@short_options = common dso_local global i32 0, align 4
@long_options = common dso_local global %struct.TYPE_4__* null, align 8
@nargs = common dso_local global i64 0, align 8
@long_extras = common dso_local global %struct.TYPE_5__* null, align 8
@optarg = common dso_local global i32* null, align 8
@required_option = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"--%s is a required argument but is not set\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %2, %55
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* @short_options, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @long_options, align 8
  %17 = call i32 @getopt_long(i32 %13, i8** %14, i32 %15, %struct.TYPE_4__* %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %61

21:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @nargs, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32*, i32** @optarg, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  store i32* %42, i32** %47, align 8
  store i32 1, i32* %8, align 4
  br label %52

48:                                               ; preds = %34, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %22

52:                                               ; preds = %41, %22
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %12

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %59 [
    i32 104, label %58
    i32 63, label %58
  ]

58:                                               ; preds = %56, %56
  br label %59

59:                                               ; preds = %56, %58
  %60 = call i32 (...) @print_help()
  store i32 1, i32* %3, align 4
  br label %111

61:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @nargs, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @required_option, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %100

75:                                               ; preds = %66
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = icmp eq i32** %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %100

83:                                               ; preds = %75
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @long_extras, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %100

92:                                               ; preds = %83
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @long_options, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %98)
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %92, %91, %82, %74
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %62

103:                                              ; preds = %62
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 (...) @print_help()
  store i32 1, i32* %3, align 4
  br label %111

110:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %59
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @getopt_long(i32, i8**, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @print_help(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
