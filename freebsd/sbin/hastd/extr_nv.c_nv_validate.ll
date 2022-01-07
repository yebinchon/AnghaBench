; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32, i32 }
%struct.nvhdr = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NV_TYPE_MASK = common dso_local global i32 0, align 4
@NV_TYPE_FIRST = common dso_local global i32 0, align 4
@NV_TYPE_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid condition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv_validate(%struct.nv* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nvhdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.nv*, %struct.nv** %4, align 8
  %14 = icmp eq %struct.nv* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %226

17:                                               ; preds = %2
  %18 = load %struct.nv*, %struct.nv** %4, align 8
  %19 = call i32 @NV_CHECK(%struct.nv* %18)
  %20 = load %struct.nv*, %struct.nv** %4, align 8
  %21 = getelementptr inbounds %struct.nv, %struct.nv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  store i32 0, i32* %12, align 4
  %26 = load %struct.nv*, %struct.nv** %4, align 8
  %27 = getelementptr inbounds %struct.nv, %struct.nv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ebuf_data(i32 %28, i64* %10)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %196, %17
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %205

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %205

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %41, 18
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %12, align 4
  br label %205

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to %struct.nvhdr*
  store %struct.nvhdr* %47, %struct.nvhdr** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %50 = call i64 @NVH_HSIZE(%struct.nvhdr* %49)
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %12, align 4
  br label %205

54:                                               ; preds = %45
  %55 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %56 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %59 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %12, align 4
  br label %205

69:                                               ; preds = %54
  %70 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %71 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %75 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %12, align 4
  br label %205

82:                                               ; preds = %69
  %83 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %84 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NV_TYPE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @NV_TYPE_FIRST, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %92 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NV_TYPE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @NV_TYPE_LAST, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90, %82
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %12, align 4
  br label %205

100:                                              ; preds = %90
  %101 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %102 = call i64 @NVH_DSIZE(%struct.nvhdr* %101)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %12, align 4
  br label %205

107:                                              ; preds = %100
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %110 = call i64 @NVH_SIZE(%struct.nvhdr* %109)
  %111 = icmp ult i64 %108, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %12, align 4
  br label %205

114:                                              ; preds = %107
  store i64 0, i64* %11, align 8
  %115 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %116 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NV_TYPE_MASK, align 4
  %119 = and i32 %117, %118
  switch i32 %119, label %190 [
    i32 138, label %120
    i32 129, label %120
    i32 144, label %125
    i32 135, label %125
    i32 142, label %130
    i32 133, label %130
    i32 140, label %135
    i32 131, label %135
    i32 137, label %146
    i32 128, label %146
    i32 143, label %147
    i32 134, label %147
    i32 141, label %152
    i32 132, label %152
    i32 139, label %157
    i32 130, label %157
    i32 136, label %169
  ]

120:                                              ; preds = %114, %114
  %121 = load i64, i64* %11, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i64 1, i64* %11, align 8
  br label %124

124:                                              ; preds = %123, %120
  br label %125

125:                                              ; preds = %114, %114, %124
  %126 = load i64, i64* %11, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 2, i64* %11, align 8
  br label %129

129:                                              ; preds = %128, %125
  br label %130

130:                                              ; preds = %114, %114, %129
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i64 4, i64* %11, align 8
  br label %134

134:                                              ; preds = %133, %130
  br label %135

135:                                              ; preds = %114, %114, %134
  %136 = load i64, i64* %11, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i64 8, i64* %11, align 8
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %12, align 4
  br label %192

145:                                              ; preds = %139
  br label %192

146:                                              ; preds = %114, %114
  br label %192

147:                                              ; preds = %114, %114
  %148 = load i64, i64* %11, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i64 2, i64* %11, align 8
  br label %151

151:                                              ; preds = %150, %147
  br label %152

152:                                              ; preds = %114, %114, %151
  %153 = load i64, i64* %11, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i64 4, i64* %11, align 8
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %114, %114, %156
  %158 = load i64, i64* %11, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i64 8, i64* %11, align 8
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %11, align 8
  %164 = urem i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %12, align 4
  br label %192

168:                                              ; preds = %161
  br label %192

169:                                              ; preds = %114
  %170 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %171 = call i8* @NVH_DATA(%struct.nvhdr* %170)
  store i8* %171, i8** %7, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* %9, align 8
  %174 = sub i64 %173, 1
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %12, align 4
  br label %192

181:                                              ; preds = %169
  %182 = load i8*, i8** %7, align 8
  %183 = call i64 @strlen(i8* %182)
  %184 = load i64, i64* %9, align 8
  %185 = sub i64 %184, 1
  %186 = icmp ne i64 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @EINVAL, align 4
  store i32 %188, i32* %12, align 4
  br label %192

189:                                              ; preds = %181
  br label %192

190:                                              ; preds = %114
  %191 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %189, %187, %179, %168, %166, %146, %145, %143
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %205

196:                                              ; preds = %192
  %197 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %198 = call i64 @NVH_SIZE(%struct.nvhdr* %197)
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 %198
  store i8* %200, i8** %8, align 8
  %201 = load %struct.nvhdr*, %struct.nvhdr** %6, align 8
  %202 = call i64 @NVH_SIZE(%struct.nvhdr* %201)
  %203 = load i64, i64* %10, align 8
  %204 = sub i64 %203, %202
  store i64 %204, i64* %10, align 8
  br label %30

205:                                              ; preds = %195, %112, %105, %98, %80, %67, %52, %43, %39, %30
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* @errno, align 4
  %210 = load %struct.nv*, %struct.nv** %4, align 8
  %211 = getelementptr inbounds %struct.nv, %struct.nv* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.nv*, %struct.nv** %4, align 8
  %217 = getelementptr inbounds %struct.nv, %struct.nv* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %208
  store i32 -1, i32* %3, align 4
  br label %226

219:                                              ; preds = %205
  %220 = load i64*, i64** %5, align 8
  %221 = icmp ne i64* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i64, i64* %10, align 8
  %224 = load i64*, i64** %5, align 8
  store i64 %223, i64* %224, align 8
  br label %225

225:                                              ; preds = %222, %219
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %218, %15
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @NV_CHECK(%struct.nv*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @ebuf_data(i32, i64*) #1

declare dso_local i64 @NVH_HSIZE(%struct.nvhdr*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @NVH_DSIZE(%struct.nvhdr*) #1

declare dso_local i64 @NVH_SIZE(%struct.nvhdr*) #1

declare dso_local i8* @NVH_DATA(%struct.nvhdr*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
