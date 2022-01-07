; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqliteProcessJoin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqliteProcessJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, %struct.TYPE_18__*, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@JT_OUTER = common dso_local global i32 0, align 4
@JT_NATURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"a NATURAL join may not have an ON or USING clause\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cannot have both ON and USING clauses in the same join\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"cannot join using column %s - column not present in both tables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*)* @sqliteProcessJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliteProcessJoin(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.SrcList_item*, %struct.SrcList_item** %25, align 8
  %27 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %26, i64 0
  store %struct.SrcList_item* %27, %struct.SrcList_item** %9, align 8
  %28 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %29 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %28, i64 1
  store %struct.SrcList_item* %29, %struct.SrcList_item** %10, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %222, %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %229

37:                                               ; preds = %30
  %38 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %39 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %11, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = icmp eq %struct.TYPE_15__* %47, null
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i1 [ true, %37 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @NEVER(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %222

55:                                               ; preds = %49
  %56 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %57 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @JT_OUTER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %65 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @JT_NATURAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %55
  %72 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %73 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %78 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = icmp ne %struct.TYPE_18__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %71
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @sqlite3ErrorMsg(i32* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* %3, align 4
  br label %230

84:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %119, %84
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %13, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @tableAndColumnIndex(%struct.TYPE_16__* %100, i32 %102, i8* %103, i32* %14, i32* %15)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %91
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = call i32 @addWhereTerm(i32* %107, %struct.TYPE_16__* %108, i32 %109, i32 %110, i32 %112, i32 %113, i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %106, %91
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %85

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122, %55
  %124 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %125 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %130 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = icmp ne %struct.TYPE_18__* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 (i32*, i8*, ...) @sqlite3ErrorMsg(i32* %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %230

136:                                              ; preds = %128, %123
  %137 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %138 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %146 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %149 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @setJoinExpr(i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %144, %141
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %158 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @sqlite3ExprAnd(i32* %153, i32 %156, i64 %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %164 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %163, i32 0, i32 2
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %152, %136
  %166 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %167 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %166, i32 0, i32 1
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = icmp ne %struct.TYPE_18__* %168, null
  br i1 %169, label %170, label %221

170:                                              ; preds = %165
  %171 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %172 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %171, i32 0, i32 1
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %16, align 8
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %217, %170
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %220

180:                                              ; preds = %174
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %17, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @columnIndex(%struct.TYPE_15__* %189, i8* %190)
  store i32 %191, i32* %20, align 4
  %192 = load i32, i32* %20, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %180
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  %198 = load i8*, i8** %17, align 8
  %199 = call i64 @tableAndColumnIndex(%struct.TYPE_16__* %195, i32 %197, i8* %198, i32* %18, i32* %19)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %194, %180
  %202 = load i32*, i32** %4, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call i32 (i32*, i8*, ...) @sqlite3ErrorMsg(i32* %202, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %203)
  store i32 1, i32* %3, align 4
  br label %230

205:                                              ; preds = %194
  %206 = load i32*, i32** %4, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = call i32 @addWhereTerm(i32* %206, %struct.TYPE_16__* %207, i32 %208, i32 %209, i32 %211, i32 %212, i32 %213, i32* %215)
  br label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %174

220:                                              ; preds = %174
  br label %221

221:                                              ; preds = %220, %165
  br label %222

222:                                              ; preds = %221, %54
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  %225 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %226 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %225, i32 1
  store %struct.SrcList_item* %226, %struct.SrcList_item** %10, align 8
  %227 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %228 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %227, i32 1
  store %struct.SrcList_item* %228, %struct.SrcList_item** %9, align 8
  br label %30

229:                                              ; preds = %30
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %201, %133, %81
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*, ...) #1

declare dso_local i64 @tableAndColumnIndex(%struct.TYPE_16__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @addWhereTerm(i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @setJoinExpr(i64, i32) #1

declare dso_local i32 @sqlite3ExprAnd(i32*, i32, i64) #1

declare dso_local i32 @columnIndex(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
