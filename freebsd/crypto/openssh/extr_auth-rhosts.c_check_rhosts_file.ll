; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-rhosts.c_check_rhosts_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-rhosts.c_check_rhosts_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"User %s hosts file %s is not a regular file\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"NO_PLUS\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%1023s %1023s %1023s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Found empty line in %.100s.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Found garbage in %.100s.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Ignoring wild host/user names in %.100s.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Matched negative entry in %.100s.\00", align 1
@RBUFLN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*)* @check_rhosts_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rhosts_file(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = load i32, i32* @O_NONBLOCK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %23, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %237

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @fstat(i32 %31, %struct.stat* %15)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @close(i32 %35)
  store i32 0, i32* %6, align 4
  br label %237

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISREG(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @logit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @close(i32 %46)
  store i32 0, i32* %6, align 4
  br label %237

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @unset_nonblock(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32* @fdopen(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %52, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @close(i32 %55)
  store i32 0, i32* %6, align 4
  br label %237

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %223, %216, %202, %190, %169, %118, %115, %107, %100, %95, %57
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @fgets(i8* %59, i32 1024, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %234

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  store i8* %64, i8** %21, align 8
  br label %65

65:                                               ; preds = %78, %63
  %66 = load i8*, i8** %21, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %21, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 9
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ true, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %21, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %21, align 8
  br label %65

81:                                               ; preds = %75
  %82 = load i8*, i8** %21, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 35
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %21, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %21, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91, %86, %81
  br label %58

96:                                               ; preds = %91
  %97 = load i8*, i8** %21, align 8
  %98 = call i64 @strncmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %58

101:                                              ; preds = %96
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %106 = call i32 @sscanf(i8* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %103, i8* %104, i8* %105)
  switch i32 %106, label %118 [
    i32 0, label %107
    i32 1, label %110
    i32 2, label %114
    i32 3, label %115
  ]

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @auth_debug_add(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %58

110:                                              ; preds = %101
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @strlcpy(i8* %111, i8* %112, i32 1024)
  br label %119

114:                                              ; preds = %101
  br label %119

115:                                              ; preds = %101
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @auth_debug_add(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  br label %58

118:                                              ; preds = %101
  br label %58

119:                                              ; preds = %114, %110
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  store i8* %120, i8** %19, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  store i8* %121, i8** %20, align 8
  store i32 0, i32* %22, align 4
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 45
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  store i32 1, i32* %22, align 4
  %128 = load i8*, i8** %19, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %19, align 8
  br label %140

130:                                              ; preds = %119
  %131 = load i8*, i8** %19, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 43
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i8*, i8** %19, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %19, align 8
  br label %139

139:                                              ; preds = %136, %130
  br label %140

140:                                              ; preds = %139, %127
  %141 = load i8*, i8** %20, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 45
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  store i32 1, i32* %22, align 4
  %147 = load i8*, i8** %20, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %20, align 8
  br label %159

149:                                              ; preds = %140
  %150 = load i8*, i8** %20, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 43
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i8*, i8** %20, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %20, align 8
  br label %158

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %146
  %160 = load i8*, i8** %19, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %20, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164, %159
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @auth_debug_add(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %58

172:                                              ; preds = %164
  %173 = load i8*, i8** %19, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 64
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load i8*, i8** %19, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @innetgr(i8* %180, i8* %181, i8* null, i32* null)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %178
  %185 = load i8*, i8** %19, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 @innetgr(i8* %186, i8* %187, i8* null, i32* null)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %58

191:                                              ; preds = %184, %178
  br label %204

192:                                              ; preds = %172
  %193 = load i8*, i8** %19, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = call i64 @strcasecmp(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i8*, i8** %19, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = call i64 @strcmp(i8* %198, i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %58

203:                                              ; preds = %197, %192
  br label %204

204:                                              ; preds = %203, %191
  %205 = load i8*, i8** %20, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 64
  br i1 %209, label %210, label %218

210:                                              ; preds = %204
  %211 = load i8*, i8** %20, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8*, i8** %10, align 8
  %214 = call i32 @innetgr(i8* %212, i8* null, i8* %213, i32* null)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %210
  br label %58

217:                                              ; preds = %210
  br label %225

218:                                              ; preds = %204
  %219 = load i8*, i8** %20, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = call i64 @strcmp(i8* %219, i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %58

224:                                              ; preds = %218
  br label %225

225:                                              ; preds = %224, %217
  %226 = load i32*, i32** %12, align 8
  %227 = call i32 @fclose(i32* %226)
  %228 = load i32, i32* %22, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i8*, i8** %7, align 8
  %232 = call i32 @auth_debug_add(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %231)
  store i32 0, i32* %6, align 4
  br label %237

233:                                              ; preds = %225
  store i32 1, i32* %6, align 4
  br label %237

234:                                              ; preds = %58
  %235 = load i32*, i32** %12, align 8
  %236 = call i32 @fclose(i32* %235)
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %234, %233, %230, %54, %42, %34, %29
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @logit(i8*, i8*, i8*) #1

declare dso_local i32 @unset_nonblock(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @auth_debug_add(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @innetgr(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
