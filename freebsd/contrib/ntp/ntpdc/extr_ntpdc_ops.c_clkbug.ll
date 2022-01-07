; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_clkbug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_clkbug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.info_clkbug = type { i32*, i32, i64, i32*, i32, i64, i32 }

@MAXARGS = common dso_local global i32 0, align 4
@impl_ver = common dso_local global i64 0, align 8
@REQ_GET_CLKBUGINFO = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"clock address:        %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"values: %d\00", align 1
@NUMCBUGVALUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%12ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%12lu\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"times: %d\00", align 1
@NUMCBUGTIMES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%17s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%37s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @clkbug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkbug(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.info_clkbug*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load i32, i32* @MAXARGS, align 4
  %21 = call i32 @min(i32 %20, i32 8)
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.parse*, %struct.parse** %3, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @COUNTOF(i32* %24)
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %45, %2
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.parse*, %struct.parse** %3, align 8
  %37 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @NSRCADR(i32* %41)
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %24, i64 %43
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  br label %31

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i64, i64* @impl_ver, align 8
  %51 = load i32, i32* @REQ_GET_CLKBUGINFO, align 4
  %52 = load i64, i64* %13, align 8
  %53 = bitcast i32* %24 to i8*
  %54 = bitcast %struct.info_clkbug** %8 to i8*
  %55 = call i32 @doquery(i64 %50, i32 %51, i32 0, i64 %52, i32 4, i8* %53, i64* %14, i64* %15, i8* %54, i32 0, i32 56)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @INFO_ERR_IMPL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i64, i64* @impl_ver, align 8
  %61 = load i64, i64* @IMPL_XNTPD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %64, i64* @impl_ver, align 8
  br label %49

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %19, align 4
  br label %226

69:                                               ; preds = %65
  %70 = load i64, i64* %14, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @checkitems(i64 %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 1, i32* %19, align 4
  br label %226

75:                                               ; preds = %69
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @checkitemsize(i64 %76, i32 56)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* %19, align 4
  br label %226

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %224, %80
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %14, align 8
  %84 = icmp ugt i64 %82, 0
  br i1 %84, label %85, label %225

85:                                               ; preds = %81
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %88 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @numtoa(i32 %89)
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %93 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %100 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ntohs(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NUMCBUGVALUES, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %85
  %107 = load i32, i32* @NUMCBUGVALUES, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %85
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %144, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %115 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohl(i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %5, align 4
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %113
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %5, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %143

139:                                              ; preds = %129
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %109

147:                                              ; preds = %109
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %151 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %158 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ntohl(i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @NUMCBUGTIMES, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %147
  %165 = load i32, i32* @NUMCBUGTIMES, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %147
  store i32 0, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %211, %166
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %214

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %189

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %185, %178
  %180 = load i32, i32* %17, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @putc(i8 signext 32, i32* %183)
  br label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %17, align 4
  br label %179

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %175
  %190 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %191 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = call i32 @NTOHL_FP(i32* %195, i32* %18)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %5, align 4
  %199 = shl i32 1, %198
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = load i32*, i32** %4, align 8
  %204 = call i8* @lfptoa(i32* %18, i32 6)
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %204)
  store i32 22, i32* %17, align 4
  br label %210

206:                                              ; preds = %189
  %207 = load i32*, i32** %4, align 8
  %208 = call i8* @uglydate(i32* %18)
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %208)
  store i32 2, i32* %17, align 4
  br label %210

210:                                              ; preds = %206, %202
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %167

214:                                              ; preds = %167
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %217 = load i64, i64* %14, align 8
  %218 = icmp ugt i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.info_clkbug*, %struct.info_clkbug** %8, align 8
  %221 = getelementptr inbounds %struct.info_clkbug, %struct.info_clkbug* %220, i32 1
  store %struct.info_clkbug* %221, %struct.info_clkbug** %8, align 8
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %224

224:                                              ; preds = %219, %214
  br label %81

225:                                              ; preds = %81
  store i32 0, i32* %19, align 4
  br label %226

226:                                              ; preds = %225, %79, %74, %68
  %227 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %19, align 4
  switch i32 %228, label %230 [
    i32 0, label %229
    i32 1, label %229
  ]

229:                                              ; preds = %226, %226
  ret void

230:                                              ; preds = %226
  unreachable
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32 @NSRCADR(i32*) #1

declare dso_local i32 @doquery(i64, i32, i32, i64, i32, i8*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @checkitems(i64, i32*) #1

declare dso_local i32 @checkitemsize(i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @numtoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i8* @lfptoa(i32*, i32) #1

declare dso_local i8* @uglydate(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
