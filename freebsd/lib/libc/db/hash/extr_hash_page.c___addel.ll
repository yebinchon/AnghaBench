; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___addel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___addel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@REAL_KEY = common dso_local global i64 0, align 8
@FULL_KEY_DATA = common dso_local global i64 0, align 8
@OVFLPAGE = common dso_local global i64 0, align 8
@BUF_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__addel(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %10, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %137, %4
  %18 = load i64*, i64** %10, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i64*, i64** %10, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REAL_KEY, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load i64*, i64** %10, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REAL_KEY, align 8
  %36 = icmp ult i64 %34, %35
  br label %37

37:                                               ; preds = %28, %22
  %38 = phi i1 [ true, %22 ], [ %36, %28 ]
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i1 [ false, %17 ], [ %38, %37 ]
  br i1 %40, label %41, label %138

41:                                               ; preds = %39
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FULL_KEY_DATA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64*, i64** %10, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %138

53:                                               ; preds = %47, %41
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REAL_KEY, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load i64*, i64** %10, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OVFLPAGE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i64, i64* %70, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = call %struct.TYPE_15__* @__get_buf(%struct.TYPE_14__* %69, i64 %76, %struct.TYPE_15__* %77, i32 0)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %7, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = icmp ne %struct.TYPE_15__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %214

82:                                               ; preds = %68
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to i64*
  store i64* %86, i64** %10, align 8
  br label %136

87:                                               ; preds = %59, %53
  %88 = load i64*, i64** %10, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @OVFLPAGE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %138

97:                                               ; preds = %87
  %98 = load i64*, i64** %10, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REAL_KEY, align 8
  %102 = icmp uge i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i64*, i64** %10, align 8
  %105 = call i64 @FREESPACE(i64* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i64 @PAIRSIZE(i32* %106, i32* %107)
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i64*, i64** %10, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @squeeze_key(i64* %111, i32* %112, i32* %113)
  br label %185

115:                                              ; preds = %103, %97
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, 1
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = call %struct.TYPE_15__* @__get_buf(%struct.TYPE_14__* %116, i64 %123, %struct.TYPE_15__* %124, i32 0)
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %7, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = icmp ne %struct.TYPE_15__* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  store i32 -1, i32* %5, align 4
  br label %214

129:                                              ; preds = %115
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast i8* %132 to i64*
  store i64* %133, i64** %10, align 8
  br label %134

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %82
  br label %137

137:                                              ; preds = %136
  br label %17

138:                                              ; preds = %96, %52, %39
  %139 = load i64*, i64** %10, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @PAIRFITS(i64* %139, i32* %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @putpair(i8* %147, i32* %148, i32* %149)
  br label %184

151:                                              ; preds = %138
  store i32 1, i32* %12, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = call %struct.TYPE_15__* @__add_ovflpage(%struct.TYPE_14__* %152, %struct.TYPE_15__* %153)
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %7, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = icmp ne %struct.TYPE_15__* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  store i32 -1, i32* %5, align 4
  br label %214

158:                                              ; preds = %151
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = bitcast i8* %161 to i64*
  store i64* %162, i64** %11, align 8
  %163 = load i64*, i64** %11, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i64 @PAIRFITS(i64* %163, i32* %164, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %158
  %169 = load i64*, i64** %11, align 8
  %170 = bitcast i64* %169 to i8*
  %171 = load i32*, i32** %8, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @putpair(i8* %170, i32* %171, i32* %172)
  br label %183

174:                                              ; preds = %158
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = call i64 @__big_insert(%struct.TYPE_14__* %175, %struct.TYPE_15__* %176, i32* %177, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  store i32 -1, i32* %5, align 4
  br label %214

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %168
  br label %184

184:                                              ; preds = %183, %144
  br label %185

185:                                              ; preds = %184, %110
  %186 = load i32, i32* @BUF_MOD, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %185
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  %205 = sdiv i32 %200, %204
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %197, %185
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = call i32 @__expand_table(%struct.TYPE_14__* %211)
  store i32 %212, i32* %5, align 4
  br label %214

213:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %210, %181, %157, %128, %81
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_15__* @__get_buf(%struct.TYPE_14__*, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @FREESPACE(i64*) #1

declare dso_local i64 @PAIRSIZE(i32*, i32*) #1

declare dso_local i32 @squeeze_key(i64*, i32*, i32*) #1

declare dso_local i64 @PAIRFITS(i64*, i32*, i32*) #1

declare dso_local i32 @putpair(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @__add_ovflpage(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @__big_insert(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @__expand_table(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
