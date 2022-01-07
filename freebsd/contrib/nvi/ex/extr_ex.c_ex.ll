; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__, i32, i32, i32, i32 (%struct.TYPE_32__*, i32, %struct.TYPE_33__*, i32)*, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i32, i8*, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_33__*, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@q = common dso_local global i32 0, align 4
@G_SCRIPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"script\00", align 1
@TXT_BACKSLASH = common dso_local global i32 0, align 4
@TXT_CNTRLD = common dso_local global i32 0, align 4
@TXT_CR = common dso_local global i32 0, align 4
@SC_STATUS = common dso_local global i32 0, align 4
@SC_EX_SILENT = common dso_local global i32 0, align 4
@O_BEAUTIFY = common dso_local global i32 0, align 4
@TXT_BEAUTIFY = common dso_local global i32 0, align 4
@O_PROMPT = common dso_local global i32 0, align 4
@TXT_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@E_NRSEP = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"170|Interrupted\00", align 1
@G_SRESTART = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4
@SC_EXIT = common dso_local global i32 0, align 4
@SC_EXIT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex(%struct.TYPE_32__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_32__** %0, %struct.TYPE_32__*** %3, align 8
  %10 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %3, align 8
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_32__* %11, %struct.TYPE_32__** %7, align 8
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* %14, %struct.TYPE_32__** %5, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %16 = call i32* @EXP(%struct.TYPE_32__* %15)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %18 = call i64 @ex_init(%struct.TYPE_32__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %235

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %28, %21
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_33__* @SLIST_FIRST(i32 %25)
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %6, align 8
  %27 = icmp ne %struct.TYPE_33__* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 4
  %31 = load i32 (%struct.TYPE_32__*, i32, %struct.TYPE_33__*, i32)*, i32 (%struct.TYPE_32__*, i32, %struct.TYPE_33__*, i32)** %30, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %37, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %31(%struct.TYPE_32__* %32, i32 %35, %struct.TYPE_33__* %38, i32 %41)
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @q, align 4
  %47 = call i32 @SLIST_REMOVE_HEAD(i32 %45, i32 %46)
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_33__* %50)
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %53 = call i32 @free(%struct.TYPE_33__* %52)
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %56 = load i32, i32* @G_SCRIPTED, align 4
  %57 = call i64 @F_ISSET(%struct.TYPE_32__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* @TXT_BACKSLASH, align 4
  %68 = load i32, i32* @TXT_CNTRLD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @TXT_CR, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @LF_INIT(i32 %71)
  br label %73

73:                                               ; preds = %228, %66
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %75 = load i32, i32* @SC_STATUS, align 4
  %76 = call i64 @F_ISSET(%struct.TYPE_32__* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %80 = load i32, i32* @SC_EX_SILENT, align 4
  %81 = call i64 @F_ISSET(%struct.TYPE_32__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msgq_status(%struct.TYPE_32__* %84, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %91 = load i32, i32* @SC_STATUS, align 4
  %92 = call i32 @F_CLR(%struct.TYPE_32__* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %73
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %95 = call i32 @ex_fflush(%struct.TYPE_32__* %94)
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %97 = load i32, i32* @O_BEAUTIFY, align 4
  %98 = call i64 @O_ISSET(%struct.TYPE_32__* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @TXT_BEAUTIFY, align 4
  %102 = call i32 @LF_SET(i32 %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %105 = load i32, i32* @O_PROMPT, align 4
  %106 = call i64 @O_ISSET(%struct.TYPE_32__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @TXT_PROMPT, align 4
  %110 = call i32 @LF_SET(i32 %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %113 = call i32 @CLR_INTERRUPT(%struct.TYPE_32__* %112)
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @ex_txt(%struct.TYPE_32__* %114, i32 %117, i8 signext 58, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  store i32 1, i32* %2, align 4
  br label %235

122:                                              ; preds = %111
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %124 = call i64 @INTERRUPTED(%struct.TYPE_32__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %128 = call i32 @ex_puts(%struct.TYPE_32__* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %130 = call i32 @ex_fflush(%struct.TYPE_32__* %129)
  br label %228

131:                                              ; preds = %122
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 0
  %134 = call i32 @CLEAR_EX_PARSER(%struct.TYPE_31__* %133)
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_30__* @TAILQ_FIRST(i32 %137)
  store %struct.TYPE_30__* %138, %struct.TYPE_30__** %8, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %131
  %144 = call i32 @L(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 2
  store i32 1, i32* %150, align 8
  br label %164

151:                                              ; preds = %131
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 8
  br label %164

164:                                              ; preds = %151, %143
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load i32, i32* @E_NRSEP, align 4
  %168 = call i32 @F_INIT(%struct.TYPE_31__* %166, i32 %167)
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %170 = call i64 @ex_cmd(%struct.TYPE_32__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %174 = load i32, i32* @G_SCRIPTED, align 4
  %175 = call i64 @F_ISSET(%struct.TYPE_32__* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 1, i32* %2, align 4
  br label %235

178:                                              ; preds = %172, %164
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %180 = call i64 @INTERRUPTED(%struct.TYPE_32__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %184 = call i32 @CLR_INTERRUPT(%struct.TYPE_32__* %183)
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %186 = load i32, i32* @M_ERR, align 4
  %187 = call i32 @msgq(%struct.TYPE_32__* %185, i32 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %178
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %190 = load i32, i32* @G_SRESTART, align 4
  %191 = call i64 @F_ISSET(%struct.TYPE_32__* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %195 = load i32, i32* @SC_SSWITCH, align 4
  %196 = load i32, i32* @SC_VI, align 4
  %197 = or i32 %195, %196
  %198 = call i64 @F_ISSET(%struct.TYPE_32__* %194, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193, %188
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %202 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %3, align 8
  store %struct.TYPE_32__* %201, %struct.TYPE_32__** %202, align 8
  br label %234

203:                                              ; preds = %193
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %205 = load i32, i32* @SC_FSWITCH, align 4
  %206 = call i32 @F_CLR(%struct.TYPE_32__* %204, i32 %205)
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %208 = load i32, i32* @SC_EXIT, align 4
  %209 = load i32, i32* @SC_EXIT_FORCE, align 4
  %210 = or i32 %208, %209
  %211 = call i64 @F_ISSET(%struct.TYPE_32__* %207, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %203
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %216 = load i32, i32* @SC_EXIT_FORCE, align 4
  %217 = call i64 @F_ISSET(%struct.TYPE_32__* %215, i32 %216)
  %218 = call i64 @file_end(%struct.TYPE_32__* %214, i32* null, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  store i32 1, i32* %2, align 4
  br label %235

221:                                              ; preds = %213
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %223 = call %struct.TYPE_32__* @screen_next(%struct.TYPE_32__* %222)
  %224 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %3, align 8
  store %struct.TYPE_32__* %223, %struct.TYPE_32__** %224, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %226 = call i32 @screen_end(%struct.TYPE_32__* %225)
  store i32 %226, i32* %2, align 4
  br label %235

227:                                              ; preds = %203
  br label %228

228:                                              ; preds = %227, %126
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  br label %73

234:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %234, %221, %220, %177, %121, %20
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32* @EXP(%struct.TYPE_32__*) #1

declare dso_local i64 @ex_init(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_33__* @SLIST_FIRST(i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_33__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @LF_INIT(i32) #1

declare dso_local i32 @msgq_status(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ex_fflush(%struct.TYPE_32__*) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i32 @CLR_INTERRUPT(%struct.TYPE_32__*) #1

declare dso_local i64 @ex_txt(%struct.TYPE_32__*, i32, i8 signext, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_32__*) #1

declare dso_local i32 @ex_puts(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @CLEAR_EX_PARSER(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @L(i8*) #1

declare dso_local i32 @F_INIT(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ex_cmd(%struct.TYPE_32__*) #1

declare dso_local i32 @msgq(%struct.TYPE_32__*, i32, i8*) #1

declare dso_local i64 @file_end(%struct.TYPE_32__*, i32*, i64) #1

declare dso_local %struct.TYPE_32__* @screen_next(%struct.TYPE_32__*) #1

declare dso_local i32 @screen_end(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
