; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_ex_exrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_ex_exrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.stat = type { i32, i32 }

@_PATH_SYSEXRC = common dso_local global i8* null, align 8
@SC_EXIT = common dso_local global i32 0, align 4
@SC_EXIT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NEXINIT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXINIT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@_PATH_NEXRC = common dso_local global i8* null, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@_PATH_EXRC = common dso_local global i8* null, align 8
@O_EXRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_exrc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i8*, i8** @_PATH_SYSEXRC, align 8
  %13 = call i32 @exrc_isok(%struct.TYPE_11__* %11, %struct.stat* %4, i8* %12, i32 1, i32 0)
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %1, %1
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load i8*, i8** @_PATH_SYSEXRC, align 8
  %18 = call i32 @ex_run_file(%struct.TYPE_11__* %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %230

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %1, %21, %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @EXCMD_RUNNING(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @ex_cmd(%struct.TYPE_11__* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* @SC_EXIT, align 4
  %34 = load i32, i32* @SC_EXIT_FORCE, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @F_ISSET(%struct.TYPE_11__* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %230

39:                                               ; preds = %31
  %40 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 1
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @CHAR2INT(%struct.TYPE_11__* %43, i8* %44, i64 %47, i32* %48, i64 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %53, 1
  %55 = call i64 @ex_run_str(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %52, i64 %54, i32 1, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %230

58:                                               ; preds = %42
  br label %141

59:                                               ; preds = %39
  %60 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %60, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @CHAR2INT(%struct.TYPE_11__* %63, i8* %64, i64 %67, i32* %68, i64 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, 1
  %75 = call i64 @ex_run_str(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %72, i64 %74, i32 1, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %230

78:                                               ; preds = %62
  br label %140

79:                                               ; preds = %59
  %80 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %80, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %139

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %139

87:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** @_PATH_NEXRC, align 8
  %90 = call i8* @join(i8* %88, i8* %89)
  store i8* %90, i8** %7, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = load i32, i32* @M_SYSERR, align 4
  %95 = call i32 @msgq(%struct.TYPE_11__* %93, i32 %94, i32* null)
  store i32 1, i32* %2, align 4
  br label %230

96:                                               ; preds = %87
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @exrc_isok(%struct.TYPE_11__* %97, %struct.stat* %4, i8* %98, i32 0, i32 1)
  switch i32 %99, label %131 [
    i32 130, label %100
    i32 129, label %123
    i32 128, label %124
  ]

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** @_PATH_EXRC, align 8
  %105 = call i8* @join(i8* %103, i8* %104)
  store i8* %105, i8** %7, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = load i32, i32* @M_SYSERR, align 4
  %110 = call i32 @msgq(%struct.TYPE_11__* %108, i32 %109, i32* null)
  store i32 1, i32* %2, align 4
  br label %230

111:                                              ; preds = %100
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @exrc_isok(%struct.TYPE_11__* %112, %struct.stat* %4, i8* %113, i32 0, i32 1)
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @ex_run_file(%struct.TYPE_11__* %117, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %116, %111
  br label %131

123:                                              ; preds = %96
  br label %131

124:                                              ; preds = %96
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @ex_run_file(%struct.TYPE_11__* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %131

131:                                              ; preds = %96, %130, %123, %122
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %230

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %82, %79
  br label %140

140:                                              ; preds = %139, %78
  br label %141

141:                                              ; preds = %140, %58
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @EXCMD_RUNNING(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = call i32 @ex_cmd(%struct.TYPE_11__* %148)
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = load i32, i32* @SC_EXIT, align 4
  %153 = load i32, i32* @SC_EXIT_FORCE, align 4
  %154 = or i32 %152, %153
  %155 = call i64 @F_ISSET(%struct.TYPE_11__* %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %230

158:                                              ; preds = %150
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = load i32, i32* @O_EXRC, align 4
  %161 = call i64 @O_ISSET(%struct.TYPE_11__* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %229

163:                                              ; preds = %158
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %165 = load i8*, i8** @_PATH_NEXRC, align 8
  %166 = call i32 @exrc_isok(%struct.TYPE_11__* %164, %struct.stat* %5, i8* %165, i32 0, i32 0)
  switch i32 %166, label %211 [
    i32 130, label %167
    i32 129, label %191
    i32 128, label %192
  ]

167:                                              ; preds = %163
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = load i8*, i8** @_PATH_EXRC, align 8
  %170 = call i32 @exrc_isok(%struct.TYPE_11__* %168, %struct.stat* %5, i8* %169, i32 0, i32 0)
  %171 = icmp eq i32 %170, 128
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178, %172
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = load i8*, i8** @_PATH_EXRC, align 8
  %187 = call i32 @ex_run_file(%struct.TYPE_11__* %185, i8* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %2, align 4
  br label %230

190:                                              ; preds = %184, %178, %167
  br label %211

191:                                              ; preds = %163
  br label %211

192:                                              ; preds = %163
  %193 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %194, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %200, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %198, %192
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %206 = load i8*, i8** @_PATH_NEXRC, align 8
  %207 = call i32 @ex_run_file(%struct.TYPE_11__* %205, i8* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 1, i32* %2, align 4
  br label %230

210:                                              ; preds = %204, %198
  br label %211

211:                                              ; preds = %163, %210, %191, %190
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @EXCMD_RUNNING(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %219 = call i32 @ex_cmd(%struct.TYPE_11__* %218)
  br label %220

220:                                              ; preds = %217, %211
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %222 = load i32, i32* @SC_EXIT, align 4
  %223 = load i32, i32* @SC_EXIT_FORCE, align 4
  %224 = or i32 %222, %223
  %225 = call i64 @F_ISSET(%struct.TYPE_11__* %221, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %230

228:                                              ; preds = %220
  br label %229

229:                                              ; preds = %228, %158
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %229, %227, %209, %189, %157, %136, %107, %92, %77, %57, %38, %20
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @exrc_isok(%struct.TYPE_11__*, %struct.stat*, i8*, i32, i32) #1

declare dso_local i32 @ex_run_file(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @EXCMD_RUNNING(i32) #1

declare dso_local i32 @ex_cmd(%struct.TYPE_11__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_11__*, i8*, i64, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ex_run_str(%struct.TYPE_11__*, i8*, i32*, i64, i32, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @msgq(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
