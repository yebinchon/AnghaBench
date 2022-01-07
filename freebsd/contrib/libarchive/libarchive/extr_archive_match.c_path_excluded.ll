; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_path_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_path_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.match*, i32 }
%struct.match = type { i64, %struct.match* }
%struct.TYPE_3__ = type { %struct.match* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, i8*)* @path_excluded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_excluded(%struct.archive_match* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.match*, align 8
  %9 = alloca %struct.match*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %12 = icmp eq %struct.archive_match* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

14:                                               ; preds = %3
  store %struct.match* null, %struct.match** %9, align 8
  %15 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %16 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.match*, %struct.match** %17, align 8
  store %struct.match* %18, %struct.match** %8, align 8
  br label %19

19:                                               ; preds = %51, %14
  %20 = load %struct.match*, %struct.match** %8, align 8
  %21 = icmp ne %struct.match* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load %struct.match*, %struct.match** %8, align 8
  %24 = getelementptr inbounds %struct.match, %struct.match* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %29 = load %struct.match*, %struct.match** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @match_path_inclusion(%struct.archive_match* %28, %struct.match* %29, i32 %30, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %125

39:                                               ; preds = %34
  %40 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %41 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.match*, %struct.match** %8, align 8
  %46 = getelementptr inbounds %struct.match, %struct.match* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.match*, %struct.match** %8, align 8
  store %struct.match* %49, %struct.match** %9, align 8
  br label %50

50:                                               ; preds = %39, %27, %22
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.match*, %struct.match** %8, align 8
  %53 = getelementptr inbounds %struct.match, %struct.match* %52, i32 0, i32 1
  %54 = load %struct.match*, %struct.match** %53, align 8
  store %struct.match* %54, %struct.match** %8, align 8
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %57 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.match*, %struct.match** %58, align 8
  store %struct.match* %59, %struct.match** %8, align 8
  br label %60

60:                                               ; preds = %74, %55
  %61 = load %struct.match*, %struct.match** %8, align 8
  %62 = icmp ne %struct.match* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %65 = load %struct.match*, %struct.match** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @match_path_exclusion(%struct.archive_match* %64, %struct.match* %65, i32 %66, i8* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %125

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.match*, %struct.match** %8, align 8
  %76 = getelementptr inbounds %struct.match, %struct.match* %75, i32 0, i32 1
  %77 = load %struct.match*, %struct.match** %76, align 8
  store %struct.match* %77, %struct.match** %8, align 8
  br label %60

78:                                               ; preds = %60
  %79 = load %struct.match*, %struct.match** %9, align 8
  %80 = icmp ne %struct.match* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %125

82:                                               ; preds = %78
  %83 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %84 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.match*, %struct.match** %85, align 8
  store %struct.match* %86, %struct.match** %8, align 8
  br label %87

87:                                               ; preds = %113, %82
  %88 = load %struct.match*, %struct.match** %8, align 8
  %89 = icmp ne %struct.match* %88, null
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load %struct.match*, %struct.match** %8, align 8
  %92 = getelementptr inbounds %struct.match, %struct.match* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %97 = load %struct.match*, %struct.match** %8, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @match_path_inclusion(%struct.archive_match* %96, %struct.match* %97, i32 %98, i8* %99)
  store i32 %100, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %125

107:                                              ; preds = %102
  %108 = load %struct.match*, %struct.match** %8, align 8
  %109 = getelementptr inbounds %struct.match, %struct.match* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  store i32 0, i32* %4, align 4
  br label %125

112:                                              ; preds = %95, %90
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.match*, %struct.match** %8, align 8
  %115 = getelementptr inbounds %struct.match, %struct.match* %114, i32 0, i32 1
  %116 = load %struct.match*, %struct.match** %115, align 8
  store %struct.match* %116, %struct.match** %8, align 8
  br label %87

117:                                              ; preds = %87
  %118 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %119 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.match*, %struct.match** %120, align 8
  %122 = icmp ne %struct.match* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %125

124:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %123, %107, %105, %81, %71, %37, %13
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @match_path_inclusion(%struct.archive_match*, %struct.match*, i32, i8*) #1

declare dso_local i32 @match_path_exclusion(%struct.archive_match*, %struct.match*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
