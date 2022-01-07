; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_resolve_ca_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_resolve_ca_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"checking ca '%s'\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"InfiniBand\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"checking port %d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"found active port %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @resolve_ca_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_ca_port(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @umad_get_ca(i8* %13, %struct.TYPE_6__* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %222

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* %10, align 4
  br label %219

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %10, align 4
  br label %219

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 -1, i32* %10, align 4
  br label %219

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 -1, i32* %10, align 4
  br label %219

69:                                               ; preds = %56, %44
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %71, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %219

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %82, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %219

93:                                               ; preds = %81
  store i32 -1, i32* %10, align 4
  br label %219

94:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %166, %94
  %96 = load i32, i32* %9, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sle i32 %96, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %104 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %104, i64 %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %166

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %113, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @strcmp(i32 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %166

134:                                              ; preds = %122, %111
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %139, i64 %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 5
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* %9, align 4
  %149 = load i32*, i32** %5, align 8
  store i32 %148, i32* %149, align 4
  store i32 %148, i32* %8, align 4
  br label %150

150:                                              ; preds = %147, %137, %134
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %152 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %152, i64 %154
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  store i32 %161, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %169

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165, %133, %110
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %95

169:                                              ; preds = %160, %95
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %210

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %210

175:                                              ; preds = %172
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %206, %175
  %177 = load i32, i32* %9, align 4
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sle i32 %177, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %176
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %185 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %185, i64 %187
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = icmp ne %struct.TYPE_5__* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  br label %206

192:                                              ; preds = %181
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %194 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %194, i64 %196
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 3
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load i32, i32* %9, align 4
  %204 = load i32*, i32** %5, align 8
  store i32 %203, i32* %204, align 4
  store i32 %203, i32* %8, align 4
  br label %209

205:                                              ; preds = %192
  br label %206

206:                                              ; preds = %205, %191
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %176

209:                                              ; preds = %202, %176
  br label %210

210:                                              ; preds = %209, %172, %169
  %211 = load i32, i32* %7, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 1, i32* %10, align 4
  br label %219

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 0, i32* %10, align 4
  br label %219

218:                                              ; preds = %214
  store i32 -1, i32* %10, align 4
  br label %219

219:                                              ; preds = %218, %217, %213, %93, %92, %80, %68, %43, %33, %21
  %220 = call i32 @release_ca(%struct.TYPE_6__* %6)
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %16
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i64 @umad_get_ca(i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @DEBUG(i8*, i32) #1

declare dso_local i32 @release_ca(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
