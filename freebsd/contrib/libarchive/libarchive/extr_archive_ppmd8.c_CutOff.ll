; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_CutOff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_CutOff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8**, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_25__*, i32)* @CutOff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CutOff(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = call %struct.TYPE_26__* @ONE_STATE(%struct.TYPE_25__* %17)
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %10, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %21 = call i64 @SUCCESSOR(%struct.TYPE_26__* %20)
  %22 = call i64 @Ppmd8_GetPtr(%struct.TYPE_27__* %19, i64 %21)
  %23 = inttoptr i64 %22 to i8**
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp uge i8** %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = call i64 @SUCCESSOR(%struct.TYPE_26__* %37)
  %39 = call %struct.TYPE_25__* @CTX(i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  %42 = call i32 @CutOff(%struct.TYPE_27__* %36, %struct.TYPE_25__* %39, i32 %41)
  %43 = call i32 @SetSuccessor(%struct.TYPE_26__* %35, i32 %42)
  br label %47

44:                                               ; preds = %28
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %46 = call i32 @SetSuccessor(%struct.TYPE_26__* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %49 = call i64 @SUCCESSOR(%struct.TYPE_26__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp ule i32 %52, 9
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %47
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = call i32 @REF(%struct.TYPE_25__* %55)
  store i32 %56, i32* %4, align 4
  br label %218

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %61 = call i32 @SpecialFreeUnit(%struct.TYPE_27__* %59, %struct.TYPE_25__* %60)
  store i32 0, i32* %4, align 4
  br label %218

62:                                               ; preds = %3
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = call %struct.TYPE_26__* @STATS(%struct.TYPE_25__* %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, 2
  %70 = lshr i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = call i32 @MoveUnitsUp(%struct.TYPE_27__* %63, %struct.TYPE_26__* %65, i32 %70)
  %72 = call i32 @STATS_REF(i32 %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %76 = call %struct.TYPE_26__* @STATS(%struct.TYPE_25__* %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i64 %80
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %10, align 8
  br label %82

82:                                               ; preds = %130, %62
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = call %struct.TYPE_26__* @STATS(%struct.TYPE_25__* %84)
  %86 = icmp uge %struct.TYPE_26__* %83, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %82
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = call i64 @SUCCESSOR(%struct.TYPE_26__* %89)
  %91 = call i64 @Ppmd8_GetPtr(%struct.TYPE_27__* %88, i64 %90)
  %92 = inttoptr i64 %91 to i8**
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = icmp ult i8** %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %87
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = call %struct.TYPE_26__* @STATS(%struct.TYPE_25__* %98)
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i64 %102
  store %struct.TYPE_26__* %103, %struct.TYPE_26__** %11, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %105 = call i32 @SetSuccessor(%struct.TYPE_26__* %104, i32 0)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %108 = call i32 @SwapStates(%struct.TYPE_26__* %106, %struct.TYPE_26__* %107)
  br label %129

109:                                              ; preds = %87
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %119 = call i64 @SUCCESSOR(%struct.TYPE_26__* %118)
  %120 = call %struct.TYPE_25__* @CTX(i64 %119)
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  %123 = call i32 @CutOff(%struct.TYPE_27__* %117, %struct.TYPE_25__* %120, i32 %122)
  %124 = call i32 @SetSuccessor(%struct.TYPE_26__* %116, i32 %123)
  br label %128

125:                                              ; preds = %109
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %127 = call i32 @SetSuccessor(%struct.TYPE_26__* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 -1
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %10, align 8
  br label %82

133:                                              ; preds = %82
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %215

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %215

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = call %struct.TYPE_26__* @STATS(%struct.TYPE_25__* %149)
  store %struct.TYPE_26__* %150, %struct.TYPE_26__** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %142
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @FreeUnits(%struct.TYPE_27__* %154, %struct.TYPE_26__* %155, i32 %156)
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = call i32 @SpecialFreeUnit(%struct.TYPE_27__* %158, %struct.TYPE_25__* %159)
  store i32 0, i32* %4, align 4
  br label %218

161:                                              ; preds = %142
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %202

164:                                              ; preds = %161
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 16
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %171, 64
  %173 = zext i1 %172 to i32
  %174 = mul nsw i32 8, %173
  %175 = add nsw i32 %168, %174
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %182 = call %struct.TYPE_26__* @ONE_STATE(%struct.TYPE_25__* %181)
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %184 = bitcast %struct.TYPE_26__* %182 to i8*
  %185 = bitcast %struct.TYPE_26__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 16, i1 false)
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @FreeUnits(%struct.TYPE_27__* %186, %struct.TYPE_26__* %187, i32 %188)
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %191 = call %struct.TYPE_26__* @ONE_STATE(%struct.TYPE_25__* %190)
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = add i32 %194, 11
  %196 = lshr i32 %195, 3
  %197 = zext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %200 = call %struct.TYPE_26__* @ONE_STATE(%struct.TYPE_25__* %199)
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  store i8* %198, i8** %201, align 8
  br label %214

202:                                              ; preds = %161
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %8, align 4
  %210 = mul nsw i32 16, %209
  %211 = icmp sgt i32 %208, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @Refresh(%struct.TYPE_27__* %203, %struct.TYPE_25__* %204, i32 %205, i32 %212)
  br label %214

214:                                              ; preds = %202, %164
  br label %215

215:                                              ; preds = %214, %139, %133
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %217 = call i32 @REF(%struct.TYPE_25__* %216)
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %215, %153, %58, %54
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_26__* @ONE_STATE(%struct.TYPE_25__*) #1

declare dso_local i64 @Ppmd8_GetPtr(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @SUCCESSOR(%struct.TYPE_26__*) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_25__* @CTX(i64) #1

declare dso_local i32 @REF(%struct.TYPE_25__*) #1

declare dso_local i32 @SpecialFreeUnit(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @STATS_REF(i32) #1

declare dso_local i32 @MoveUnitsUp(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_26__* @STATS(%struct.TYPE_25__*) #1

declare dso_local i32 @SwapStates(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @FreeUnits(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Refresh(%struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
