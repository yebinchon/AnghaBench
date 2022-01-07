; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_create_initial_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_create_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32* }

@REG_NOERROR = common dso_local global i64 0, align 8
@OP_BACK_REF = common dso_local global i64 0, align 8
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@CONTEXT_WORD = common dso_local global i32 0, align 4
@CONTEXT_NEWLINE = common dso_local global i32 0, align 4
@CONTEXT_BEGBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*)* @create_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_initial_state(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i64 @re_node_set_init_copy(%struct.TYPE_22__* %7, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @REG_NOERROR, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @BE(i32 %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %2, align 8
  br label %234

39:                                               ; preds = %1
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %156

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %152, %44
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %155

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @OP_BACK_REF, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %152

69:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %109, %69
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %70
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i64 %85
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** %11, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %75
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %96, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %112

108:                                              ; preds = %92, %75
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %70

112:                                              ; preds = %107, %70
  %113 = load i32, i32* %10, align 4
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %152

118:                                              ; preds = %112
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @OP_BACK_REF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @re_node_set_contains(%struct.TYPE_22__* %7, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %122
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = call i64 @re_node_set_merge(%struct.TYPE_22__* %7, i64 %142)
  store i64 %143, i64* %13, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* @REG_NOERROR, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i64, i64* %13, align 8
  store i64 %148, i64* %2, align 8
  br label %234

149:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %122
  br label %151

151:                                              ; preds = %150, %118
  br label %152

152:                                              ; preds = %151, %117, %68
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %45

155:                                              ; preds = %45
  br label %156

156:                                              ; preds = %155, %39
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %158 = call i8* @re_acquire_state_context(i64* %6, %struct.TYPE_23__* %157, %struct.TYPE_22__* %7, i32 0)
  %159 = bitcast i8* %158 to %struct.TYPE_20__*
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  store %struct.TYPE_20__* %159, %struct.TYPE_20__** %161, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = icmp eq %struct.TYPE_20__* %164, null
  %166 = zext i1 %165 to i32
  %167 = call i64 @BE(i32 %166, i32 0)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %156
  %170 = load i64, i64* %6, align 8
  store i64 %170, i64* %2, align 8
  br label %234

171:                                              ; preds = %156
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %221

178:                                              ; preds = %171
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = load i32, i32* @CONTEXT_WORD, align 4
  %181 = call i8* @re_acquire_state_context(i64* %6, %struct.TYPE_23__* %179, %struct.TYPE_22__* %7, i32 %180)
  %182 = bitcast i8* %181 to %struct.TYPE_20__*
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 5
  store %struct.TYPE_20__* %182, %struct.TYPE_20__** %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %186 = load i32, i32* @CONTEXT_NEWLINE, align 4
  %187 = call i8* @re_acquire_state_context(i64* %6, %struct.TYPE_23__* %185, %struct.TYPE_22__* %7, i32 %186)
  %188 = bitcast i8* %187 to %struct.TYPE_20__*
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 4
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %190, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %192 = load i32, i32* @CONTEXT_NEWLINE, align 4
  %193 = load i32, i32* @CONTEXT_BEGBUF, align 4
  %194 = or i32 %192, %193
  %195 = call i8* @re_acquire_state_context(i64* %6, %struct.TYPE_23__* %191, %struct.TYPE_22__* %7, i32 %194)
  %196 = bitcast i8* %195 to %struct.TYPE_20__*
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 3
  store %struct.TYPE_20__* %196, %struct.TYPE_20__** %198, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = icmp eq %struct.TYPE_20__* %201, null
  br i1 %202, label %213, label %203

203:                                              ; preds = %178
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = icmp eq %struct.TYPE_20__* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  %212 = icmp eq %struct.TYPE_20__* %211, null
  br label %213

213:                                              ; preds = %208, %203, %178
  %214 = phi i1 [ true, %203 ], [ true, %178 ], [ %212, %208 ]
  %215 = zext i1 %214 to i32
  %216 = call i64 @BE(i32 %215, i32 0)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i64, i64* %6, align 8
  store i64 %219, i64* %2, align 8
  br label %234

220:                                              ; preds = %213
  br label %231

221:                                              ; preds = %171
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 3
  store %struct.TYPE_20__* %224, %struct.TYPE_20__** %226, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 4
  store %struct.TYPE_20__* %224, %struct.TYPE_20__** %228, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 5
  store %struct.TYPE_20__* %224, %struct.TYPE_20__** %230, align 8
  br label %231

231:                                              ; preds = %221, %220
  %232 = call i32 @re_node_set_free(%struct.TYPE_22__* %7)
  %233 = load i64, i64* @REG_NOERROR, align 8
  store i64 %233, i64* %2, align 8
  br label %234

234:                                              ; preds = %231, %218, %169, %147, %37
  %235 = load i64, i64* %2, align 8
  ret i64 %235
}

declare dso_local i64 @re_node_set_init_copy(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @re_node_set_contains(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @re_node_set_merge(%struct.TYPE_22__*, i64) #1

declare dso_local i8* @re_acquire_state_context(i64*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @re_node_set_free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
