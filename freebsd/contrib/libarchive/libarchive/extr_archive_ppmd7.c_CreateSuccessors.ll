; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd7.c_CreateSuccessors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd7.c_CreateSuccessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i64, i64*, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32 }

@PPMD7_MAX_ORDER = common dso_local global i32 0, align 4
@UNIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_21__*, i32)* @CreateSuccessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @CreateSuccessors(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = call i64 @SUCCESSOR(%struct.TYPE_20__* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* @PPMD7_MAX_ORDER, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca %struct.TYPE_20__*, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %29, i64 %38
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %39, align 8
  br label %40

40:                                               ; preds = %32, %2
  br label %41

41:                                               ; preds = %88, %40
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = call %struct.TYPE_19__* @SUFFIX(%struct.TYPE_19__* %47)
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %7, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = call %struct.TYPE_20__* @STATS(%struct.TYPE_19__* %54)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %13, align 8
  br label %56

56:                                               ; preds = %67, %53
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 1
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %13, align 8
  br label %56

70:                                               ; preds = %56
  br label %74

71:                                               ; preds = %46
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = call %struct.TYPE_20__* @ONE_STATE(%struct.TYPE_19__* %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %13, align 8
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %76 = call i64 @SUCCESSOR(%struct.TYPE_20__* %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = call %struct.TYPE_19__* @CTX(i64 %81)
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %228

87:                                               ; preds = %80
  br label %94

88:                                               ; preds = %74
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %29, i64 %92
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %93, align 8
  br label %41

94:                                               ; preds = %87, %41
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @Ppmd7_GetPtr(%struct.TYPE_21__* %95, i64 %96)
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @SetSuccessor(%struct.TYPE_20__* %6, i64 %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %115

109:                                              ; preds = %94
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = call %struct.TYPE_20__* @ONE_STATE(%struct.TYPE_19__* %110)
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %113, i32* %114, align 8
  br label %167

115:                                              ; preds = %94
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = call %struct.TYPE_20__* @STATS(%struct.TYPE_19__* %116)
  store %struct.TYPE_20__* %117, %struct.TYPE_20__** %17, align 8
  br label %118

118:                                              ; preds = %126, %115
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 1
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %17, align 8
  br label %118

129:                                              ; preds = %118
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = load i32, i32* %15, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = mul nsw i32 2, %143
  %145 = load i32, i32* %16, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %129
  %148 = load i32, i32* %15, align 4
  %149 = mul nsw i32 5, %148
  %150 = load i32, i32* %16, align 4
  %151 = icmp sgt i32 %149, %150
  %152 = zext i1 %151 to i32
  br label %163

153:                                              ; preds = %129
  %154 = load i32, i32* %15, align 4
  %155 = mul nsw i32 2, %154
  %156 = load i32, i32* %16, align 4
  %157 = mul nsw i32 3, %156
  %158 = add nsw i32 %155, %157
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 2, %160
  %162 = sdiv i32 %159, %161
  br label %163

163:                                              ; preds = %153, %147
  %164 = phi i32 [ %152, %147 ], [ %162, %153 ]
  %165 = add nsw i32 1, %164
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %165, i32* %166, align 8
  br label %167

167:                                              ; preds = %163, %109
  br label %168

168:                                              ; preds = %206, %167
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %226

171:                                              ; preds = %168
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %171
  %180 = load i64, i64* @UNIT_SIZE, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = inttoptr i64 %184 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %185, %struct.TYPE_19__** %18, align 8
  br label %206

186:                                              ; preds = %171
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %195 = call i64 @RemoveNode(%struct.TYPE_21__* %194, i32 0)
  %196 = inttoptr i64 %195 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %196, %struct.TYPE_19__** %18, align 8
  br label %205

197:                                              ; preds = %186
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %199 = call i64 @AllocUnitsRare(%struct.TYPE_21__* %198, i32 0)
  %200 = inttoptr i64 %199 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %200, %struct.TYPE_19__** %18, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %202 = icmp ne %struct.TYPE_19__* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %228

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %193
  br label %206

206:                                              ; preds = %205, %179
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %210 = call %struct.TYPE_20__* @ONE_STATE(%struct.TYPE_19__* %209)
  %211 = bitcast %struct.TYPE_20__* %210 to i8*
  %212 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 16, i1 false)
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %214 = call i64 @REF(%struct.TYPE_19__* %213)
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %217, -1
  store i32 %218, i32* %11, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %29, i64 %219
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %223 = call i64 @REF(%struct.TYPE_19__* %222)
  %224 = call i32 @SetSuccessor(%struct.TYPE_20__* %221, i64 %223)
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %225, %struct.TYPE_19__** %7, align 8
  br label %168

226:                                              ; preds = %168
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %227, %struct.TYPE_19__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %228

228:                                              ; preds = %226, %203, %85
  %229 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %230
}

declare dso_local i64 @SUCCESSOR(%struct.TYPE_20__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_19__* @SUFFIX(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @STATS(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @ONE_STATE(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @CTX(i64) #1

declare dso_local i64 @Ppmd7_GetPtr(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @RemoveNode(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @AllocUnitsRare(%struct.TYPE_21__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @REF(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
