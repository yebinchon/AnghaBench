; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.glob_lim = type { i32 }
%struct.stat = type { i32 }

@EOS = common dso_local global i64 0, align 8
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_STAT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SEP = common dso_local global i64 0, align 8
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@GLOB_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_7__*, %struct.glob_lim*)* @glob2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob2(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, %struct.TYPE_7__* %6, %struct.glob_lim* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.glob_lim*, align 8
  %18 = alloca %struct.stat, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %16, align 8
  store %struct.glob_lim* %7, %struct.glob_lim** %17, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %179, %8
  %23 = load i64*, i64** %14, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EOS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = load i64, i64* @EOS, align 8
  %29 = load i64*, i64** %12, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %32 = call i64 @g_lstat(i64* %30, %struct.stat* %18, %struct.TYPE_7__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %180

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GLOB_LIMIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.glob_lim*, %struct.glob_lim** %17, align 8
  %44 = getelementptr inbounds %struct.glob_lim, %struct.glob_lim* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = sext i32 %45 to i64
  %48 = load i64, i64* @GLOB_LIMIT_STAT, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  %51 = load i64, i64* @SEP, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %12, align 8
  store i64 %51, i64* %52, align 8
  %54 = load i64, i64* @EOS, align 8
  %55 = load i64*, i64** %12, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %56, i32* %9, align 4
  br label %180

57:                                               ; preds = %42, %35
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GLOB_MARK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %57
  %65 = load i64*, i64** %12, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 -1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SEP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @S_ISLNK(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i64*, i64** %10, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %83 = call i64 @g_stat(i64* %81, %struct.stat* %18, %struct.TYPE_7__* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85, %70
  %91 = load i64*, i64** %12, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64*, i64** %13, align 8
  %94 = icmp ugt i64* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  br label %180

96:                                               ; preds = %90
  %97 = load i64, i64* @SEP, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  %100 = load i64, i64* @EOS, align 8
  %101 = load i64*, i64** %12, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %85, %80, %75, %64, %57
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i64*, i64** %10, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %109 = load %struct.glob_lim*, %struct.glob_lim** %17, align 8
  %110 = call i32 @globextend(i64* %107, %struct.TYPE_7__* %108, %struct.glob_lim* %109, %struct.stat* %18)
  store i32 %110, i32* %9, align 4
  br label %180

111:                                              ; preds = %22
  %112 = load i64*, i64** %12, align 8
  store i64* %112, i64** %20, align 8
  %113 = load i64*, i64** %14, align 8
  store i64* %113, i64** %19, align 8
  br label %114

114:                                              ; preds = %138, %111
  %115 = load i64*, i64** %19, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EOS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i64*, i64** %19, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SEP, align 8
  %123 = icmp ne i64 %121, %122
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ false, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %144

126:                                              ; preds = %124
  %127 = load i64*, i64** %19, align 8
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @ismeta(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, i32* %21, align 4
  br label %132

132:                                              ; preds = %131, %126
  %133 = load i64*, i64** %20, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64*, i64** %13, align 8
  %136 = icmp ugt i64* %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  br label %180

138:                                              ; preds = %132
  %139 = load i64*, i64** %19, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %19, align 8
  %141 = load i64, i64* %139, align 8
  %142 = load i64*, i64** %20, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %20, align 8
  store i64 %141, i64* %142, align 8
  br label %114

144:                                              ; preds = %124
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %144
  %148 = load i64*, i64** %20, align 8
  store i64* %148, i64** %12, align 8
  %149 = load i64*, i64** %19, align 8
  store i64* %149, i64** %14, align 8
  br label %150

150:                                              ; preds = %161, %147
  %151 = load i64*, i64** %14, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SEP, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %150
  %156 = load i64*, i64** %12, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64*, i64** %13, align 8
  %159 = icmp ugt i64* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 1, i32* %9, align 4
  br label %180

161:                                              ; preds = %155
  %162 = load i64*, i64** %14, align 8
  %163 = getelementptr inbounds i64, i64* %162, i32 1
  store i64* %163, i64** %14, align 8
  %164 = load i64, i64* %162, align 8
  %165 = load i64*, i64** %12, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %12, align 8
  store i64 %164, i64* %165, align 8
  br label %150

167:                                              ; preds = %150
  br label %179

168:                                              ; preds = %144
  %169 = load i64*, i64** %10, align 8
  %170 = load i64*, i64** %11, align 8
  %171 = load i64*, i64** %12, align 8
  %172 = load i64*, i64** %13, align 8
  %173 = load i64*, i64** %14, align 8
  %174 = load i64*, i64** %19, align 8
  %175 = load i64*, i64** %15, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %177 = load %struct.glob_lim*, %struct.glob_lim** %17, align 8
  %178 = call i32 @glob3(i64* %169, i64* %170, i64* %171, i64* %172, i64* %173, i64* %174, i64* %175, %struct.TYPE_7__* %176, %struct.glob_lim* %177)
  store i32 %178, i32* %9, align 4
  br label %180

179:                                              ; preds = %167
  br label %22

180:                                              ; preds = %168, %160, %137, %102, %95, %50, %34
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i64 @g_lstat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @g_stat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i32 @globextend(i64*, %struct.TYPE_7__*, %struct.glob_lim*, %struct.stat*) #1

declare dso_local i64 @ismeta(i64) #1

declare dso_local i32 @glob3(i64*, i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_7__*, %struct.glob_lim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
