; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_exprCodeBetween.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_exprCodeBetween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_32__, %struct.TYPE_34__*, %struct.TYPE_34__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, i32)* @exprCodeBetween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprCodeBetween(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i32 %2, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_34__, align 8
  %12 = alloca %struct.TYPE_34__, align 8
  %13 = alloca %struct.TYPE_34__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %3, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %15, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  store %struct.TYPE_35__* %19, %struct.TYPE_35__** %16, align 8
  %20 = call i32 @memset(%struct.TYPE_34__* %12, i32 0, i32 40)
  %21 = call i32 @memset(%struct.TYPE_34__* %13, i32 0, i32 40)
  %22 = call i32 @memset(%struct.TYPE_34__* %11, i32 0, i32 40)
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %24 = load i32, i32* @EP_xIsSelect, align 4
  %25 = call i32 @ExprHasProperty(%struct.TYPE_34__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %32, align 8
  %34 = call %struct.TYPE_34__* @sqlite3ExprDup(%struct.TYPE_35__* %30, %struct.TYPE_34__* %33, i32 0)
  store %struct.TYPE_34__* %34, %struct.TYPE_34__** %15, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %5
  %40 = load i32, i32* @TK_AND, align 4
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 3
  store %struct.TYPE_34__* %12, %struct.TYPE_34__** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  store %struct.TYPE_34__* %13, %struct.TYPE_34__** %43, align 8
  %44 = load i32, i32* @TK_GE, align 4
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 3
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %47, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 2
  store %struct.TYPE_34__* %56, %struct.TYPE_34__** %57, align 8
  %58 = load i32, i32* @TK_LE, align 4
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 3
  store %struct.TYPE_34__* %60, %struct.TYPE_34__** %61, align 8
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 2
  store %struct.TYPE_34__* %70, %struct.TYPE_34__** %71, align 8
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %75 = call i32 @exprCodeVector(%struct.TYPE_33__* %73, %struct.TYPE_34__* %74, i32* %14)
  %76 = call i32 @exprToRegister(%struct.TYPE_34__* %72, i32 %75)
  %77 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %78 = icmp ne void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %39
  %80 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  call void %80(%struct.TYPE_33__* %81, %struct.TYPE_34__* %11, i32 %82, i32 %83)
  br label %93

84:                                               ; preds = %39
  %85 = load i32, i32* @EP_FromJoin, align 4
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_33__* %90, %struct.TYPE_34__* %11, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_33__* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %5
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %100 = call i32 @sqlite3ExprDelete(%struct.TYPE_35__* %98, %struct.TYPE_34__* %99)
  %101 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %102 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %101, @sqlite3ExprIfTrue
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %107, 0
  br label %109

109:                                              ; preds = %106, %103, %97
  %110 = phi i1 [ false, %103 ], [ false, %97 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @testcase(i32 %111)
  %113 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %114 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %113, @sqlite3ExprIfTrue
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %118, %115, %109
  %122 = phi i1 [ false, %115 ], [ false, %109 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @testcase(i32 %123)
  %125 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %126 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %125, @sqlite3ExprIfTrue
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br label %133

133:                                              ; preds = %130, %127, %121
  %134 = phi i1 [ false, %127 ], [ false, %121 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @testcase(i32 %135)
  %137 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %138 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %137, @sqlite3ExprIfTrue
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %142, %139, %133
  %146 = phi i1 [ false, %139 ], [ false, %133 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @testcase(i32 %147)
  %149 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %150 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %149, @sqlite3ExprIfFalse
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %155, 0
  br label %157

157:                                              ; preds = %154, %151, %145
  %158 = phi i1 [ false, %151 ], [ false, %145 ], [ %156, %154 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @testcase(i32 %159)
  %161 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %162 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %161, @sqlite3ExprIfFalse
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %166, %163, %157
  %170 = phi i1 [ false, %163 ], [ false, %157 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @testcase(i32 %171)
  %173 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %174 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %173, @sqlite3ExprIfFalse
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = icmp eq i32 %179, 0
  br label %181

181:                                              ; preds = %178, %175, %169
  %182 = phi i1 [ false, %175 ], [ false, %169 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @testcase(i32 %183)
  %185 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %186 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %185, @sqlite3ExprIfFalse
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br label %193

193:                                              ; preds = %190, %187, %181
  %194 = phi i1 [ false, %187 ], [ false, %181 ], [ %192, %190 ]
  %195 = zext i1 %194 to i32
  %196 = call i32 @testcase(i32 %195)
  %197 = load void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)*, void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)** %9, align 8
  %198 = icmp eq void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32)* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 @testcase(i32 %199)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_34__* @sqlite3ExprDup(%struct.TYPE_35__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @exprToRegister(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @exprCodeVector(%struct.TYPE_33__*, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_33__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local void @sqlite3ExprIfTrue(%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32) #1

declare dso_local void @sqlite3ExprIfFalse(%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
