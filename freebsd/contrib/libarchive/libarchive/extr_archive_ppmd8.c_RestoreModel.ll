; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_RestoreModel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_RestoreModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32*, i32, i32, i32, i64, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i32 }

@PPMD8_RESTORE_METHOD_RESTART = common dso_local global i64 0, align 8
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*)* @RestoreModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RestoreModel(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = call i32 @RESET_TEXT(i32 0)
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %5, align 8
  br label %11

11:                                               ; preds = %71, %2
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = icmp ne %struct.TYPE_23__* %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = call %struct.TYPE_24__* @STATS(%struct.TYPE_23__* %22)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 16
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 64
  %32 = zext i1 %31 to i32
  %33 = mul nsw i32 8, %32
  %34 = add nsw i32 %27, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %40)
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = bitcast %struct.TYPE_24__* %41 to i8*
  %44 = bitcast %struct.TYPE_24__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = call i32 @SpecialFreeUnit(%struct.TYPE_25__* %45, %struct.TYPE_24__* %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %48)
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 11
  %53 = lshr i32 %52, 3
  %54 = zext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %57)
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  br label %70

60:                                               ; preds = %15
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 3
  %67 = ashr i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @Refresh(%struct.TYPE_25__* %61, %struct.TYPE_23__* %62, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %60, %21
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = call i8* @SUFFIX(%struct.TYPE_23__* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %5, align 8
  br label %11

75:                                               ; preds = %11
  br label %76

76:                                               ; preds = %128, %75
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = icmp ne %struct.TYPE_23__* %77, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %76
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %88)
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %92)
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 %91, %96
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %101)
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  br label %127

104:                                              ; preds = %82
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %106, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 4, %112
  %114 = add nsw i64 128, %113
  %115 = icmp sgt i64 %109, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %104
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 2
  %123 = ashr i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = call i32 @Refresh(%struct.TYPE_25__* %117, %struct.TYPE_23__* %118, i32 %124, i32 1)
  br label %126

126:                                              ; preds = %116, %104
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = call i8* @SUFFIX(%struct.TYPE_23__* %129)
  %131 = bitcast i8* %130 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %131, %struct.TYPE_23__** %5, align 8
  br label %76

132:                                              ; preds = %76
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PPMD8_RESTORE_METHOD_RESTART, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = call i32 @GetUsedMemory(%struct.TYPE_25__* %139)
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %143, 1
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %138, %132
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %148 = call i32 @RestartModel(%struct.TYPE_25__* %147)
  br label %191

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %157, %149
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = call i8* @SUFFIX(%struct.TYPE_23__* %160)
  %162 = bitcast i8* %161 to %struct.TYPE_23__*
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 6
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %164, align 8
  br label %150

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %174, %165
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = call i32 @CutOff(%struct.TYPE_25__* %167, %struct.TYPE_23__* %170, i32 0)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = call i32 @ExpandTextArea(%struct.TYPE_25__* %172)
  br label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %176 = call i32 @GetUsedMemory(%struct.TYPE_25__* %175)
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = ashr i32 %179, 2
  %181 = mul nsw i32 3, %180
  %182 = icmp sgt i32 %176, %181
  br i1 %182, label %166, label %183

183:                                              ; preds = %174
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 5
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %183, %146
  ret void
}

declare dso_local i32 @RESET_TEXT(i32) #1

declare dso_local %struct.TYPE_24__* @STATS(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpecialFreeUnit(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @Refresh(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i8* @SUFFIX(%struct.TYPE_23__*) #1

declare dso_local i32 @GetUsedMemory(%struct.TYPE_25__*) #1

declare dso_local i32 @RestartModel(%struct.TYPE_25__*) #1

declare dso_local i32 @CutOff(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ExpandTextArea(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
