; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_get_from_usocketsource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_entropy.c_get_from_usocketsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }

@errno = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i64 0, align 8
@isc_usocketsource_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @get_from_usocketsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_from_usocketsource(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %240

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 8
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 7
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %208, %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %222

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ISC_MIN(i32 %44, i32 128)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %132, %109, %74, %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %184 [
    i32 130, label %52
    i32 131, label %83
    i32 132, label %83
    i32 128, label %123
    i32 129, label %161
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 %54, i8* %55, align 16
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %58 = call i32 @sendto(i32 %56, i8* %57, i32 1, i32 0, i32* null, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i32, i32* @errno, align 4
  %62 = load i32, i32* @EWOULDBLOCK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINTR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @ECONNRESET, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64, %60
  br label %238

73:                                               ; preds = %68
  br label %223

74:                                               ; preds = %52
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @INSIST(i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 128, i32* %82, align 8
  br label %46

83:                                               ; preds = %46, %46
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %84, align 16
  %85 = load i32, i32* %10, align 4
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 1
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %8, align 4
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %90 = call i32 @sendto(i32 %88, i8* %89, i32 2, i32 0, i32* null, i32 0)
  store i32 %90, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %83
  %93 = load i32, i32* @errno, align 4
  %94 = load i32, i32* @EWOULDBLOCK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @EINTR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @errno, align 4
  %102 = load i32, i32* @ECONNRESET, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96, %92
  br label %238

105:                                              ; preds = %100
  br label %223

106:                                              ; preds = %83
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store i32 130, i32* %113, align 8
  br label %46

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i32
  %118 = call i32 @INSIST(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 128, i32* %122, align 8
  br label %123

123:                                              ; preds = %46, %114
  %124 = load i32, i32* %8, align 4
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %126 = call i32 @recvfrom(i32 %124, i8* %125, i32 1, i32 0, i32* null, i32* null)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = load i32, i32* @errno, align 4
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @usleep(i32 1000)
  br label %46

134:                                              ; preds = %128
  %135 = load i32, i32* @errno, align 4
  %136 = load i32, i32* @EWOULDBLOCK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @errno, align 4
  %140 = load i32, i32* @EINTR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134
  br label %238

143:                                              ; preds = %138
  br label %223

144:                                              ; preds = %123
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32 129, i32* %148, align 8
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %150 = load i8, i8* %149, align 16
  %151 = zext i8 %150 to i64
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  store i64 %152, i64* %156, align 8
  %157 = load i64, i64* %12, align 8
  %158 = icmp ugt i64 %157, 128
  br i1 %158, label %159, label %160

159:                                              ; preds = %144
  br label %223

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %46, %160
  %162 = load i64, i64* %12, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @recv(i32 %165, i8* %166, i64 %167, i32 0)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %164
  %172 = load i32, i32* @errno, align 4
  %173 = load i32, i32* @EWOULDBLOCK, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @errno, align 4
  %177 = load i32, i32* @EINTR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %171
  br label %238

180:                                              ; preds = %175
  br label %223

181:                                              ; preds = %164
  br label %183

182:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %182, %181
  br label %185

184:                                              ; preds = %46
  br label %223

185:                                              ; preds = %183
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %12, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub i64 %197, %192
  store i64 %198, i64* %196, align 8
  br label %204

199:                                              ; preds = %185
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  store i32 132, i32* %203, align 8
  br label %204

204:                                              ; preds = %199, %190
  %205 = load i32, i32* %9, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %238

208:                                              ; preds = %204
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = mul nsw i32 %212, 8
  %214 = call i32 @entropypool_adddata(i32* %209, i8* %210, i32 %211, i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = mul nsw i32 %215, 8
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %217, %216
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %5, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %5, align 4
  br label %40

222:                                              ; preds = %40
  br label %238

223:                                              ; preds = %184, %180, %159, %143, %105, %73
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @close(i32 %224)
  %226 = load i64, i64* @ISC_TRUE, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load i32, i32* @isc_usocketsource_disconnected, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 2
  store i32 %229, i32* %233, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 -1, i32* %237, align 8
  br label %238

238:                                              ; preds = %223, %222, %207, %179, %142, %104, %72
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %238, %30
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @ISC_MIN(i32, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @entropypool_adddata(i32*, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
