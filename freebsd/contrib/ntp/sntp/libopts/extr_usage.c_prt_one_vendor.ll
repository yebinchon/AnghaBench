; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_one_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_one_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i32* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@OPTST_ARG_OPTIONAL = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@option_usage_fp = common dso_local global i32 0, align 4
@displayEnum = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zbad_od = common dso_local global i8* null, align 8
@zbad_arg_type_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i8*)* @prt_one_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_one_vendor(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = call i32 @prt_preamble(%struct.TYPE_10__* %11, %struct.TYPE_11__* %12, %struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @OPTST_ARG_OPTIONAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  br label %68

25:                                               ; preds = %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @OPTST_GET_ARGTYPE(i32 %28)
  switch i32 %29, label %66 [
    i32 131, label %30
    i32 135, label %34
    i32 134, label %38
    i32 132, label %42
    i32 136, label %46
    i32 130, label %50
    i32 133, label %54
    i32 129, label %58
    i32 128, label %62
  ]

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  br label %67

38:                                               ; preds = %25
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  br label %67

42:                                               ; preds = %25
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  br label %67

46:                                               ; preds = %25
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  br label %67

50:                                               ; preds = %25
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  br label %67

54:                                               ; preds = %25
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %10, align 8
  br label %67

58:                                               ; preds = %25
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  br label %67

62:                                               ; preds = %25
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 9
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  br label %67

66:                                               ; preds = %25
  br label %113

67:                                               ; preds = %62, %58, %54, %50, %46, %42, %38, %34, %30
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i8*, i8** %10, align 8
  %70 = call i8* @SPN_WHITESPACE_CHARS(i8* %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* @NUL, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %78, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %90

83:                                               ; preds = %68
  %84 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %84, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32, i32* @option_usage_fp, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @fprintf(i32 %91, i8* %92, i8* %93, i8* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @OPTST_GET_ARGTYPE(i32 %100)
  switch i32 %101, label %112 [
    i32 135, label %102
    i32 132, label %102
  ]

102:                                              ; preds = %90, %90
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @displayEnum, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i32 [ 1, %107 ], [ %109, %108 ]
  store i32 %111, i32* @displayEnum, align 4
  br label %112

112:                                              ; preds = %110, %90
  br label %125

113:                                              ; preds = %66
  %114 = load i32, i32* @stderr, align 4
  %115 = load i8*, i8** @zbad_od, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @fprintf(i32 %114, i8* %115, i8* %118, i8* %121)
  %123 = load i32, i32* @zbad_arg_type_msg, align 4
  %124 = call i32 @ao_bug(i32 %123)
  br label %125

125:                                              ; preds = %113, %112
  ret void
}

declare dso_local i32 @prt_preamble(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ao_bug(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
