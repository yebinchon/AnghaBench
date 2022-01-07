; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_mailchk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_mailchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.varent = type { i32** }
%struct.stat = type { i64, i64, i64, i32 }

@STRmail = common dso_local global i32 0, align 4
@MAILINTVL = common dso_local global i32 0, align 4
@chktim = common dso_local global i64 0, align 8
@seconds0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s/new\00", align 1
@loginsh = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"You have %d mail messages.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"You have %d mail messages in %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"You have %smail.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"You have %smail in %s.\0A\00", align 1
@time0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mailchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mailchk() #0 {
  %1 = alloca %struct.varent*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i8*, align 8
  %15 = load i32, i32* @STRmail, align 4
  %16 = call %struct.varent* @adrof(i32 %15)
  store %struct.varent* %16, %struct.varent** %1, align 8
  %17 = load %struct.varent*, %struct.varent** %1, align 8
  %18 = icmp eq %struct.varent* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = load %struct.varent*, %struct.varent** %1, align 8
  %21 = getelementptr inbounds %struct.varent, %struct.varent* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = icmp eq i32** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %0
  br label %225

25:                                               ; preds = %19
  %26 = call i32 @time(i64* %3)
  %27 = load %struct.varent*, %struct.varent** %1, align 8
  %28 = getelementptr inbounds %struct.varent, %struct.varent* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  store i32** %29, i32*** %2, align 8
  %30 = load i32**, i32*** %2, align 8
  %31 = call i32 @blklen(i32** %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load i32**, i32*** %2, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @number(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load i32**, i32*** %2, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i32 1
  store i32** %43, i32*** %2, align 8
  %44 = load i32*, i32** %42, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = call i32 @getn(i32 %45)
  br label %49

47:                                               ; preds = %34, %25
  %48 = load i32, i32* @MAILINTVL, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi i32 [ %46, %39 ], [ %48, %47 ]
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i64, i64* @chktim, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i64, i64* %3, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %225

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %220, %62
  %64 = load i32**, i32*** %2, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %223

67:                                               ; preds = %63
  %68 = load i32**, i32*** %2, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @short2str(i32* %69)
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @stat(i8* %72, %struct.stat* %6)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %220

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @seconds0, align 8
  %80 = icmp sgt i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @S_ISDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %167

86:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @xasprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %87)
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @stat(i8* %89, %struct.stat* %13)
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @S_ISDIR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = bitcast %struct.stat* %6 to i8*
  %99 = bitcast %struct.stat* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 32, i1 false)
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @seconds0, align 8
  %103 = icmp sgt i64 %101, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %7, align 4
  %105 = load i8*, i8** %12, align 8
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %97, %92, %86
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @chktim, align 8
  %110 = add nsw i64 %109, 1
  %111 = icmp sle i64 %108, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* @loginsh, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115, %106
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @xfree(i8* %119)
  br label %220

121:                                              ; preds = %115, %112
  %122 = load i8*, i8** %9, align 8
  %123 = call i32* @opendir(i8* %122)
  store i32* %123, i32** %10, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @xfree(i8* %124)
  %126 = load i32*, i32** %10, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %220

129:                                              ; preds = %121
  %130 = load i32*, i32** %10, align 8
  %131 = call i64 @readdir(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %10, align 8
  %135 = call i64 @readdir(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133, %129
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @closedir(i32* %138)
  br label %220

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %145, %140
  %142 = load i32*, i32** %10, align 8
  %143 = call i64 @readdir(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %141

148:                                              ; preds = %141
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @closedir(i32* %149)
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %220

154:                                              ; preds = %148
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = call i8* @CGETS(i32 11, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* %11, align 4
  %160 = call i32 (i8*, ...) @xprintf(i8* %158, i32 %159)
  br label %166

161:                                              ; preds = %154
  %162 = call i8* @CGETS(i32 11, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* %11, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 (i8*, ...) @xprintf(i8* %162, i32 %163, i8* %164)
  br label %166

166:                                              ; preds = %161, %157
  br label %219

167:                                              ; preds = %76
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %193, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %173, %175
  br i1 %176, label %193, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @chktim, align 8
  %181 = icmp sle i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @chktim, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %182, %177
  %188 = load i64, i64* @loginsh, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190, %182, %171, %167
  br label %220

194:                                              ; preds = %190, %187
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i8* @CGETS(i32 11, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %200

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i8* [ %198, %197 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %199 ]
  %202 = call i8* @strsave(i8* %201)
  store i8* %202, i8** %14, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @cleanup_push(i8* %203, i32 (i8*)* @xfree)
  %205 = load i32, i32* %5, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = call i8* @CGETS(i32 11, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %209 = load i8*, i8** %14, align 8
  %210 = call i32 (i8*, ...) @xprintf(i8* %208, i8* %209)
  br label %216

211:                                              ; preds = %200
  %212 = call i8* @CGETS(i32 11, i32 7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = call i32 (i8*, ...) @xprintf(i8* %212, i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %211, %207
  %217 = load i8*, i8** %14, align 8
  %218 = call i32 @cleanup_until(i8* %217)
  br label %219

219:                                              ; preds = %216, %166
  br label %220

220:                                              ; preds = %219, %193, %153, %137, %128, %118, %75
  %221 = load i32**, i32*** %2, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i32 1
  store i32** %222, i32*** %2, align 8
  br label %63

223:                                              ; preds = %63
  %224 = load i64, i64* %3, align 8
  store i64 %224, i64* @chktim, align 8
  br label %225

225:                                              ; preds = %223, %61, %24
  ret void
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @blklen(i32**) #1

declare dso_local i64 @number(i32*) #1

declare dso_local i32 @getn(i32) #1

declare dso_local i8* @short2str(i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @xasprintf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @readdir(i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i8* @CGETS(i32, i32, i8*) #1

declare dso_local i8* @strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
