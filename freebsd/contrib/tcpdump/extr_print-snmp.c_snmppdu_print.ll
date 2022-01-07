; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_snmppdu_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_snmppdu_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.be = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@BE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"[reqId!=INT]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"R=%d \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"[errorStatus!=INT]\00", align 1
@GETREQ = common dso_local global i64 0, align 8
@GETNEXTREQ = common dso_local global i64 0, align 8
@SETREQ = common dso_local global i64 0, align 8
@INFORMREQ = common dso_local global i64 0, align 8
@V2TRAP = common dso_local global i64 0, align 8
@REPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"[errorStatus(%s)!=0]\00", align 1
@GETBULKREQ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" N=%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"[errorIndex!=INT]\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"[errorIndex(%d)!=0]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" M=%d\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"[errorIndex(%d) w/o errorStatus]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"@%d\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"[errorIndex==0]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i32*, i32)* @snmppdu_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmppdu_print(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca [20 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @asn1_parse(%struct.TYPE_9__* %14, i32* %15, i32 %16, %struct.be* %9)
  store i32 %17, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %256

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BE_INT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([13 x i8]* @.str to %struct.TYPE_9__*))
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i32 @asn1_print(%struct.TYPE_9__* %28, %struct.be* %9)
  br label %256

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %7, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @asn1_parse(%struct.TYPE_9__* %51, i32* %52, i32 %53, %struct.be* %9)
  store i32 %54, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %256

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BE_INT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([19 x i8]* @.str.2 to %struct.TYPE_9__*))
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = call i32 @asn1_print(%struct.TYPE_9__* %65, %struct.be* %9)
  br label %256

67:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @GETREQ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %91, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @GETNEXTREQ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %91, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @SETREQ, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @INFORMREQ, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @V2TRAP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @REPORT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87, %83, %79, %75, %71, %67
  %92 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @DECODE_ErrorStatus(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_9__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_9__* %103)
  br label %136

105:                                              ; preds = %91, %87
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @GETBULKREQ, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_9__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_9__* %115)
  br label %135

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @DECODE_ErrorStatus(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to %struct.TYPE_9__*
  %130 = call i32 @ND_PRINT(%struct.TYPE_9__* %129)
  %131 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %122, %117
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %96
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %7, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @asn1_parse(%struct.TYPE_9__* %144, i32* %145, i32 %146, %struct.be* %9)
  store i32 %147, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %256

150:                                              ; preds = %136
  %151 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BE_INT, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([18 x i8]* @.str.6 to %struct.TYPE_9__*))
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = call i32 @asn1_print(%struct.TYPE_9__* %158, %struct.be* %9)
  br label %256

160:                                              ; preds = %150
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @GETREQ, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %184, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @GETNEXTREQ, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %184, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @SETREQ, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @INFORMREQ, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* @V2TRAP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* @REPORT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %180, %176, %172, %168, %164, %160
  %185 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to %struct.TYPE_9__*
  %196 = call i32 @ND_PRINT(%struct.TYPE_9__* %195)
  br label %243

197:                                              ; preds = %184, %180
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* @GETBULKREQ, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to %struct.TYPE_9__*
  %208 = call i32 @ND_PRINT(%struct.TYPE_9__* %207)
  br label %242

209:                                              ; preds = %197
  %210 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %209
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.TYPE_9__*
  %224 = call i32 @ND_PRINT(%struct.TYPE_9__* %223)
  br label %233

225:                                              ; preds = %214
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %227 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to %struct.TYPE_9__*
  %232 = call i32 @ND_PRINT(%struct.TYPE_9__* %231)
  br label %233

233:                                              ; preds = %225, %217
  br label %241

234:                                              ; preds = %209
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([16 x i8]* @.str.11 to %struct.TYPE_9__*))
  br label %240

240:                                              ; preds = %237, %234
  br label %241

241:                                              ; preds = %240, %233
  br label %242

242:                                              ; preds = %241, %201
  br label %243

243:                                              ; preds = %242, %189
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %8, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load i32*, i32** %7, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32* %250, i32** %7, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %252 = load i64, i64* %6, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @varbind_print(%struct.TYPE_9__* %251, i64 %252, i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %243, %155, %149, %62, %56, %25, %19
  ret void
}

declare dso_local i32 @asn1_parse(%struct.TYPE_9__*, i32*, i32, %struct.be*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @asn1_print(%struct.TYPE_9__*, %struct.be*) #1

declare dso_local i32 @DECODE_ErrorStatus(i32) #1

declare dso_local i32 @varbind_print(%struct.TYPE_9__*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
