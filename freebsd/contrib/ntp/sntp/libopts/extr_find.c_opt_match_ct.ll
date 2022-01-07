; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_opt_match_ct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_opt_match_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i32, i64* }

@OPTST_OMITTED = common dso_local global i32 0, align 4
@OPTST_NO_INIT = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32*, i32*)* @opt_match_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_match_ct(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %15, align 8
  br label %22

22:                                               ; preds = %98, %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %98

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = call i64 @SKIP_OPT(%struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OPTST_OMITTED, align 4
  %37 = load i32, i32* @OPTST_NO_INIT, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %98

41:                                               ; preds = %32, %28
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @strneqvcmp(i8* %42, i64* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NUL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %6, align 4
  br label %107

62:                                               ; preds = %49
  br label %93

63:                                               ; preds = %41
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @strneqvcmp(i8* %69, i64* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load i32*, i32** %11, align 8
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NUL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i32, i32* %13, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  store i32 1, i32* %6, align 4
  br label %107

90:                                               ; preds = %76
  br label %92

91:                                               ; preds = %68, %63
  br label %98

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %91, %40, %27
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 1
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %15, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %22, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %87, %59
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @SKIP_OPT(%struct.TYPE_6__*) #1

declare dso_local i64 @strneqvcmp(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
