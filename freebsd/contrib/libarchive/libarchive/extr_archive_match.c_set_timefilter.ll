; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32, i64, i32, i64, i32, i64, i32, i64, i32, i8*, i8*, i8*, i8* }

@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_NEWER = common dso_local global i32 0, align 4
@TIME_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, i8*, i64, i8*, i64)* @set_timefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timefilter(%struct.archive_match* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.archive_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.archive_match* %0, %struct.archive_match** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @JUST_EQUAL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %29 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %32 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %35 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @TIME_IS_SET, align 4
  %37 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %38 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %26, %22
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @JUST_EQUAL(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %53 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %56 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %55, i32 0, i32 11
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %59 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @TIME_IS_SET, align 4
  %61 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %62 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %50, %46
  br label %66

66:                                               ; preds = %65, %6
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @JUST_EQUAL(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %83 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %86 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %89 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @TIME_IS_SET, align 4
  %91 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %92 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %80, %76
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @JUST_EQUAL(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %107 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %110 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %113 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* @TIME_IS_SET, align 4
  %115 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %116 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %104, %100
  br label %120

120:                                              ; preds = %119, %66
  %121 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %121
}

declare dso_local i64 @JUST_EQUAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
