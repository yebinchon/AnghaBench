; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertBestIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, double, %struct.TYPE_18__*, %struct.TYPE_15__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*)* @expertBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expertBestIndex(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sqlite3_index_constraint*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %5, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %20 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = call %struct.TYPE_20__* @idxMalloc(i32* %6, i32 40)
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %8, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %215

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 4
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %48, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %143, %31
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %146

55:                                               ; preds = %49
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 5
  %58 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %58, i64 %60
  store %struct.sqlite3_index_constraint* %61, %struct.sqlite3_index_constraint** %11, align 8
  %62 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %63 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %142

66:                                               ; preds = %55
  %67 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %68 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %69, 0
  br i1 %70, label %71, label %142

71:                                               ; preds = %66
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %78 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %142

84:                                               ; preds = %71
  %85 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %86 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %142

91:                                               ; preds = %84
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i8* @sqlite3_vtab_collation(%struct.TYPE_19__* %92, i32 %93)
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = call %struct.TYPE_21__* @idxNewConstraint(i32* %6, i8* %95)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %12, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %99, label %131

99:                                               ; preds = %91
  %100 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %101 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %106 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %118, align 8
  br label %130

119:                                              ; preds = %99
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %126, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %129, align 8
  br label %130

130:                                              ; preds = %119, %110
  br label %131

131:                                              ; preds = %130, %91
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i32 %134, i32* %141, align 4
  br label %142

142:                                              ; preds = %131, %84, %71, %66, %55
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %49

146:                                              ; preds = %49
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %211, %146
  %152 = load i32, i32* %10, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %214

154:                                              ; preds = %151
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %210

165:                                              ; preds = %154
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call %struct.TYPE_21__* @idxNewConstraint(i32* %6, i8* %175)
  store %struct.TYPE_21__* %176, %struct.TYPE_21__** %15, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %178 = icmp ne %struct.TYPE_21__* %177, null
  br i1 %178, label %179, label %209

179:                                              ; preds = %165
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  store %struct.TYPE_21__* %196, %struct.TYPE_21__** %198, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  store %struct.TYPE_21__* %201, %struct.TYPE_21__** %203, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %206, align 8
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %179, %165
  br label %210

210:                                              ; preds = %209, %154
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %10, align 4
  br label %151

214:                                              ; preds = %151
  br label %215

215:                                              ; preds = %214, %2
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  %218 = sitofp i32 %217 to double
  %219 = fdiv double 1.000000e+06, %218
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  store double %219, double* %221, align 8
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_20__* @idxMalloc(i32*, i32) #1

declare dso_local i8* @sqlite3_vtab_collation(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @idxNewConstraint(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
