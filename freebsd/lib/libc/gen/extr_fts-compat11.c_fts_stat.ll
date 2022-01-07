; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat11.c_fts_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat11.c_fts_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i64, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, %struct.freebsd11_stat* }
%struct.freebsd11_stat = type { i64, i64, i32, i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@FTS_NOSTAT = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@errno = common dso_local global i8* null, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32)* @fts_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_stat(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.freebsd11_stat*, align 8
  %14 = alloca %struct.freebsd11_stat, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i32, i32* @AT_FDCWD, align 4
  store i32 %23, i32* %9, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @FTS_NOSTAT, align 4
  %30 = call i64 @ISSET(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 10
  %36 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %35, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi %struct.freebsd11_stat* [ %14, %32 ], [ %36, %33 ]
  store %struct.freebsd11_stat* %38, %struct.freebsd11_stat** %13, align 8
  %39 = load i32, i32* @FTS_LOGICAL, align 4
  %40 = call i64 @ISSET(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %49 = call i64 @freebsd11_fstatat(i32 %46, i8* %47, %struct.freebsd11_stat* %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load i8*, i8** @errno, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %57 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %58 = call i64 @freebsd11_fstatat(i32 %54, i8* %55, %struct.freebsd11_stat* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %86

64:                                               ; preds = %51
  store i8* null, i8** @errno, align 8
  %65 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %66 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @S_ISLNK(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @FTS_SLNONE, align 4
  store i32 %71, i32* %5, align 4
  br label %172

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %45
  br label %91

74:                                               ; preds = %42
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %78 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %79 = call i64 @freebsd11_fstatat(i32 %75, i8* %76, %struct.freebsd11_stat* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i8*, i8** @errno, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %60
  %87 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %88 = call i32 @memset(%struct.freebsd11_stat* %87, i8 signext 0, i32 24)
  %89 = load i32, i32* @FTS_NS, align 4
  store i32 %89, i32* %5, align 4
  br label %172

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %93 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @S_ISDIR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %154

97:                                               ; preds = %91
  %98 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %99 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  store i64 %100, i64* %11, align 8
  %103 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %104 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  store i64 %105, i64* %12, align 8
  %108 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %109 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @ISDOT(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %97
  %119 = load i32, i32* @FTS_DOT, align 4
  store i32 %119, i32* %5, align 4
  br label %172

120:                                              ; preds = %97
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %10, align 8
  br label %124

124:                                              ; preds = %148, %120
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 7
  store %struct.TYPE_3__* %143, %struct.TYPE_3__** %145, align 8
  %146 = load i32, i32* @FTS_DC, align 4
  store i32 %146, i32* %5, align 4
  br label %172

147:                                              ; preds = %136, %130
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %10, align 8
  br label %124

152:                                              ; preds = %124
  %153 = load i32, i32* @FTS_D, align 4
  store i32 %153, i32* %5, align 4
  br label %172

154:                                              ; preds = %91
  %155 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %156 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @S_ISLNK(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @FTS_SL, align 4
  store i32 %161, i32* %5, align 4
  br label %172

162:                                              ; preds = %154
  %163 = load %struct.freebsd11_stat*, %struct.freebsd11_stat** %13, align 8
  %164 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @S_ISREG(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @FTS_F, align 4
  store i32 %169, i32* %5, align 4
  br label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @FTS_DEFAULT, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %168, %160, %152, %142, %118, %86, %70
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i64 @freebsd11_fstatat(i32, i8*, %struct.freebsd11_stat*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @memset(%struct.freebsd11_stat*, i8 signext, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ISDOT(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
