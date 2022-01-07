; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_one_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_one_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8*, i64, i8*, i32* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@OPTST_ARG_OPTIONAL = common dso_local global i32 0, align 4
@option_usage_fp = common dso_local global i32 0, align 4
@line_fmt_buf = common dso_local global i8* null, align 8
@displayEnum = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zbad_od = common dso_local global i8* null, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4
@zGnuOptFmt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @prt_one_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_one_usage(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = call i32 @prt_preamble(%struct.TYPE_10__* %9, %struct.TYPE_11__* %10, %struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OPTST_ARG_OPTIONAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  br label %66

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @OPTST_GET_ARGTYPE(i32 %26)
  switch i32 %27, label %64 [
    i32 131, label %28
    i32 135, label %32
    i32 134, label %36
    i32 132, label %40
    i32 136, label %44
    i32 130, label %48
    i32 133, label %52
    i32 129, label %56
    i32 128, label %60
  ]

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  br label %65

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  br label %65

36:                                               ; preds = %23
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  br label %65

40:                                               ; preds = %23
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  br label %65

44:                                               ; preds = %23
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  br label %65

48:                                               ; preds = %23
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %65

52:                                               ; preds = %23
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 7
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  br label %65

56:                                               ; preds = %23
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 8
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  br label %65

60:                                               ; preds = %23
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 9
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %8, align 8
  br label %65

64:                                               ; preds = %23
  br label %112

65:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28
  br label %66

66:                                               ; preds = %65, %19
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 10
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 11
  %82 = load i8*, i8** %81, align 8
  br label %87

83:                                               ; preds = %66
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i8* [ %82, %79 ], [ %86, %83 ]
  %89 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %67, i32 80, i8* %70, i8* %71, i8* %74, i8* %88)
  %90 = load i32, i32* @option_usage_fp, align 4
  %91 = load i8*, i8** @line_fmt_buf, align 8
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @fprintf(i32 %90, i8* %91, i8* %92, i8* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @OPTST_GET_ARGTYPE(i32 %99)
  switch i32 %100, label %111 [
    i32 135, label %101
    i32 132, label %101
  ]

101:                                              ; preds = %87, %87
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @displayEnum, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ 1, %106 ], [ %108, %107 ]
  store i32 %110, i32* @displayEnum, align 4
  br label %111

111:                                              ; preds = %109, %87
  br label %124

112:                                              ; preds = %64
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @zbad_od, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @fprintf(i32 %113, i8* %114, i8* %117, i8* %120)
  %122 = load i32, i32* @EX_SOFTWARE, align 4
  %123 = call i32 @option_exits(i32 %122)
  br label %124

124:                                              ; preds = %112, %111
  ret void
}

declare dso_local i32 @prt_preamble(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @option_exits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
