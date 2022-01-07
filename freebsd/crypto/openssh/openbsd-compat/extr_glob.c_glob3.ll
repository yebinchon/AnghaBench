; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i8*)*, %struct.dirent* (i8*)*, i64 (i8*, i64)* }
%struct.dirent = type { i64* }
%struct.glob_lim = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EOS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@GLOB_ABORTED = common dso_local global i32 0, align 4
@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@readdir = common dso_local global i64 0, align 8
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_READDIR = common dso_local global i64 0, align 8
@SEP = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@DOT = common dso_local global i64 0, align 8
@GLOB_LIMIT_RECUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_5__*, %struct.glob_lim*)* @glob3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob3(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, %struct.TYPE_5__* %7, %struct.glob_lim* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca %struct.glob_lim*, align 8
  %20 = alloca %struct.dirent*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.dirent* (i8*)*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i64*, align 8
  store i64* %0, i64** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %18, align 8
  store %struct.glob_lim* %8, %struct.glob_lim** %19, align 8
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  %33 = load i64*, i64** %13, align 8
  %34 = load i64*, i64** %14, align 8
  %35 = icmp ugt i64* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %203

37:                                               ; preds = %9
  %38 = load i64, i64* @EOS, align 8
  %39 = load i64*, i64** %13, align 8
  store i64 %38, i64* %39, align 8
  store i64 0, i64* @errno, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = call i8* @g_opendir(i64* %40, %struct.TYPE_5__* %41)
  store i8* %42, i8** %21, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64 (i8*, i64)*, i64 (i8*, i64)** %46, align 8
  %48 = icmp ne i64 (i8*, i64)* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load i64*, i64** %11, align 8
  %51 = trunc i64 %30 to i32
  %52 = call i64 @g_Ctoc(i64* %50, i8* %32, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @GLOB_ABORTED, align 4
  store i32 %55, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %203

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64 (i8*, i64)*, i64 (i8*, i64)** %58, align 8
  %60 = load i64, i64* @errno, align 8
  %61 = call i64 %59(i8* %32, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GLOB_ERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %56
  %71 = load i32, i32* @GLOB_ABORTED, align 4
  store i32 %71, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %203

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %44
  store i32 0, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %203

74:                                               ; preds = %37
  store i32 0, i32* %22, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.dirent* (i8*)*, %struct.dirent* (i8*)** %83, align 8
  store %struct.dirent* (i8*)* %84, %struct.dirent* (i8*)** %25, align 8
  br label %88

85:                                               ; preds = %74
  %86 = load i64, i64* @readdir, align 8
  %87 = inttoptr i64 %86 to %struct.dirent* (i8*)*
  store %struct.dirent* (i8*)* %87, %struct.dirent* (i8*)** %25, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %184, %167, %130, %88
  %90 = load %struct.dirent* (i8*)*, %struct.dirent* (i8*)** %25, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = call %struct.dirent* %90(i8* %91)
  store %struct.dirent* %92, %struct.dirent** %20, align 8
  %93 = icmp ne %struct.dirent* %92, null
  br i1 %93, label %94, label %185

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GLOB_LIMIT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %94
  %102 = load %struct.glob_lim*, %struct.glob_lim** %19, align 8
  %103 = getelementptr inbounds %struct.glob_lim, %struct.glob_lim* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = sext i32 %104 to i64
  %107 = load i64, i64* @GLOB_LIMIT_READDIR, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  store i64 0, i64* @errno, align 8
  %110 = load i32, i32* @SEP, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %13, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %13, align 8
  store i64 %111, i64* %112, align 8
  %114 = load i64, i64* @EOS, align 8
  %115 = load i64*, i64** %13, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %116, i32* %22, align 4
  br label %185

117:                                              ; preds = %101, %94
  %118 = load %struct.dirent*, %struct.dirent** %20, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DOT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i64*, i64** %15, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DOT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %89

131:                                              ; preds = %125, %117
  %132 = load i64*, i64** %13, align 8
  store i64* %132, i64** %28, align 8
  %133 = load %struct.dirent*, %struct.dirent** %20, align 8
  %134 = getelementptr inbounds %struct.dirent, %struct.dirent* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = bitcast i64* %135 to i32*
  store i32* %136, i32** %27, align 8
  br label %137

137:                                              ; preds = %152, %131
  %138 = load i64*, i64** %28, align 8
  %139 = load i64*, i64** %14, align 8
  %140 = icmp ult i64* %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32*, i32** %27, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %27, align 8
  %144 = load i32, i32* %142, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64*, i64** %28, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %28, align 8
  store i64 %145, i64* %146, align 8
  %148 = load i64, i64* @EOS, align 8
  %149 = icmp ne i64 %145, %148
  br label %150

150:                                              ; preds = %141, %137
  %151 = phi i1 [ false, %137 ], [ %149, %141 ]
  br i1 %151, label %152, label %153

152:                                              ; preds = %150
  br label %137

153:                                              ; preds = %150
  %154 = load i64*, i64** %28, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = icmp uge i64* %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i64, i64* @EOS, align 8
  %159 = load i64*, i64** %28, align 8
  store i64 %158, i64* %159, align 8
  store i32 1, i32* %22, align 4
  br label %185

160:                                              ; preds = %153
  %161 = load i64*, i64** %13, align 8
  %162 = load i64*, i64** %15, align 8
  %163 = load i64*, i64** %16, align 8
  %164 = load i32, i32* @GLOB_LIMIT_RECUR, align 4
  %165 = call i32 @match(i64* %161, i64* %162, i64* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load i64, i64* @EOS, align 8
  %169 = load i64*, i64** %13, align 8
  store i64 %168, i64* %169, align 8
  br label %89

170:                                              ; preds = %160
  %171 = load i64*, i64** %11, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = load i64*, i64** %28, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 -1
  store i64* %174, i64** %28, align 8
  %175 = load i64*, i64** %14, align 8
  %176 = load i64*, i64** %16, align 8
  %177 = load i64*, i64** %17, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %179 = load %struct.glob_lim*, %struct.glob_lim** %19, align 8
  %180 = call i32 @glob2(i64* %171, i64* %172, i64* %174, i64* %175, i64* %176, i64* %177, %struct.TYPE_5__* %178, %struct.glob_lim* %179)
  store i32 %180, i32* %22, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %185

184:                                              ; preds = %170
  br label %89

185:                                              ; preds = %183, %157, %109, %89
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32 (i8*)*, i32 (i8*)** %194, align 8
  %196 = load i8*, i8** %21, align 8
  %197 = call i32 %195(i8* %196)
  br label %201

198:                                              ; preds = %185
  %199 = load i8*, i8** %21, align 8
  %200 = call i32 @closedir(i8* %199)
  br label %201

201:                                              ; preds = %198, %192
  %202 = load i32, i32* %22, align 4
  store i32 %202, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %203

203:                                              ; preds = %201, %73, %70, %54, %36
  %204 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %10, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @g_opendir(i64*, %struct.TYPE_5__*) #2

declare dso_local i64 @g_Ctoc(i64*, i8*, i32) #2

declare dso_local i32 @match(i64*, i64*, i64*, i32) #2

declare dso_local i32 @glob2(i64*, i64*, i64*, i64*, i64*, i64*, %struct.TYPE_5__*, %struct.glob_lim*) #2

declare dso_local i32 @closedir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
