; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@MaxPathLen = common dso_local global i32 0, align 4
@CHAR_EOS = common dso_local global i32 0, align 4
@CHAR_NOT = common dso_local global i32 0, align 4
@CHAR_RBRACKET = common dso_local global i32 0, align 4
@M_SET = common dso_local global i32 0, align 4
@M_NOT = common dso_local global i32 0, align 4
@CHAR_RANGE = common dso_local global i32 0, align 4
@M_RNG = common dso_local global i32 0, align 4
@GLOB_MAGCHAR = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_ONE = common dso_local global i32 0, align 4
@M_ALL = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_NOMAGIC = common dso_local global i32 0, align 4
@GLOB_NOSORT = common dso_local global i32 0, align 4
@compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @glob0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob0(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %15 = load i32, i32* @MaxPathLen, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32* @globtilde(i32* %20, i32* %19, %struct.TYPE_6__* %21)
  store i32* %22, i32** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  store i32* %19, i32** %10, align 8
  br label %26

26:                                               ; preds = %156, %2
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @CHAR_EOS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %157

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %150 [
    i32 130, label %34
    i32 129, label %122
    i32 128, label %131
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CHAR_NOT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CHAR_EOS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* @CHAR_RBRACKET, align 4
  %52 = call i32* @g_strchr(i32* %50, i32 %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %48, %43
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %10, align 8
  store i32 130, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @CHAR_NOT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 -1
  store i32* %62, i32** %6, align 8
  br label %63

63:                                               ; preds = %60, %54
  br label %156

64:                                               ; preds = %48
  %65 = load i32, i32* @M_SET, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CHAR_NOT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @M_NOT, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  %78 = load i32, i32* %76, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %107, %75
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @CHAR(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CHAR_RANGE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %79
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @CHAR_RBRACKET, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i32, i32* @M_RNG, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i8* @CHAR(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32* %105, i32** %6, align 8
  br label %106

106:                                              ; preds = %95, %89, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %6, align 8
  %110 = load i32, i32* %108, align 4
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @CHAR_RBRACKET, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %79, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @GLOB_MAGCHAR, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @M_END, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  br label %156

122:                                              ; preds = %32
  %123 = load i32, i32* @GLOB_MAGCHAR, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @M_ONE, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %156

131:                                              ; preds = %32
  %132 = load i32, i32* @GLOB_MAGCHAR, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = icmp eq i32* %137, %19
  br i1 %138, label %145, label %139

139:                                              ; preds = %131
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 -1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @M_ALL, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139, %131
  %146 = load i32, i32* @M_ALL, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  br label %149

149:                                              ; preds = %145, %139
  br label %156

150:                                              ; preds = %32
  %151 = load i32, i32* %7, align 4
  %152 = call i8* @CHAR(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %10, align 8
  store i32 %153, i32* %154, align 4
  br label %156

156:                                              ; preds = %150, %149, %122, %113, %63
  br label %26

157:                                              ; preds = %26
  %158 = load i32, i32* @CHAR_EOS, align 4
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = call i32 @glob1(i32* %19, %struct.TYPE_6__* %160, i64* %13)
  store i32 %161, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %223

165:                                              ; preds = %157
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %165
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @GLOB_NOCHECK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %171
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @GLOB_NOMAGIC, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @GLOB_MAGCHAR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %185, %171
  %193 = load i32*, i32** %4, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = call i32 @globextend(i32* %193, %struct.TYPE_6__* %194, i64* %13)
  store i32 %195, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %223

196:                                              ; preds = %185, %178, %165
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @GLOB_NOSORT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %221, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %206, %209
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load i32, i32* @compare, align 4
  %220 = call i32 @qsort(i64 %213, i32 %218, i32 8, i32 %219)
  br label %221

221:                                              ; preds = %203, %196
  br label %222

222:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %223

223:                                              ; preds = %222, %192, %163
  %224 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @globtilde(i32*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32* @g_strchr(i32*, i32) #2

declare dso_local i8* @CHAR(i32) #2

declare dso_local i32 @glob1(i32*, %struct.TYPE_6__*, i64*) #2

declare dso_local i32 @globextend(i32*, %struct.TYPE_6__*, i64*) #2

declare dso_local i32 @qsort(i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
