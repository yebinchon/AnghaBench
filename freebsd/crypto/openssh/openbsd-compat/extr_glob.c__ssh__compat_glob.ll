; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c__ssh__compat_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c__ssh__compat_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 (i8*, i32)*, i64, i32*, i32* }
%struct.glob_lim = type { i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@GLOB_APPEND = common dso_local global i32 0, align 4
@GLOB_DOOFFS = common dso_local global i32 0, align 4
@GLOB_MAGCHAR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@GLOB_NOESCAPE = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@QUOTE = common dso_local global i32 0, align 4
@M_PROTECT = common dso_local global i32 0, align 4
@GLOB_BRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glob(i8* %0, i32 %1, i32 (i8*, i32)* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32)*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.glob_lim, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = bitcast %struct.glob_lim* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* @PATH_MAX, align 8
  %25 = call i64 @strnlen(i8* %23, i64 %24)
  %26 = load i64, i64* @PATH_MAX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @GLOB_NOMATCH, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %178

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GLOB_APPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GLOB_DOOFFS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GLOB_MAGCHAR, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32 (i8*, i32)*, i32 (i8*, i32)** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 (i8*, i32)* %59, i32 (i8*, i32)** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %52
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @INT_MAX, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %96, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @INT_MAX, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @INT_MAX, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = sub nsw i64 %93, 1
  %95 = icmp sge i64 %88, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85, %79, %73, %68, %52
  %97 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %178

98:                                               ; preds = %85
  store i32* %21, i32** %12, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* @MAXPATHLEN, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = getelementptr inbounds i32, i32* %102, i64 -1
  store i32* %103, i32** %13, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @GLOB_NOESCAPE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %121, %108
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = icmp ult i32* %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %10, align 8
  %116 = load i32, i32* %114, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @EOS, align 4
  %118 = icmp ne i32 %116, %117
  br label %119

119:                                              ; preds = %113, %109
  %120 = phi i1 [ false, %109 ], [ %118, %113 ]
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  br label %109

125:                                              ; preds = %119
  br label %165

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %163, %126
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = icmp ult i32* %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %10, align 8
  %134 = load i32, i32* %132, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @EOS, align 4
  %136 = icmp ne i32 %134, %135
  br label %137

137:                                              ; preds = %131, %127
  %138 = phi i1 [ false, %127 ], [ %136, %131 ]
  br i1 %138, label %139, label %164

139:                                              ; preds = %137
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @QUOTE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %10, align 8
  %146 = load i32, i32* %144, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* @EOS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* @QUOTE, align 4
  store i32 %150, i32* %11, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 -1
  store i32* %152, i32** %10, align 8
  br label %153

153:                                              ; preds = %149, %143
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @M_PROTECT, align 4
  %156 = or i32 %154, %155
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  br label %163

159:                                              ; preds = %139
  %160 = load i32, i32* %11, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %12, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %159, %153
  br label %127

164:                                              ; preds = %137
  br label %165

165:                                              ; preds = %164, %125
  %166 = load i32, i32* @EOS, align 4
  %167 = load i32*, i32** %12, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @GLOB_BRACE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %174 = call i32 @globexp1(i32* %21, %struct.TYPE_5__* %173, %struct.glob_lim* %16)
  store i32 %174, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %178

175:                                              ; preds = %165
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %177 = call i32 @glob0(i32* %21, %struct.TYPE_5__* %176, %struct.glob_lim* %16)
  store i32 %177, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %172, %96, %28
  %179 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strnlen(i8*, i64) #3

declare dso_local i32 @globexp1(i32*, %struct.TYPE_5__*, %struct.glob_lim*) #3

declare dso_local i32 @glob0(i32*, %struct.TYPE_5__*, %struct.glob_lim*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
