; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_dent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_dent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64, i64, i32 }

@O_TABSTOP = common dso_local global i32 0, align 4
@O_SHIFTWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @txt_dent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_dent(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @O_TABSTOP, align 4
  %18 = call i64 @O_VAL(i32* %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @O_SHIFTWIDTH, align 4
  %21 = call i64 @O_VAL(i32* %19, i32 %20)
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %54, %3
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @COL_OFF(i64 %38, i64 %39)
  br label %50

41:                                               ; preds = %28
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @KEY_COL(i32* %42, i8 signext %48)
  br label %50

50:                                               ; preds = %41, %37
  %51 = phi i64 [ %40, %37 ], [ %49, %41 ]
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %22

57:                                               ; preds = %22
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @COL_OFF(i64 %62, i64 %63)
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %13, align 8
  br label %75

67:                                               ; preds = %57
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %8, align 8
  %72 = urem i64 %70, %71
  %73 = load i64, i64* %13, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %67, %61
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = icmp eq i64 %81, %88
  br label %90

90:                                               ; preds = %78, %75
  %91 = phi i1 [ true, %75 ], [ %89, %78 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %130, %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %93
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %125, label %113

113:                                              ; preds = %101
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %119, 1
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 9
  br label %125

125:                                              ; preds = %113, %101
  %126 = phi i1 [ true, %101 ], [ %124, %113 ]
  br label %127

127:                                              ; preds = %125, %93
  %128 = phi i1 [ false, %93 ], [ %126, %125 ]
  br i1 %128, label %129, label %139

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %93

139:                                              ; preds = %127
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %140

140:                                              ; preds = %172, %139
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %141, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %140
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i64 @COL_OFF(i64 %156, i64 %157)
  br label %168

159:                                              ; preds = %146
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @KEY_COL(i32* %160, i8 signext %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = phi i64 [ %158, %155 ], [ %167, %159 ]
  %170 = load i64, i64* %11, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %11, align 8
  br label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %10, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %10, align 8
  br label %140

175:                                              ; preds = %140
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %13, align 8
  %178 = icmp uge i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %203

180:                                              ; preds = %175
  %181 = load i64, i64* %11, align 8
  store i64 %181, i64* %10, align 8
  store i64 0, i64* %14, align 8
  br label %182

182:                                              ; preds = %196, %180
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i64 @COL_OFF(i64 %184, i64 %185)
  %187 = add i64 %183, %186
  %188 = load i64, i64* %13, align 8
  %189 = icmp ule i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %182
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %9, align 8
  %193 = call i64 @COL_OFF(i64 %191, i64 %192)
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %190
  %197 = load i64, i64* %14, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %14, align 8
  br label %182

199:                                              ; preds = %182
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %10, align 8
  %202 = sub i64 %200, %201
  store i64 %202, i64* %12, align 8
  br label %203

203:                                              ; preds = %199, %179
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %12, align 8
  %209 = add i64 %207, %208
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %206, %203
  store i8 9, i8* %7, align 1
  br label %213

213:                                              ; preds = %220, %212
  %214 = load i64, i64* %14, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %219 = call i32 @txt_insch(i32* %217, %struct.TYPE_4__* %218, i8* %7, i32 0)
  br label %220

220:                                              ; preds = %216
  %221 = load i64, i64* %14, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %14, align 8
  br label %213

223:                                              ; preds = %213
  store i8 32, i8* %7, align 1
  br label %224

224:                                              ; preds = %231, %223
  %225 = load i64, i64* %12, align 8
  %226 = icmp ugt i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = call i32 @txt_insch(i32* %228, %struct.TYPE_4__* %229, i8* %7, i32 0)
  br label %231

231:                                              ; preds = %227
  %232 = load i64, i64* %12, align 8
  %233 = add i64 %232, -1
  store i64 %233, i64* %12, align 8
  br label %224

234:                                              ; preds = %224
  ret i32 0
}

declare dso_local i64 @O_VAL(i32*, i32) #1

declare dso_local i64 @COL_OFF(i64, i64) #1

declare dso_local i64 @KEY_COL(i32*, i8 signext) #1

declare dso_local i32 @txt_insch(i32*, %struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
