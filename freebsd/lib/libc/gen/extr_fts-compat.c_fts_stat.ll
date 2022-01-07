; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32, %struct.freebsd11_stat* }
%struct.freebsd11_stat = type { i64, i64, i32, i32 }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@errno = common dso_local global i8* null, align 8
@FTS_SLNONE = common dso_local global i32 0, align 4
@FTS_NS = common dso_local global i32 0, align 4
@FTS_DOT = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@FTS_DC = common dso_local global i32 0, align 4
@FTS_D = common dso_local global i32 0, align 4
@FTS_SL = common dso_local global i32 0, align 4
@FTS_F = common dso_local global i32 0, align 4
@FTS_DEFAULT = common dso_local global i32 0, align 4
@FTS_ISW = common dso_local global i32 0, align 4
@FTS_W = common dso_local global i32 0, align 4
@S_IFWHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @fts_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_stat(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.freebsd11_stat*, align 8
  %12 = alloca %struct.freebsd11_stat, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @FTS_NOSTAT, align 4
  %15 = call i64 @ISSET(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  %21 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi %struct.freebsd11_stat* [ %12, %17 ], [ %21, %18 ]
  store %struct.freebsd11_stat* %23, %struct.freebsd11_stat** %11, align 8
  %24 = load i32, i32* @FTS_LOGICAL, align 4
  %25 = call i64 @ISSET(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27, %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %35 = call i64 @freebsd11_stat(i32 %33, %struct.freebsd11_stat* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i8*, i8** @errno, align 8
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %44 = call i64 @freebsd11_lstat(i32 %42, %struct.freebsd11_stat* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  store i8* null, i8** @errno, align 8
  %47 = load i32, i32* @FTS_SLNONE, align 4
  store i32 %47, i32* %4, align 4
  br label %151

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %65

52:                                               ; preds = %30
  br label %70

53:                                               ; preds = %27
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %58 = call i64 @freebsd11_lstat(i32 %56, %struct.freebsd11_stat* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i8*, i8** @errno, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %48
  %66 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %67 = call i32 @memset(%struct.freebsd11_stat* %66, i8 signext 0, i32 24)
  %68 = load i32, i32* @FTS_NS, align 4
  store i32 %68, i32* %4, align 4
  br label %151

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %72 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @S_ISDIR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %70
  %77 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %78 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  store i64 %79, i64* %9, align 8
  %82 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %83 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  store i64 %84, i64* %10, align 8
  %87 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %88 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ISDOT(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %76
  %98 = load i32, i32* @FTS_DOT, align 4
  store i32 %98, i32* %4, align 4
  br label %151

99:                                               ; preds = %76
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %8, align 8
  br label %103

103:                                              ; preds = %127, %99
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  store %struct.TYPE_3__* %122, %struct.TYPE_3__** %124, align 8
  %125 = load i32, i32* @FTS_DC, align 4
  store i32 %125, i32* %4, align 4
  br label %151

126:                                              ; preds = %115, %109
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  store %struct.TYPE_3__* %130, %struct.TYPE_3__** %8, align 8
  br label %103

131:                                              ; preds = %103
  %132 = load i32, i32* @FTS_D, align 4
  store i32 %132, i32* %4, align 4
  br label %151

133:                                              ; preds = %70
  %134 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %135 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @S_ISLNK(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @FTS_SL, align 4
  store i32 %140, i32* %4, align 4
  br label %151

141:                                              ; preds = %133
  %142 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %11, align 8
  %143 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @S_ISREG(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @FTS_F, align 4
  store i32 %148, i32* %4, align 4
  br label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @FTS_DEFAULT, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %147, %139, %131, %121, %97, %65, %46
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i64 @freebsd11_stat(i32, %struct.freebsd11_stat*) #1

declare dso_local i64 @freebsd11_lstat(i32, %struct.freebsd11_stat*) #1

declare dso_local i32 @memset(%struct.freebsd11_stat*, i8 signext, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ISDOT(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
