; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_impliesNotNullRow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_impliesNotNullRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@TK_AGG_COLUMN = common dso_local global i32 0, align 4
@TK_AGG_FUNCTION = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @impliesNotNullRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impliesNotNullRow(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TK_AGG_COLUMN, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @testcase(i32 %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TK_AGG_FUNCTION, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @testcase(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = load i32, i32* @EP_FromJoin, align 4
  %22 = call i64 @ExprHasProperty(%struct.TYPE_14__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @WRC_Prune, align 4
  store i32 %25, i32* %3, align 4
  br label %206

26:                                               ; preds = %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %204 [
    i32 135, label %30
    i32 134, label %30
    i32 130, label %30
    i32 136, label %30
    i32 129, label %30
    i32 143, label %30
    i32 137, label %30
    i32 140, label %30
    i32 128, label %30
    i32 142, label %86
    i32 145, label %101
    i32 144, label %126
    i32 141, label %133
    i32 131, label %133
    i32 132, label %133
    i32 133, label %133
    i32 138, label %133
    i32 139, label %133
  ]

30:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 135
  %35 = zext i1 %34 to i32
  %36 = call i32 @testcase(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 134
  %41 = zext i1 %40 to i32
  %42 = call i32 @testcase(i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 130
  %47 = zext i1 %46 to i32
  %48 = call i32 @testcase(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 136
  %53 = zext i1 %52 to i32
  %54 = call i32 @testcase(i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 129
  %59 = zext i1 %58 to i32
  %60 = call i32 @testcase(i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 143
  %65 = zext i1 %64 to i32
  %66 = call i32 @testcase(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 137
  %71 = zext i1 %70 to i32
  %72 = call i32 @testcase(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 140
  %77 = zext i1 %76 to i32
  %78 = call i32 @testcase(i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 128
  %83 = zext i1 %82 to i32
  %84 = call i32 @testcase(i32 %83)
  %85 = load i32, i32* @WRC_Prune, align 4
  store i32 %85, i32* %3, align 4
  br label %206

86:                                               ; preds = %26
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @WRC_Abort, align 4
  store i32 %98, i32* %3, align 4
  br label %206

99:                                               ; preds = %86
  %100 = load i32, i32* @WRC_Prune, align 4
  store i32 %100, i32* %3, align 4
  br label %206

101:                                              ; preds = %26
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sqlite3ExprImpliesNonNullRow(%struct.TYPE_15__* %104, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %101
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sqlite3ExprImpliesNonNullRow(%struct.TYPE_15__* %114, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %111, %101
  %125 = load i32, i32* @WRC_Prune, align 4
  store i32 %125, i32* %3, align 4
  br label %206

126:                                              ; preds = %26
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = call i32 @sqlite3WalkExpr(%struct.TYPE_13__* %127, %struct.TYPE_15__* %130)
  %132 = load i32, i32* @WRC_Prune, align 4
  store i32 %132, i32* %3, align 4
  br label %206

133:                                              ; preds = %26, %26, %26, %26, %26, %26
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 141
  %138 = zext i1 %137 to i32
  %139 = call i32 @testcase(i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 131
  %144 = zext i1 %143 to i32
  %145 = call i32 @testcase(i32 %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 132
  %150 = zext i1 %149 to i32
  %151 = call i32 @testcase(i32 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 133
  %156 = zext i1 %155 to i32
  %157 = call i32 @testcase(i32 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 138
  %162 = zext i1 %161 to i32
  %163 = call i32 @testcase(i32 %162)
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 139
  %168 = zext i1 %167 to i32
  %169 = call i32 @testcase(i32 %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 142
  br i1 %175, label %176, label %185

176:                                              ; preds = %133
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @IsVirtual(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %176, %133
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 142
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @IsVirtual(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192, %176
  %202 = load i32, i32* @WRC_Prune, align 4
  store i32 %202, i32* %3, align 4
  br label %206

203:                                              ; preds = %192, %185
  br label %204

204:                                              ; preds = %26, %203
  %205 = load i32, i32* @WRC_Continue, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %201, %126, %124, %99, %95, %30, %24
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3ExprImpliesNonNullRow(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3WalkExpr(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @IsVirtual(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
