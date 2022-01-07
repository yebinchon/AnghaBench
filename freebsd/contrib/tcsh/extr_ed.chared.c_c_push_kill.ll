; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_push_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_push_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@KillRingLen = common dso_local global i32 0, align 4
@STRkilldup = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@KillPos = common dso_local global i32 0, align 4
@YankPos = common dso_local global i32 0, align 4
@STRerase = common dso_local global i32 0, align 4
@KillRing = common dso_local global %struct.TYPE_3__* null, align 8
@STRall = common dso_local global i32 0, align 4
@STRprev = common dso_local global i32 0, align 4
@KillRingMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @c_push_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_push_kill(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @KillRingLen, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %193

22:                                               ; preds = %2
  %23 = load i32, i32* @STRkilldup, align 4
  %24 = call i8* @varval(i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** @STRNULL, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %193

27:                                               ; preds = %22
  %28 = load i32, i32* @KillPos, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @KillRingLen, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @KillRingLen, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* @YankPos, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @STRerase, align 4
  %36 = call i64 @eq(i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %27
  %39 = load i32, i32* @YankPos, align 4
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %112, %38
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @KillRingLen, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %115

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = call i64 @Strncmp(i8* %50, i8* %51, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %44
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = bitcast %struct.TYPE_3__* %5 to i8*
  %75 = bitcast %struct.TYPE_3__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %95, %69
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @KillRingLen, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %12, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = bitcast %struct.TYPE_3__* %88 to i8*
  %94 = bitcast %struct.TYPE_3__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = bitcast %struct.TYPE_3__* %102 to i8*
  %104 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  br label %248

105:                                              ; preds = %56, %44
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* @KillRingLen, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @KillRingLen, align 4
  %111 = srem i32 %109, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %40

115:                                              ; preds = %40
  br label %192

116:                                              ; preds = %27
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* @STRall, align 4
  %119 = call i64 @eq(i8* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %153, %121
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @KillRingLen, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = call i64 @Strncmp(i8* %132, i8* %133, i64 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %126
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %248

152:                                              ; preds = %138, %126
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %122

156:                                              ; preds = %122
  br label %191

157:                                              ; preds = %116
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* @STRprev, align 4
  %160 = call i64 @eq(i8* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %157
  %163 = load i32, i32* @YankPos, align 4
  store i32 %163, i32* %12, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = call i64 @Strncmp(i8* %169, i8* %170, i64 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %162
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %248

189:                                              ; preds = %175, %162
  br label %190

190:                                              ; preds = %189, %157
  br label %191

191:                                              ; preds = %190, %156
  br label %192

192:                                              ; preds = %191, %115
  br label %193

193:                                              ; preds = %192, %22, %2
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* @KillPos, align 4
  store i32 %196, i32* @YankPos, align 4
  %197 = load i32, i32* @KillRingLen, align 4
  %198 = load i32, i32* @KillRingMax, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* @KillRingLen, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @KillRingLen, align 4
  br label %203

203:                                              ; preds = %200, %193
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KillRing, align 8
  %205 = load i32, i32* @KillPos, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  store %struct.TYPE_3__* %207, %struct.TYPE_3__** %6, align 8
  %208 = load i32, i32* @KillPos, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* @KillRingMax, align 4
  %211 = srem i32 %209, %210
  store i32 %211, i32* @KillPos, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %203
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = call i8* @xrealloc(i8* %220, i32 %224)
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %217, %203
  %232 = load i8*, i8** %3, align 8
  store i8* %232, i8** %8, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %9, align 8
  br label %236

236:                                              ; preds = %240, %231
  %237 = load i8*, i8** %8, align 8
  %238 = load i8*, i8** %4, align 8
  %239 = icmp ult i8* %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %8, align 8
  %243 = load i8, i8* %241, align 1
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %9, align 8
  store i8 %243, i8* %244, align 1
  br label %236

246:                                              ; preds = %236
  %247 = load i8*, i8** %9, align 8
  store i8 0, i8* %247, align 1
  br label %248

248:                                              ; preds = %246, %188, %151, %98
  ret void
}

declare dso_local i8* @varval(i32) #1

declare dso_local i64 @eq(i8*, i32) #1

declare dso_local i64 @Strncmp(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
