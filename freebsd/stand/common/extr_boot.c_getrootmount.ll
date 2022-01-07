; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_getrootmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_getrootmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"vfs.root.mountfrom\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s/etc/fstab\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"vfs.root.mountfrom.options\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"zfs:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrootmount(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

16:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %220

25:                                               ; preds = %16
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %26

26:                                               ; preds = %176, %129, %105, %66, %41, %25
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @fgetstr(i8* %27, i32 128, i32 %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %213

31:                                               ; preds = %26
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  br label %26

42:                                               ; preds = %36
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  br label %44

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %26

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 0, i8* %68, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %73 = call i8* @strdup(i8* %72)
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %86, %67
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isspace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  br label %74

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 47
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99, %94, %89
  br label %26

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8* %108, i8** %5, align 8
  br label %109

109:                                              ; preds = %121, %106
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ false, %109 ], [ %118, %114 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  br label %109

124:                                              ; preds = %119
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %26

130:                                              ; preds = %124
  %131 = load i8*, i8** %5, align 8
  store i8* %131, i8** %6, align 8
  br label %132

132:                                              ; preds = %145, %130
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isspace(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %137, %132
  %144 = phi i1 [ false, %132 ], [ %142, %137 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %5, align 8
  br label %132

148:                                              ; preds = %143
  %149 = load i8*, i8** %5, align 8
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %6, align 8
  %153 = call i8* @strdup(i8* %152)
  store i8* %153, i8** %8, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8* %155, i8** %5, align 8
  br label %156

156:                                              ; preds = %168, %148
  %157 = load i8*, i8** %5, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = call i64 @isspace(i8 signext %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ false, %156 ], [ %165, %161 ]
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %5, align 8
  br label %156

171:                                              ; preds = %166
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %26

177:                                              ; preds = %171
  %178 = load i8*, i8** %5, align 8
  store i8* %178, i8** %6, align 8
  br label %179

179:                                              ; preds = %192, %177
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i8*, i8** %5, align 8
  %186 = load i8, i8* %185, align 1
  %187 = call i64 @isspace(i8 signext %186)
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %184, %179
  %191 = phi i1 [ false, %179 ], [ %189, %184 ]
  br i1 %191, label %192, label %195

192:                                              ; preds = %190
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %5, align 8
  br label %179

195:                                              ; preds = %190
  %196 = load i8*, i8** %5, align 8
  store i8 0, i8* %196, align 1
  %197 = load i8*, i8** %6, align 8
  %198 = call i8* @strdup(i8* %197)
  store i8* %198, i8** %9, align 8
  %199 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %200 = load i8*, i8** %8, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %200, i8* %201)
  %203 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %204 = call i32 @setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %203, i32 0)
  %205 = call i8* @getenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %206 = icmp eq i8* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %195
  %208 = load i8*, i8** %9, align 8
  %209 = call i32 @setenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %208, i32 0)
  br label %210

210:                                              ; preds = %207, %195
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @free(i8* %211)
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %210, %26
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @close(i32 %214)
  %216 = load i8*, i8** %7, align 8
  %217 = call i32 @free(i8* %216)
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 @free(i8* %218)
  br label %220

220:                                              ; preds = %213, %24
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %220
  %224 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %224, i8** %12, align 8
  %225 = load i8*, i8** %12, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %244

227:                                              ; preds = %223
  %228 = load i8*, i8** %12, align 8
  %229 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %228, i32 4)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %227
  %232 = load i8*, i8** %12, align 8
  %233 = call i8* @strdup(i8* %232)
  store i8* %233, i8** %5, align 8
  %234 = load i8*, i8** %5, align 8
  %235 = load i8*, i8** %5, align 8
  %236 = call i32 @strlen(i8* %235)
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %234, i64 %238
  store i8 0, i8* %239, align 1
  %240 = load i8*, i8** %5, align 8
  %241 = call i32 @setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %240, i32 0)
  store i32 0, i32* %11, align 4
  %242 = load i8*, i8** %5, align 8
  %243 = call i32 @free(i8* %242)
  br label %244

244:                                              ; preds = %231, %227, %223
  br label %245

245:                                              ; preds = %244, %220
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %245, %15
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fgetstr(i8*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
