; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_stepBreak.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_stepBreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i8*, %struct.TYPE_31__*, %struct.TYPE_29__, i32, %struct.TYPE_31__**, i64, %struct.TYPE_28__* }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_29__ = type { i8*, i32, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"on-step\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"next: %.*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"sorry - can't do that\00", align 1
@VM_RESTART = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@FICL_PROMPT = common dso_local global i32 0, align 4
@VM_ABORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@VM_OUTOFTEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"i -- step In\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"o -- step Over\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"g -- Go (execute to completion)\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"l -- List source code\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"q -- Quit (stop debugging and abort)\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"x -- eXecute the rest of the line as ficl words\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stepBreak(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.TYPE_30__, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %23 = call i32 @assert(%struct.TYPE_31__* %22)
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %30 = call i32 @assert(%struct.TYPE_31__* %29)
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %37 = bitcast %struct.TYPE_31__* %36 to %struct.TYPE_31__**
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 4
  store %struct.TYPE_31__** %37, %struct.TYPE_31__*** %39, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %44, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %47, align 8
  store %struct.TYPE_31__* %45, %struct.TYPE_31__** %48, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = call %struct.TYPE_31__* @ficlLookup(%struct.TYPE_28__* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_31__* %52, %struct.TYPE_31__** %5, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = icmp ne %struct.TYPE_31__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %16
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %58 = call i32 @ficlExecXT(%struct.TYPE_32__* %56, %struct.TYPE_31__* %57)
  br label %59

59:                                               ; preds = %55, %16
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %64, align 8
  store %struct.TYPE_31__* %65, %struct.TYPE_31__** %4, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %71, i32 %74)
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @vmTextOut(%struct.TYPE_32__* %76, i8* %79, i32 1)
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %82 = call i32 @debugPrompt(%struct.TYPE_32__* %81)
  br label %86

83:                                               ; preds = %1
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %59
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %88 = call i64 @vmGetWord(%struct.TYPE_32__* %87)
  %89 = bitcast %struct.TYPE_30__* %6 to i64*
  store i64 %88, i64* %89, align 4
  %90 = bitcast %struct.TYPE_30__* %3 to i8*
  %91 = bitcast %struct.TYPE_30__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 8, i1 false)
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strincmp(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %86
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %100 = call i32 @stepIn(%struct.TYPE_32__* %99)
  br label %235

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @strincmp(i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %236

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strincmp(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %109
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %119, align 8
  %121 = bitcast %struct.TYPE_31__** %120 to i32*
  %122 = call %struct.TYPE_31__* @findEnclosingWord(%struct.TYPE_32__* %117, i32* %121)
  store %struct.TYPE_31__* %122, %struct.TYPE_31__** %7, align 8
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %124 = icmp ne %struct.TYPE_31__* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %130 = call i32 @stackPushPtr(i32 %128, %struct.TYPE_31__* %129)
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %132 = call i32 @seeXT(%struct.TYPE_32__* %131)
  br label %136

133:                                              ; preds = %116
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %135 = call i32 @vmTextOut(%struct.TYPE_32__* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %138 = load i32, i32* @VM_RESTART, align 4
  %139 = call i32 @vmThrow(%struct.TYPE_32__* %137, i32 %138)
  br label %233

140:                                              ; preds = %109
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strincmp(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %149 = call i32 @stepOver(%struct.TYPE_32__* %148)
  br label %232

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strincmp(i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %159 = load i32, i32* @FICL_PROMPT, align 4
  %160 = call i32 @ficlTextOut(%struct.TYPE_32__* %158, i32 %159, i32 0)
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %162 = load i32, i32* @VM_ABORT, align 4
  %163 = call i32 @vmThrow(%struct.TYPE_32__* %161, i32 %162)
  br label %231

164:                                              ; preds = %150
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strincmp(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %212, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  store i8* %181, i8** %9, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %10, align 4
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %192, align 8
  store %struct.TYPE_31__* %193, %struct.TYPE_31__** %11, align 8
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @ficlExecC(%struct.TYPE_32__* %194, i8* %195, i32 %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @VM_OUTOFTEXT, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %171
  %202 = load i32, i32* @VM_RESTART, align 4
  store i32 %202, i32* %8, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 1
  store %struct.TYPE_31__* %203, %struct.TYPE_31__** %205, align 8
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %207 = call i32 @vmTextOut(%struct.TYPE_32__* %206, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %208

208:                                              ; preds = %201, %171
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @vmThrow(%struct.TYPE_32__* %209, i32 %210)
  br label %230

212:                                              ; preds = %164
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %214 = call i32 @vmTextOut(%struct.TYPE_32__* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %216 = call i32 @vmTextOut(%struct.TYPE_32__* %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %218 = call i32 @vmTextOut(%struct.TYPE_32__* %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %220 = call i32 @vmTextOut(%struct.TYPE_32__* %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %222 = call i32 @vmTextOut(%struct.TYPE_32__* %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %224 = call i32 @vmTextOut(%struct.TYPE_32__* %223, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %226 = call i32 @debugPrompt(%struct.TYPE_32__* %225)
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %228 = load i32, i32* @VM_RESTART, align 4
  %229 = call i32 @vmThrow(%struct.TYPE_32__* %227, i32 %228)
  br label %230

230:                                              ; preds = %212, %208
  br label %231

231:                                              ; preds = %230, %157
  br label %232

232:                                              ; preds = %231, %147
  br label %233

233:                                              ; preds = %232, %136
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234, %98
  br label %236

236:                                              ; preds = %235, %108
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @ficlLookup(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @ficlExecXT(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @vmTextOut(%struct.TYPE_32__*, i8*, i32) #1

declare dso_local i32 @debugPrompt(%struct.TYPE_32__*) #1

declare dso_local i64 @vmGetWord(%struct.TYPE_32__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strincmp(i32, i8*, i32) #1

declare dso_local i32 @stepIn(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_31__* @findEnclosingWord(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @stackPushPtr(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @seeXT(%struct.TYPE_32__*) #1

declare dso_local i32 @vmThrow(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @stepOver(%struct.TYPE_32__*) #1

declare dso_local i32 @ficlTextOut(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @ficlExecC(%struct.TYPE_32__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
