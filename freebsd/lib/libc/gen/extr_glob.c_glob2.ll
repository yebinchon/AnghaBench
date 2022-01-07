; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.glob_limit = type { i32 }
%struct.stat = type { i32 }

@EOS = common dso_local global i64 0, align 8
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_STAT = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@GLOB_MARK = common dso_local global i32 0, align 4
@SEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i64*, %struct.TYPE_7__*, %struct.glob_limit*)* @glob2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob2(i64* %0, i64* %1, i64* %2, i64* %3, %struct.TYPE_7__* %4, %struct.glob_limit* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.glob_limit*, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store %struct.glob_limit* %5, %struct.glob_limit** %13, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %178, %6
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EOS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %18
  %24 = load i64, i64* @EOS, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = call i64 @g_lstat(i64* %26, %struct.stat* %14, %struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %179

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GLOB_LIMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.glob_limit*, %struct.glob_limit** %13, align 8
  %40 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = load i64, i64* @GLOB_LIMIT_STAT, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @E2BIG, align 4
  store i32 %47, i32* @errno, align 4
  %48 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %48, i32* %7, align 4
  br label %179

49:                                               ; preds = %38, %31
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GLOB_MARK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %49
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 -1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @UNPROT(i64 %59)
  %61 = load i64, i64* @SEP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S_ISLNK(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = load i64*, i64** %8, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = call i64 @g_stat(i64* %74, %struct.stat* %14, %struct.TYPE_7__* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @S_ISDIR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78, %63
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64*, i64** %10, align 8
  %87 = icmp ugt i64* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @E2BIG, align 4
  store i32 %89, i32* @errno, align 4
  %90 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %90, i32* %7, align 4
  br label %179

91:                                               ; preds = %83
  %92 = load i64, i64* @SEP, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %9, align 8
  store i64 %92, i64* %93, align 8
  %95 = load i64, i64* @EOS, align 8
  %96 = load i64*, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %78, %73, %68, %56, %49
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i64*, i64** %8, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = load %struct.glob_limit*, %struct.glob_limit** %13, align 8
  %105 = call i32 @globextend(i64* %102, %struct.TYPE_7__* %103, %struct.glob_limit* %104, i32* null)
  store i32 %105, i32* %7, align 4
  br label %179

106:                                              ; preds = %18
  %107 = load i64*, i64** %9, align 8
  store i64* %107, i64** %16, align 8
  %108 = load i64*, i64** %11, align 8
  store i64* %108, i64** %15, align 8
  br label %109

109:                                              ; preds = %136, %106
  %110 = load i64*, i64** %15, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EOS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i64*, i64** %15, align 8
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @UNPROT(i64 %116)
  %118 = load i64, i64* @SEP, align 8
  %119 = icmp ne i64 %117, %118
  br label %120

120:                                              ; preds = %114, %109
  %121 = phi i1 [ false, %109 ], [ %119, %114 ]
  br i1 %121, label %122, label %142

122:                                              ; preds = %120
  %123 = load i64*, i64** %15, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @ismeta(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 1, i32* %17, align 4
  br label %128

128:                                              ; preds = %127, %122
  %129 = load i64*, i64** %16, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64*, i64** %10, align 8
  %132 = icmp ugt i64* %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @E2BIG, align 4
  store i32 %134, i32* @errno, align 4
  %135 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %135, i32* %7, align 4
  br label %179

136:                                              ; preds = %128
  %137 = load i64*, i64** %15, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %15, align 8
  %139 = load i64, i64* %137, align 8
  %140 = load i64*, i64** %16, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %16, align 8
  store i64 %139, i64* %140, align 8
  br label %109

142:                                              ; preds = %120
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %169, label %145

145:                                              ; preds = %142
  %146 = load i64*, i64** %16, align 8
  store i64* %146, i64** %9, align 8
  %147 = load i64*, i64** %15, align 8
  store i64* %147, i64** %11, align 8
  br label %148

148:                                              ; preds = %162, %145
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @UNPROT(i64 %150)
  %152 = load i64, i64* @SEP, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i64*, i64** %9, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64*, i64** %10, align 8
  %158 = icmp ugt i64* %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @E2BIG, align 4
  store i32 %160, i32* @errno, align 4
  %161 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %161, i32* %7, align 4
  br label %179

162:                                              ; preds = %154
  %163 = load i64*, i64** %11, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %11, align 8
  %165 = load i64, i64* %163, align 8
  %166 = load i64*, i64** %9, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %9, align 8
  store i64 %165, i64* %166, align 8
  br label %148

168:                                              ; preds = %148
  br label %178

169:                                              ; preds = %142
  %170 = load i64*, i64** %8, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = load i64*, i64** %11, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %176 = load %struct.glob_limit*, %struct.glob_limit** %13, align 8
  %177 = call i32 @glob3(i64* %170, i64* %171, i64* %172, i64* %173, i64* %174, %struct.TYPE_7__* %175, %struct.glob_limit* %176)
  store i32 %177, i32* %7, align 4
  br label %179

178:                                              ; preds = %168
  br label %18

179:                                              ; preds = %169, %159, %133, %97, %88, %46, %30
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i64 @g_lstat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i64 @UNPROT(i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @g_stat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i32 @globextend(i64*, %struct.TYPE_7__*, %struct.glob_limit*, i32*) #1

declare dso_local i64 @ismeta(i64) #1

declare dso_local i32 @glob3(i64*, i64*, i64*, i64*, i64*, %struct.TYPE_7__*, %struct.glob_limit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
