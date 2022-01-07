; ModuleID = '/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_regdomain.c_end_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_regdomain.c_end_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mystate = type { i64, i32**, %struct.TYPE_5__*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32*, i32*, i8* }
%struct.TYPE_8__ = type { i64, i64, i32*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"freqstart\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"freqend\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"chanwidth\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"chansep\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"flags without freqband or netband at line %ld ignored\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sku\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"netband\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"freqband\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"maxpower\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"maxpowerdfs\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"maxantgain\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"isocc\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"unexpected XML token \22%s\22 data \22%s\22 at line %ld\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"band\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"no freqbands for band at line %ld\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"no maxpower for band at line %ld\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@NO_COUNTRY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"no ISO cc for country at line %ld\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"no name for country at line %ld\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"no regdomain reference for country at line %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @end_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_element(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mystate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mystate*
  store %struct.mystate* %9, %struct.mystate** %5, align 8
  %10 = load %struct.mystate*, %struct.mystate** %5, align 8
  %11 = getelementptr inbounds %struct.mystate, %struct.mystate* %10, i32 0, i32 1
  %12 = load i32**, i32*** %11, align 8
  %13 = load %struct.mystate*, %struct.mystate** %5, align 8
  %14 = getelementptr inbounds %struct.mystate, %struct.mystate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @sbuf_finish(i32* %17)
  %19 = load %struct.mystate*, %struct.mystate** %5, align 8
  %20 = getelementptr inbounds %struct.mystate, %struct.mystate* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.mystate*, %struct.mystate** %5, align 8
  %23 = getelementptr inbounds %struct.mystate, %struct.mystate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @sbuf_data(i32* %26)
  store i8* %27, i8** %7, align 8
  %28 = load %struct.mystate*, %struct.mystate** %5, align 8
  %29 = getelementptr inbounds %struct.mystate, %struct.mystate* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load %struct.mystate*, %struct.mystate** %5, align 8
  %32 = getelementptr inbounds %struct.mystate, %struct.mystate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sbuf_len(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %2
  %41 = load %struct.mystate*, %struct.mystate** %5, align 8
  %42 = getelementptr inbounds %struct.mystate, %struct.mystate* %41, i32 0, i32 7
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strtoul(i8* %46, i32* null, i32 0)
  %48 = load %struct.mystate*, %struct.mystate** %5, align 8
  %49 = getelementptr inbounds %struct.mystate, %struct.mystate* %48, i32 0, i32 7
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i8* %47, i8** %51, align 8
  br label %449

52:                                               ; preds = %40, %2
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.mystate*, %struct.mystate** %5, align 8
  %58 = getelementptr inbounds %struct.mystate, %struct.mystate* %57, i32 0, i32 7
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @strtoul(i8* %62, i32* null, i32 0)
  %64 = load %struct.mystate*, %struct.mystate** %5, align 8
  %65 = getelementptr inbounds %struct.mystate, %struct.mystate* %64, i32 0, i32 7
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i8* %63, i8** %67, align 8
  br label %449

68:                                               ; preds = %56, %52
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.mystate*, %struct.mystate** %5, align 8
  %74 = getelementptr inbounds %struct.mystate, %struct.mystate* %73, i32 0, i32 7
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @strtoul(i8* %78, i32* null, i32 0)
  %80 = load %struct.mystate*, %struct.mystate** %5, align 8
  %81 = getelementptr inbounds %struct.mystate, %struct.mystate* %80, i32 0, i32 7
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i8* %79, i8** %83, align 8
  br label %449

84:                                               ; preds = %72, %68
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.mystate*, %struct.mystate** %5, align 8
  %90 = getelementptr inbounds %struct.mystate, %struct.mystate* %89, i32 0, i32 7
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = call i8* @strtoul(i8* %94, i32* null, i32 0)
  %96 = load %struct.mystate*, %struct.mystate** %5, align 8
  %97 = getelementptr inbounds %struct.mystate, %struct.mystate* %96, i32 0, i32 7
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i8* %95, i8** %99, align 8
  br label %449

100:                                              ; preds = %88, %84
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %146

104:                                              ; preds = %100
  %105 = load %struct.mystate*, %struct.mystate** %5, align 8
  %106 = getelementptr inbounds %struct.mystate, %struct.mystate* %105, i32 0, i32 7
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.mystate*, %struct.mystate** %5, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @decode_flag(%struct.mystate* %110, i8* %111, i32 %112)
  %114 = load %struct.mystate*, %struct.mystate** %5, align 8
  %115 = getelementptr inbounds %struct.mystate, %struct.mystate* %114, i32 0, i32 7
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 8
  br label %145

120:                                              ; preds = %104
  %121 = load %struct.mystate*, %struct.mystate** %5, align 8
  %122 = getelementptr inbounds %struct.mystate, %struct.mystate* %121, i32 0, i32 5
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.mystate*, %struct.mystate** %5, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @decode_flag(%struct.mystate* %126, i8* %127, i32 %128)
  %130 = load %struct.mystate*, %struct.mystate** %5, align 8
  %131 = getelementptr inbounds %struct.mystate, %struct.mystate* %130, i32 0, i32 5
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  br label %144

136:                                              ; preds = %120
  %137 = load %struct.mystate*, %struct.mystate** %5, align 8
  %138 = getelementptr inbounds %struct.mystate, %struct.mystate* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @XML_GetCurrentLineNumber(i32 %139)
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %136, %125
  br label %145

145:                                              ; preds = %144, %109
  br label %449

146:                                              ; preds = %100
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @strcasecmp(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load %struct.mystate*, %struct.mystate** %5, align 8
  %152 = getelementptr inbounds %struct.mystate, %struct.mystate* %151, i32 0, i32 6
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = icmp ne %struct.TYPE_7__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  %157 = call i8* @strdup(i8* %156)
  %158 = load %struct.mystate*, %struct.mystate** %5, align 8
  %159 = getelementptr inbounds %struct.mystate, %struct.mystate* %158, i32 0, i32 6
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  br label %449

162:                                              ; preds = %150, %146
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 @strcasecmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.mystate*, %struct.mystate** %5, align 8
  %168 = getelementptr inbounds %struct.mystate, %struct.mystate* %167, i32 0, i32 6
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = icmp ne %struct.TYPE_7__* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i8*, i8** %7, align 8
  %173 = call i8* @strtoul(i8* %172, i32* null, i32 0)
  %174 = load %struct.mystate*, %struct.mystate** %5, align 8
  %175 = getelementptr inbounds %struct.mystate, %struct.mystate* %174, i32 0, i32 6
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i8* %173, i8** %177, align 8
  br label %449

178:                                              ; preds = %166, %162
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load %struct.mystate*, %struct.mystate** %5, align 8
  %184 = getelementptr inbounds %struct.mystate, %struct.mystate* %183, i32 0, i32 6
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = icmp ne %struct.TYPE_7__* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.mystate*, %struct.mystate** %5, align 8
  %189 = getelementptr inbounds %struct.mystate, %struct.mystate* %188, i32 0, i32 4
  store i32* null, i32** %189, align 8
  br label %449

190:                                              ; preds = %182, %178
  %191 = load i8*, i8** %4, align 8
  %192 = call i32 @strcasecmp(i8* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.mystate*, %struct.mystate** %5, align 8
  %196 = getelementptr inbounds %struct.mystate, %struct.mystate* %195, i32 0, i32 5
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = icmp ne %struct.TYPE_8__* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %449

200:                                              ; preds = %194, %190
  %201 = load i8*, i8** %4, align 8
  %202 = call i32 @strcasecmp(i8* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load %struct.mystate*, %struct.mystate** %5, align 8
  %206 = getelementptr inbounds %struct.mystate, %struct.mystate* %205, i32 0, i32 5
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = icmp ne %struct.TYPE_8__* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load i8*, i8** %7, align 8
  %211 = call i8* @strtoul(i8* %210, i32* null, i32 0)
  %212 = ptrtoint i8* %211 to i64
  %213 = load %struct.mystate*, %struct.mystate** %5, align 8
  %214 = getelementptr inbounds %struct.mystate, %struct.mystate* %213, i32 0, i32 5
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i64 %212, i64* %216, align 8
  br label %449

217:                                              ; preds = %204, %200
  %218 = load i8*, i8** %4, align 8
  %219 = call i32 @strcasecmp(i8* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load %struct.mystate*, %struct.mystate** %5, align 8
  %223 = getelementptr inbounds %struct.mystate, %struct.mystate* %222, i32 0, i32 5
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = icmp ne %struct.TYPE_8__* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load i8*, i8** %7, align 8
  %228 = call i8* @strtoul(i8* %227, i32* null, i32 0)
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.mystate*, %struct.mystate** %5, align 8
  %231 = getelementptr inbounds %struct.mystate, %struct.mystate* %230, i32 0, i32 5
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  store i64 %229, i64* %233, align 8
  br label %449

234:                                              ; preds = %221, %217
  %235 = load i8*, i8** %4, align 8
  %236 = call i32 @strcasecmp(i8* %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load %struct.mystate*, %struct.mystate** %5, align 8
  %240 = getelementptr inbounds %struct.mystate, %struct.mystate* %239, i32 0, i32 5
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = icmp ne %struct.TYPE_8__* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i8*, i8** %7, align 8
  %245 = call i8* @strtoul(i8* %244, i32* null, i32 0)
  %246 = load %struct.mystate*, %struct.mystate** %5, align 8
  %247 = getelementptr inbounds %struct.mystate, %struct.mystate* %246, i32 0, i32 5
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 3
  store i8* %245, i8** %249, align 8
  br label %449

250:                                              ; preds = %238, %234
  %251 = load i8*, i8** %4, align 8
  %252 = call i32 @strcasecmp(i8* %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = load %struct.mystate*, %struct.mystate** %5, align 8
  %256 = getelementptr inbounds %struct.mystate, %struct.mystate* %255, i32 0, i32 2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = icmp ne %struct.TYPE_5__* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load i8*, i8** %7, align 8
  %261 = call i8* @strtoul(i8* %260, i32* null, i32 0)
  %262 = load %struct.mystate*, %struct.mystate** %5, align 8
  %263 = getelementptr inbounds %struct.mystate, %struct.mystate* %262, i32 0, i32 2
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  store i8* %261, i8** %265, align 8
  br label %449

266:                                              ; preds = %254, %250
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @strcasecmp(i8* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %266
  %271 = load %struct.mystate*, %struct.mystate** %5, align 8
  %272 = getelementptr inbounds %struct.mystate, %struct.mystate* %271, i32 0, i32 2
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = icmp ne %struct.TYPE_5__* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load i8*, i8** %7, align 8
  %277 = call i8* @strdup(i8* %276)
  %278 = bitcast i8* %277 to i32*
  %279 = load %struct.mystate*, %struct.mystate** %5, align 8
  %280 = getelementptr inbounds %struct.mystate, %struct.mystate* %279, i32 0, i32 2
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  store i32* %278, i32** %282, align 8
  br label %449

283:                                              ; preds = %270, %266
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load i8*, i8** %4, align 8
  %288 = load i8*, i8** %7, align 8
  %289 = load %struct.mystate*, %struct.mystate** %5, align 8
  %290 = getelementptr inbounds %struct.mystate, %struct.mystate* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @XML_GetCurrentLineNumber(i32 %291)
  %293 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i8* %287, i8* %288, i32 %292)
  br label %294

294:                                              ; preds = %286, %283
  %295 = load i8*, i8** %4, align 8
  %296 = call i32 @strcasecmp(i8* %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load %struct.mystate*, %struct.mystate** %5, align 8
  %300 = getelementptr inbounds %struct.mystate, %struct.mystate* %299, i32 0, i32 7
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = icmp ne %struct.TYPE_6__* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load %struct.mystate*, %struct.mystate** %5, align 8
  %305 = getelementptr inbounds %struct.mystate, %struct.mystate* %304, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %305, align 8
  br label %449

306:                                              ; preds = %298, %294
  %307 = load i8*, i8** %4, align 8
  %308 = call i32 @strcasecmp(i8* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load %struct.mystate*, %struct.mystate** %5, align 8
  %312 = getelementptr inbounds %struct.mystate, %struct.mystate* %311, i32 0, i32 6
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = icmp ne %struct.TYPE_7__* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load %struct.mystate*, %struct.mystate** %5, align 8
  %317 = getelementptr inbounds %struct.mystate, %struct.mystate* %316, i32 0, i32 6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %317, align 8
  br label %449

318:                                              ; preds = %310, %306
  %319 = load i8*, i8** %4, align 8
  %320 = call i32 @strcasecmp(i8* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %377

322:                                              ; preds = %318
  %323 = load %struct.mystate*, %struct.mystate** %5, align 8
  %324 = getelementptr inbounds %struct.mystate, %struct.mystate* %323, i32 0, i32 5
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %324, align 8
  %326 = icmp ne %struct.TYPE_8__* %325, null
  br i1 %326, label %327, label %377

327:                                              ; preds = %322
  %328 = load %struct.mystate*, %struct.mystate** %5, align 8
  %329 = getelementptr inbounds %struct.mystate, %struct.mystate* %328, i32 0, i32 5
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = icmp eq i32* %332, null
  br i1 %333, label %334, label %342

334:                                              ; preds = %327
  %335 = load %struct.mystate*, %struct.mystate** %5, align 8
  %336 = getelementptr inbounds %struct.mystate, %struct.mystate* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @XML_GetCurrentLineNumber(i32 %337)
  %339 = sext i32 %338 to i64
  %340 = inttoptr i64 %339 to i8*
  %341 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %340)
  br label %342

342:                                              ; preds = %334, %327
  %343 = load %struct.mystate*, %struct.mystate** %5, align 8
  %344 = getelementptr inbounds %struct.mystate, %struct.mystate* %343, i32 0, i32 5
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %342
  %350 = load %struct.mystate*, %struct.mystate** %5, align 8
  %351 = getelementptr inbounds %struct.mystate, %struct.mystate* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @XML_GetCurrentLineNumber(i32 %352)
  %354 = sext i32 %353 to i64
  %355 = inttoptr i64 %354 to i8*
  %356 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %349, %342
  %358 = load %struct.mystate*, %struct.mystate** %5, align 8
  %359 = getelementptr inbounds %struct.mystate, %struct.mystate* %358, i32 0, i32 5
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %357
  %365 = load %struct.mystate*, %struct.mystate** %5, align 8
  %366 = getelementptr inbounds %struct.mystate, %struct.mystate* %365, i32 0, i32 5
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.mystate*, %struct.mystate** %5, align 8
  %371 = getelementptr inbounds %struct.mystate, %struct.mystate* %370, i32 0, i32 5
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  store i64 %369, i64* %373, align 8
  br label %374

374:                                              ; preds = %364, %357
  %375 = load %struct.mystate*, %struct.mystate** %5, align 8
  %376 = getelementptr inbounds %struct.mystate, %struct.mystate* %375, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %376, align 8
  br label %449

377:                                              ; preds = %322, %318
  %378 = load i8*, i8** %4, align 8
  %379 = call i32 @strcasecmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %377
  %382 = load %struct.mystate*, %struct.mystate** %5, align 8
  %383 = getelementptr inbounds %struct.mystate, %struct.mystate* %382, i32 0, i32 5
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = icmp ne %struct.TYPE_8__* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load %struct.mystate*, %struct.mystate** %5, align 8
  %388 = getelementptr inbounds %struct.mystate, %struct.mystate* %387, i32 0, i32 4
  store i32* null, i32** %388, align 8
  br label %449

389:                                              ; preds = %381, %377
  %390 = load i8*, i8** %4, align 8
  %391 = call i32 @strcasecmp(i8* %390, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %448

393:                                              ; preds = %389
  %394 = load %struct.mystate*, %struct.mystate** %5, align 8
  %395 = getelementptr inbounds %struct.mystate, %struct.mystate* %394, i32 0, i32 2
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %395, align 8
  %397 = icmp ne %struct.TYPE_5__* %396, null
  br i1 %397, label %398, label %448

398:                                              ; preds = %393
  %399 = load %struct.mystate*, %struct.mystate** %5, align 8
  %400 = getelementptr inbounds %struct.mystate, %struct.mystate* %399, i32 0, i32 2
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 2
  %403 = load i8*, i8** %402, align 8
  %404 = ptrtoint i8* %403 to i32
  %405 = load i32, i32* @NO_COUNTRY, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %415

407:                                              ; preds = %398
  %408 = load %struct.mystate*, %struct.mystate** %5, align 8
  %409 = getelementptr inbounds %struct.mystate, %struct.mystate* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @XML_GetCurrentLineNumber(i32 %410)
  %412 = sext i32 %411 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i8* %413)
  br label %415

415:                                              ; preds = %407, %398
  %416 = load %struct.mystate*, %struct.mystate** %5, align 8
  %417 = getelementptr inbounds %struct.mystate, %struct.mystate* %416, i32 0, i32 2
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = icmp eq i32* %420, null
  br i1 %421, label %422, label %430

422:                                              ; preds = %415
  %423 = load %struct.mystate*, %struct.mystate** %5, align 8
  %424 = getelementptr inbounds %struct.mystate, %struct.mystate* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @XML_GetCurrentLineNumber(i32 %425)
  %427 = sext i32 %426 to i64
  %428 = inttoptr i64 %427 to i8*
  %429 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %428)
  br label %430

430:                                              ; preds = %422, %415
  %431 = load %struct.mystate*, %struct.mystate** %5, align 8
  %432 = getelementptr inbounds %struct.mystate, %struct.mystate* %431, i32 0, i32 2
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = icmp eq i32* %435, null
  br i1 %436, label %437, label %445

437:                                              ; preds = %430
  %438 = load %struct.mystate*, %struct.mystate** %5, align 8
  %439 = getelementptr inbounds %struct.mystate, %struct.mystate* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @XML_GetCurrentLineNumber(i32 %440)
  %442 = sext i32 %441 to i64
  %443 = inttoptr i64 %442 to i8*
  %444 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i8* %443)
  br label %445

445:                                              ; preds = %437, %430
  %446 = load %struct.mystate*, %struct.mystate** %5, align 8
  %447 = getelementptr inbounds %struct.mystate, %struct.mystate* %446, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %447, align 8
  br label %449

448:                                              ; preds = %393, %389
  br label %449

449:                                              ; preds = %448, %445, %386, %374, %315, %303, %275, %259, %243, %226, %209, %199, %187, %171, %155, %145, %93, %77, %61, %45
  %450 = load %struct.mystate*, %struct.mystate** %5, align 8
  %451 = getelementptr inbounds %struct.mystate, %struct.mystate* %450, i32 0, i32 1
  %452 = load i32**, i32*** %451, align 8
  %453 = load %struct.mystate*, %struct.mystate** %5, align 8
  %454 = getelementptr inbounds %struct.mystate, %struct.mystate* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds i32*, i32** %452, i64 %455
  %457 = load i32*, i32** %456, align 8
  %458 = call i32 @sbuf_delete(i32* %457)
  %459 = load %struct.mystate*, %struct.mystate** %5, align 8
  %460 = getelementptr inbounds %struct.mystate, %struct.mystate* %459, i32 0, i32 1
  %461 = load i32**, i32*** %460, align 8
  %462 = load %struct.mystate*, %struct.mystate** %5, align 8
  %463 = getelementptr inbounds %struct.mystate, %struct.mystate* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = add i64 %464, -1
  store i64 %465, i64* %463, align 8
  %466 = getelementptr inbounds i32*, i32** %461, i64 %464
  store i32* null, i32** %466, align 8
  ret void
}

declare dso_local i32 @sbuf_finish(i32*) #1

declare dso_local i8* @sbuf_data(i32*) #1

declare dso_local i32 @sbuf_len(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @decode_flag(%struct.mystate*, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @XML_GetCurrentLineNumber(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sbuf_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
