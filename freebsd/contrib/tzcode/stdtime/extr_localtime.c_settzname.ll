; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_settzname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_settzname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i64*, i8*, i32, %struct.ttinfo* }
%struct.ttinfo = type { i64, i64, i32 }

@lclptr = common dso_local global %struct.state* null, align 8
@wildabbr = common dso_local global i8* null, align 8
@tzname = common dso_local global i8** null, align 8
@TZ_ABBR_CHAR_SET = common dso_local global i32 0, align 4
@TZ_ABBR_ERR_CHAR = common dso_local global i8 0, align 1
@TZ_ABBR_MAX_LEN = common dso_local global i64 0, align 8
@GRANDPARENTED = common dso_local global i32 0, align 4
@altzone = common dso_local global i32 0, align 4
@daylight = common dso_local global i32 0, align 4
@gmt = common dso_local global i8* null, align 8
@timezone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @settzname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settzname() #0 {
  %1 = alloca %struct.state*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttinfo*, align 8
  %4 = alloca %struct.ttinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = load %struct.state*, %struct.state** @lclptr, align 8
  store %struct.state* %6, %struct.state** %1, align 8
  %7 = load i8*, i8** @wildabbr, align 8
  %8 = load i8**, i8*** @tzname, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @wildabbr, align 8
  %11 = load i8**, i8*** @tzname, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* %10, i8** %12, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %43, %0
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.state*, %struct.state** %1, align 8
  %16 = getelementptr inbounds %struct.state, %struct.state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.state*, %struct.state** %1, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 4
  %22 = load %struct.ttinfo*, %struct.ttinfo** %21, align 8
  %23 = load %struct.state*, %struct.state** %1, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %22, i64 %29
  store %struct.ttinfo* %30, %struct.ttinfo** %3, align 8
  %31 = load %struct.state*, %struct.state** %1, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ttinfo*, %struct.ttinfo** %3, align 8
  %35 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8**, i8*** @tzname, align 8
  %39 = load %struct.ttinfo*, %struct.ttinfo** %3, align 8
  %40 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %37, i8** %42, align 8
  br label %43

43:                                               ; preds = %19
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %13

46:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.state*, %struct.state** %1, align 8
  %50 = getelementptr inbounds %struct.state, %struct.state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i32, i32* @TZ_ABBR_CHAR_SET, align 4
  %55 = load %struct.state*, %struct.state** %1, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32* @strchr(i32 %54, i8 signext %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i8, i8* @TZ_ABBR_ERR_CHAR, align 1
  %66 = load %struct.state*, %struct.state** %1, align 8
  %67 = getelementptr inbounds %struct.state, %struct.state* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %65, i8* %71, align 1
  br label %72

72:                                               ; preds = %64, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %47

76:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i32, i32* %2, align 4
  %79 = load %struct.state*, %struct.state** %1, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.state*, %struct.state** %1, align 8
  %85 = getelementptr inbounds %struct.state, %struct.state* %84, i32 0, i32 4
  %86 = load %struct.ttinfo*, %struct.ttinfo** %85, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %86, i64 %88
  store %struct.ttinfo* %89, %struct.ttinfo** %4, align 8
  %90 = load %struct.state*, %struct.state** %1, align 8
  %91 = getelementptr inbounds %struct.state, %struct.state* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.ttinfo*, %struct.ttinfo** %4, align 8
  %94 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8* %96, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = load i64, i64* @TZ_ABBR_MAX_LEN, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %83
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* @GRANDPARENTED, align 4
  %104 = call i64 @strcmp(i8* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* @TZ_ABBR_MAX_LEN, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %106, %101, %83
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %77

114:                                              ; preds = %77
  ret void
}

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
