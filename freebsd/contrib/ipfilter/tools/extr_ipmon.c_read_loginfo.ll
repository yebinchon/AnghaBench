; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipmon.c_read_loginfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipmon.c_read_loginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i64 }

@DEFAULT_IPFLOGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@ipmonopts = common dso_local global i32 0, align 4
@IPMON_TAIL = common dso_local global i32 0, align 4
@donehup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@IPMON_SYSLOG = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"read: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"aborting logging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @read_loginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_loginfo(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %13 = load i32, i32* @DEFAULT_IPFLOGSIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = add i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @select(i64 %25, i32* %11, i32* null, i32* null, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EINTR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

38:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

39:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %219, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %222

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %10, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @FD_ISSET(i32 %57, i32* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54, %43
  br label %219

61:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SEEK_CUR, align 4
  %71 = call i64 @lseek(i32 %69, i32 0, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* @ipmonopts, align 4
  %81 = load i32, i32* @IPMON_TAIL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

85:                                               ; preds = %79, %66
  br label %86

86:                                               ; preds = %85, %61
  store i32 0, i32* %6, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = bitcast i32* %18 to i8*
  %91 = mul nuw i64 4, %16
  %92 = trunc i64 %91 to i32
  %93 = call i32 @read_log(i32 %89, i32* %6, i8* %90, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i64, i64* @donehup, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %158

96:                                               ; preds = %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @fclose(i32* %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i8* @fopen(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  br label %121

121:                                              ; preds = %113, %96
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @fclose(i32* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %131, %126
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @fopen(i32* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  br label %146

146:                                              ; preds = %138, %121
  %147 = call i32 (...) @init_tabs()
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @load_config(i32* %155)
  br label %157

157:                                              ; preds = %152, %146
  store i64 0, i64* @donehup, align 8
  br label %158

158:                                              ; preds = %157, %86
  %159 = load i32, i32* %7, align 4
  switch i32 %159, label %218 [
    i32 -1, label %160
    i32 1, label %174
    i32 2, label %194
    i32 0, label %195
  ]

160:                                              ; preds = %158
  %161 = load i32, i32* @ipmonopts, align 4
  %162 = load i32, i32* @IPMON_SYSLOG, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @LOG_CRIT, align 4
  %167 = call i32 @syslog(i32 %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %173

168:                                              ; preds = %160
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ipferror(i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %165
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

174:                                              ; preds = %158
  %175 = load i32, i32* @ipmonopts, align 4
  %176 = load i32, i32* @IPMON_SYSLOG, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @LOG_CRIT, align 4
  %181 = call i32 @syslog(i32 %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %193

182:                                              ; preds = %174
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @fprintf(i32* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %192

192:                                              ; preds = %187, %182
  br label %193

193:                                              ; preds = %192, %179
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

194:                                              ; preds = %158
  br label %218

195:                                              ; preds = %158
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %195
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %204 = bitcast i32* %18 to i8*
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @print_log(%struct.TYPE_7__* %202, %struct.TYPE_6__* %203, i8* %204, i32 %205)
  %207 = load i32, i32* @ipmonopts, align 4
  %208 = load i32, i32* @IPMON_SYSLOG, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %201
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @fflush(i32* %214)
  br label %216

216:                                              ; preds = %211, %201
  br label %217

217:                                              ; preds = %216, %195
  br label %218

218:                                              ; preds = %158, %217, %194
  br label %219

219:                                              ; preds = %218, %60
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %40

222:                                              ; preds = %40
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @ipmonopts, align 4
  %227 = load i32, i32* @IPMON_TAIL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = call i32 @sleep(i32 1)
  br label %232

232:                                              ; preds = %230, %225, %222
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

233:                                              ; preds = %232, %193, %173, %84, %38, %37, %29
  %234 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @FD_ISSET(i32, i32*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @read_log(i32, i32*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @fopen(i32*, i8*) #2

declare dso_local i32 @init_tabs(...) #2

declare dso_local i32 @load_config(i32*) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @ipferror(i32, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @print_log(%struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
