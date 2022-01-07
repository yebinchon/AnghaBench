; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_create_peer_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_create_peer_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, i32, i8*, i32, i8*, i8*, i8*, i32, i32* }
%struct.TYPE_13__ = type { i32, i8*, i8* }

@NTP_VERSION = common dso_local global i8* null, align 8
@link = common dso_local global i32 0, align 4
@NTP_MINPOLL = common dso_local global i8* null, align 8
@UCHAR_MAX = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"minpoll: provided value (%d) is out of range [%d-%d])\00", align 1
@NTP_MAXPOLL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"maxpoll: provided value (%d) is out of range [0-%d])\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"'ttl' does not apply for refclocks\00", align 1
@MAX_TTL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"ttl: invalid argument\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"'mode' does not apply for network peers\00", align 1
@KEYID_T_MAX = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"key: invalid argument\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"version: invalid argument\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Unknown peer/server option token %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @create_peer_node(i32 %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.TYPE_14__* @emalloc_zero(i32 96)
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load i8*, i8** @NTP_VERSION, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 10
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = call i32 @CHECK_FIFO_CONSISTENCY(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %24)
  br label %26

26:                                               ; preds = %23, %3
  br label %27

27:                                               ; preds = %214, %26
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %215

30:                                               ; preds = %27
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load i32, i32* @link, align 4
  %34 = call i32 @UNLINK_FIFO(%struct.TYPE_14__* %31, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %32, i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = icmp eq %struct.TYPE_14__* null, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = call i32 @free(%struct.TYPE_14__* %38)
  br label %215

40:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %201 [
    i32 135, label %44
    i32 131, label %50
    i32 132, label %84
    i32 129, label %116
    i32 130, label %142
    i32 133, label %157
    i32 128, label %176
    i32 134, label %194
  ]

44:                                               ; preds = %40
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = call i32 @APPEND_G_FIFO(i32 %47, %struct.TYPE_14__* %48)
  store i32 0, i32* %9, align 4
  br label %208

50:                                               ; preds = %40
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @NTP_MINPOLL, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** @UCHAR_MAX, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57, %50
  %65 = load i32, i32* @LOG_INFO, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @NTP_MINPOLL, align 8
  %71 = load i8*, i8** @UCHAR_MAX, align 8
  %72 = call i32 (i32, i8*, ...) @msyslog(i32 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70, i8* %71)
  %73 = load i8*, i8** @NTP_MINPOLL, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  br label %83

76:                                               ; preds = %57
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %76, %64
  br label %208

84:                                               ; preds = %40
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ult i8* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @NTP_MAXPOLL, align 8
  %96 = icmp ugt i8* %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90, %84
  %98 = load i32, i32* @LOG_INFO, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** @NTP_MAXPOLL, align 8
  %104 = call i32 (i32, i8*, ...) @msyslog(i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %103)
  %105 = load i8*, i8** @NTP_MAXPOLL, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  br label %115

108:                                              ; preds = %90
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %108, %97
  br label %208

116:                                              ; preds = %40
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @is_refclk_addr(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = call i32 (i32, i8*, ...) @msyslog(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %141

123:                                              ; preds = %116
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** @MAX_TTL, align 8
  %129 = icmp uge i8* %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = call i32 (i32, i8*, ...) @msyslog(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %140

133:                                              ; preds = %123
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140, %120
  br label %208

142:                                              ; preds = %40
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @is_refclk_addr(i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  br label %156

153:                                              ; preds = %142
  %154 = load i32, i32* @LOG_ERR, align 4
  %155 = call i32 (i32, i8*, ...) @msyslog(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %156

156:                                              ; preds = %153, %146
  br label %208

157:                                              ; preds = %40
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @KEYID_T_MAX, align 8
  %163 = icmp uge i8* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* @LOG_ERR, align 4
  %166 = call i32 (i32, i8*, ...) @msyslog(i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %175

167:                                              ; preds = %157
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %167, %164
  br label %208

176:                                              ; preds = %40
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** @UCHAR_MAX, align 8
  %182 = icmp uge i8* %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load i32, i32* @LOG_ERR, align 4
  %185 = call i32 (i32, i8*, ...) @msyslog(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %193

186:                                              ; preds = %176
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 4
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %186, %183
  br label %208

194:                                              ; preds = %40
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  br label %208

201:                                              ; preds = %40
  %202 = load i32, i32* @LOG_ERR, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @token_name(i32 %205)
  %207 = call i32 (i32, i8*, ...) @msyslog(i32 %202, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  store i32 1, i32* %10, align 4
  br label %208

208:                                              ; preds = %201, %194, %193, %175, %156, %141, %115, %83, %44
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %213 = call i32 @free(%struct.TYPE_14__* %212)
  br label %214

214:                                              ; preds = %211, %208
  br label %27

215:                                              ; preds = %37, %27
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %220 = call i32 @free(%struct.TYPE_14__* %219)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %222
}

declare dso_local %struct.TYPE_14__* @emalloc_zero(i32) #1

declare dso_local i32 @CHECK_FIFO_CONSISTENCY(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @UNLINK_FIFO(%struct.TYPE_14__*, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @APPEND_G_FIFO(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @is_refclk_addr(i32*) #1

declare dso_local i32 @token_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
