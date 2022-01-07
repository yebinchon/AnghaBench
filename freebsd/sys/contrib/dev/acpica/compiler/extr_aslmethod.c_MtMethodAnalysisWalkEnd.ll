; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmethod.c_MtMethodAnalysisWalkEnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmethod.c_MtMethodAnalysisWalkEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8*, i32, i8*, %struct.TYPE_18__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_20__* }

@.str = private unnamed_addr constant [33 x i8] c"No method info for method! [%s]\0A\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No method info for this method\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@OP_HAS_NO_EXIT = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_RETURN_TYPES = common dso_local global i32 0, align 4
@OP_METHOD_SOME_NO_RETVAL = common dso_local global i32 0, align 4
@OP_METHOD_NO_RETVAL = common dso_local global i32 0, align 4
@ASL_MSG_UNREACHABLE_CODE = common dso_local global i32 0, align 4
@OP_IF_HAS_NO_EXIT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MtMethodAnalysisWalkEnd(%struct.TYPE_22__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %8, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %9, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %35 [
    i32 130, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @ASL_ERROR, align 4
  %29 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = call i32 @AslError(i32 %28, i32 %29, %struct.TYPE_22__* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @CmCleanupAndExit()
  %33 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %33, i32* %4, align 4
  br label %244

34:                                               ; preds = %19
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %217 [
    i32 130, label %41
    i32 129, label %120
    i32 128, label %123
    i32 131, label %156
    i32 132, label %190
  ]

41:                                               ; preds = %36
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = call i32 @AnLastStatementIsReturn(%struct.TYPE_22__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %50, %41
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* @ASL_WARNING, align 4
  %75 = load i32, i32* @ASL_MSG_RETURN_TYPES, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @AslError(i32 %74, i32 %75, %struct.TYPE_22__* %76, i8* %80)
  br label %82

82:                                               ; preds = %73, %68, %63
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @OP_METHOD_SOME_NO_RETVAL, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  br label %106

99:                                               ; preds = %87
  %100 = load i32, i32* @OP_METHOD_NO_RETVAL, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %82
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %110 = call i32 @ApCheckForPredefinedMethod(%struct.TYPE_22__* %108, %struct.TYPE_20__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = call i32 @ApCheckForGpeNameConflict(%struct.TYPE_22__* %113)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = call i32 @ApCheckRegMethod(%struct.TYPE_22__* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = call i32 @ACPI_FREE(%struct.TYPE_20__* %118)
  br label %242

120:                                              ; preds = %36
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = call i32 @ApCheckForGpeNameConflict(%struct.TYPE_22__* %121)
  br label %242

123:                                              ; preds = %36
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = call i32 @ApCheckPredefinedReturnValue(%struct.TYPE_22__* %124, %struct.TYPE_20__* %125)
  %127 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %127
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = icmp ne %struct.TYPE_22__* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %123
  %148 = load i32, i32* @ASL_WARNING, align 4
  %149 = load i32, i32* @ASL_MSG_UNREACHABLE_CODE, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = call i32 @AslError(i32 %148, i32 %149, %struct.TYPE_22__* %153, i8* null)
  br label %155

155:                                              ; preds = %147, %123
  br label %242

156:                                              ; preds = %36
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %156
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = icmp ne %struct.TYPE_22__* %168, null
  br i1 %169, label %170, label %189

170:                                              ; preds = %164
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 132
  br i1 %178, label %179, label %189

179:                                              ; preds = %170
  %180 = load i32, i32* @OP_IF_HAS_NO_EXIT, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %180
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %179, %170, %164, %156
  br label %242

190:                                              ; preds = %36
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %190
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @OP_IF_HAS_NO_EXIT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %198
  %207 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %207
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %206, %198, %190
  br label %242

217:                                              ; preds = %36
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %217
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = icmp ne %struct.TYPE_18__* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = load i32, i32* @OP_HAS_NO_EXIT, align 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %232
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %231, %225, %217
  br label %242

242:                                              ; preds = %241, %216, %189, %155, %120, %117
  %243 = load i32, i32* @AE_OK, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %242, %22
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @CmCleanupAndExit(...) #1

declare dso_local i32 @AnLastStatementIsReturn(%struct.TYPE_22__*) #1

declare dso_local i32 @ApCheckForPredefinedMethod(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ApCheckForGpeNameConflict(%struct.TYPE_22__*) #1

declare dso_local i32 @ApCheckRegMethod(%struct.TYPE_22__*) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_20__*) #1

declare dso_local i32 @ApCheckPredefinedReturnValue(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
