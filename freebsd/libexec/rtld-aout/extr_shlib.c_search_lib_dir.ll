; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_shlib.c_search_lib_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_shlib.c_search_lib_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXDEWEY = common dso_local global i32 0, align 4
@MAXNAMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"so.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @search_lib_dir(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @MAXDEWEY, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @MAXNAMLEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %33 = load i32, i32* @MAXNAMLEN, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @opendir(i8* %37)
  store i32* %38, i32** %13, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  store i32 1, i32* %20, align 4
  br label %194

41:                                               ; preds = %5
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %45 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %45, align 16
  %46 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %46, align 16
  br label %47

47:                                               ; preds = %168, %151, %87, %41
  %48 = load i32*, i32** %13, align 8
  %49 = call %struct.dirent* @readdir(i32* %48)
  store %struct.dirent* %49, %struct.dirent** %14, align 8
  %50 = icmp ne %struct.dirent* %49, null
  br i1 %50, label %51, label %169

51:                                               ; preds = %47
  %52 = load %struct.dirent*, %struct.dirent** %14, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = add i64 3, %57
  %59 = add i64 %58, 2
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %87, label %61

61:                                               ; preds = %51
  %62 = load %struct.dirent*, %struct.dirent** %14, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %61
  %68 = load %struct.dirent*, %struct.dirent** %14, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i64 @strncmp(i8* %71, i8* %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load %struct.dirent*, %struct.dirent** %14, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add i64 3, %81
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 46
  br i1 %86, label %87, label %88

87:                                               ; preds = %77, %67, %61, %51
  br label %47

88:                                               ; preds = %77
  %89 = load %struct.dirent*, %struct.dirent** %14, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %21, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = call i64 @strncmp(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %155

99:                                               ; preds = %88
  %100 = load i32, i32* @MAXDEWEY, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %22, align 8
  %103 = alloca i32, i64 %101, align 16
  store i64 %101, i64* %23, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  %106 = call i32 @getdewey(i32* %103, i8* %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i32 2, i32* %20, align 4
  br label %151

110:                                              ; preds = %99
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = getelementptr inbounds i32, i32* %103, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 2, i32* %20, align 4
  br label %151

121:                                              ; preds = %114
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = getelementptr inbounds i32, i32* %103, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 2, i32* %20, align 4
  br label %151

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %121
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call i64 @cmpndewey(i32* %103, i32 %135, i32* %28, i32 %136)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 2, i32* %20, align 4
  br label %151

140:                                              ; preds = %134
  %141 = load %struct.dirent*, %struct.dirent** %14, align 8
  %142 = getelementptr inbounds %struct.dirent, %struct.dirent* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcpy(i8* %36, i8* %143)
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32 @bcopy(i32* %103, i32* %28, i32 %148)
  %150 = load i32, i32* %24, align 4
  store i32 %150, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %140, %139, %131, %120, %109
  %152 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %20, align 4
  switch i32 %153, label %197 [
    i32 0, label %154
    i32 2, label %47
  ]

154:                                              ; preds = %151
  br label %168

155:                                              ; preds = %88
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i8*, i8** %21, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.dirent*, %struct.dirent** %14, align 8
  %164 = getelementptr inbounds %struct.dirent, %struct.dirent* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcpy(i8* %32, i8* %165)
  br label %167

167:                                              ; preds = %162, %158, %155
  br label %168

168:                                              ; preds = %167, %154
  br label %47

169:                                              ; preds = %47
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @closedir(i32* %170)
  %172 = getelementptr inbounds i8, i8* %36, i64 0
  %173 = load i8, i8* %172, align 16
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = getelementptr inbounds i32, i32* %28, i64 0
  %178 = load i32, i32* %177, align 16
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds i32, i32* %28, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %10, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = call i8* @concat(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  store i8* %184, i8** %6, align 8
  store i32 1, i32* %20, align 4
  br label %194

185:                                              ; preds = %169
  %186 = getelementptr inbounds i8, i8* %32, i64 0
  %187 = load i8, i8* %186, align 16
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i8*, i8** %7, align 8
  %192 = call i8* @concat(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  store i8* %192, i8** %6, align 8
  store i32 1, i32* %20, align 4
  br label %194

193:                                              ; preds = %185
  store i8* null, i8** %6, align 8
  store i32 1, i32* %20, align 4
  br label %194

194:                                              ; preds = %193, %190, %176, %40
  %195 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i8*, i8** %6, align 8
  ret i8* %196

197:                                              ; preds = %151
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @getdewey(i32*, i8*) #2

declare dso_local i64 @cmpndewey(i32*, i32, i32*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i8* @concat(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
