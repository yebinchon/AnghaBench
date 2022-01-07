; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_fudge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_fudge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.refclockstat = type { i32, i32, i32, i32, i32, i32 }

@t_REF = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unrecognized fudge reference clock address %s, line ignored\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"inappropriate address %s for the fudge command, line ignored\00", align 1
@CLK_HAVETIME1 = common dso_local global i32 0, align 4
@CLK_HAVETIME2 = common dso_local global i32 0, align 4
@CLK_HAVEVAL1 = common dso_local global i32 0, align 4
@CLK_HAVEVAL2 = common dso_local global i32 0, align 4
@CLK_HAVEFLAG1 = common dso_local global i32 0, align 4
@CLK_FLAG1 = common dso_local global i32 0, align 4
@CLK_HAVEFLAG2 = common dso_local global i32 0, align 4
@CLK_FLAG2 = common dso_local global i32 0, align 4
@CLK_HAVEFLAG3 = common dso_local global i32 0, align 4
@CLK_FLAG3 = common dso_local global i32 0, align 4
@CLK_HAVEFLAG4 = common dso_local global i32 0, align 4
@CLK_FLAG4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unexpected fudge flag %s (%d) for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @config_fudge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_fudge(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.refclockstat, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @HEAD_PFIFO(i32 %11)
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  br label %14

14:                                               ; preds = %223, %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %227

17:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = call i32 @ZERO_SOCK(i32* %5)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @t_REF, align 4
  %26 = call i32 @getnetnum(i32 %24, i32* %5, i32 1, i32 %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %29, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %42

34:                                               ; preds = %17
  %35 = call i32 @ISREFCLOCKADR(i32* %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 @stoa(i32* %5)
  %40 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = call i32 @ZERO(%struct.refclockstat* byval(%struct.refclockstat) align 8 %7)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @HEAD_PFIFO(i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %4, align 8
  br label %49

49:                                               ; preds = %218, %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %222

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %192 [
    i32 129, label %56
    i32 128, label %66
    i32 130, label %76
    i32 131, label %86
    i32 135, label %104
    i32 134, label %126
    i32 133, label %148
    i32 132, label %170
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @CLK_HAVETIME1, align 4
  %58 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  br label %217

66:                                               ; preds = %52
  %67 = load i32, i32* @CLK_HAVETIME2, align 4
  %68 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  br label %217

76:                                               ; preds = %52
  %77 = load i32, i32* @CLK_HAVEVAL1, align 4
  %78 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  br label %217

86:                                               ; preds = %52
  %87 = load i32, i32* @CLK_HAVEVAL2, align 4
  %88 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 2
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strlen(i32 %100)
  %102 = call i32 @min(i32 %101, i32 4)
  %103 = call i32 @memcpy(i32* %92, i32 %96, i32 %102)
  br label %217

104:                                              ; preds = %52
  %105 = load i32, i32* @CLK_HAVEFLAG1, align 4
  %106 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32, i32* @CLK_FLAG1, align 4
  %116 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %125

119:                                              ; preds = %104
  %120 = load i32, i32* @CLK_FLAG1, align 4
  %121 = xor i32 %120, -1
  %122 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %217

126:                                              ; preds = %52
  %127 = load i32, i32* @CLK_HAVEFLAG2, align 4
  %128 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load i32, i32* @CLK_FLAG2, align 4
  %138 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %147

141:                                              ; preds = %126
  %142 = load i32, i32* @CLK_FLAG2, align 4
  %143 = xor i32 %142, -1
  %144 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %136
  br label %217

148:                                              ; preds = %52
  %149 = load i32, i32* @CLK_HAVEFLAG3, align 4
  %150 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load i32, i32* @CLK_FLAG3, align 4
  %160 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %169

163:                                              ; preds = %148
  %164 = load i32, i32* @CLK_FLAG3, align 4
  %165 = xor i32 %164, -1
  %166 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %165
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %158
  br label %217

170:                                              ; preds = %52
  %171 = load i32, i32* @CLK_HAVEFLAG4, align 4
  %172 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %170
  %181 = load i32, i32* @CLK_FLAG4, align 4
  %182 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  br label %191

185:                                              ; preds = %170
  %186 = load i32, i32* @CLK_FLAG4, align 4
  %187 = xor i32 %186, -1
  %188 = getelementptr inbounds %struct.refclockstat, %struct.refclockstat* %7, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %187
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %180
  br label %217

192:                                              ; preds = %52
  %193 = load i32, i32* @LOG_ERR, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @token_name(i32 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %200, i32 %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %192
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  br label %214

213:                                              ; preds = %192
  br label %214

214:                                              ; preds = %213, %209
  %215 = phi i32 [ %212, %209 ], [ 1, %213 ]
  %216 = call i32 @exit(i32 %215) #3
  unreachable

217:                                              ; preds = %191, %169, %147, %125, %86, %76, %66, %56
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  store %struct.TYPE_9__* %221, %struct.TYPE_9__** %4, align 8
  br label %49

222:                                              ; preds = %49
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %3, align 8
  br label %14

227:                                              ; preds = %14
  ret void
}

declare dso_local i8* @HEAD_PFIFO(i32) #1

declare dso_local i32 @ZERO_SOCK(i32*) #1

declare dso_local i32 @getnetnum(i32, i32*, i32, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i32, ...) #1

declare dso_local i32 @ISREFCLOCKADR(i32*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @ZERO(%struct.refclockstat* byval(%struct.refclockstat) align 8) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @token_name(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
