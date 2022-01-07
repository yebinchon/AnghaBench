; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_fn_filename_completion_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_fn_filename_completion_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }

@fn_filename_completion_function.dir = internal global i32* null, align 8
@fn_filename_completion_function.filename = internal global i8* null, align 8
@fn_filename_completion_function.dirname = internal global i8* null, align 8
@fn_filename_completion_function.dirpath = internal global i8* null, align 8
@fn_filename_completion_function.filename_len = internal global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fn_filename_completion_function(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %129

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add i64 %25, 1
  %27 = mul i64 %26, 1
  %28 = call i8* @el_realloc(i8* %23, i64 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %33 = call i32 @el_free(i8* %32)
  store i8* null, i8** @fn_filename_completion_function.filename, align 8
  store i8* null, i8** %3, align 8
  br label %229

34:                                               ; preds = %20
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** @fn_filename_completion_function.filename, align 8
  %36 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %8, align 8
  %44 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  %47 = mul i64 %46, 1
  %48 = call i8* @el_realloc(i8* %44, i64 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %53 = call i32 @el_free(i8* %52)
  store i8* null, i8** @fn_filename_completion_function.dirname, align 8
  store i8* null, i8** %3, align 8
  br label %229

54:                                               ; preds = %34
  %55 = load i8*, i8** %9, align 8
  store i8* %55, i8** @fn_filename_completion_function.dirname, align 8
  %56 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @strncpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  br label %81

63:                                               ; preds = %15
  %64 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %65 = call i32 @el_free(i8* %64)
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i8* null, i8** @fn_filename_completion_function.filename, align 8
  br label %78

71:                                               ; preds = %63
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @strdup(i8* %72)
  store i8* %73, i8** @fn_filename_completion_function.filename, align 8
  %74 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i8* null, i8** %3, align 8
  br label %229

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %80 = call i32 @el_free(i8* %79)
  store i8* null, i8** @fn_filename_completion_function.dirname, align 8
  br label %81

81:                                               ; preds = %78, %54
  %82 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %86 = call i32 @closedir(i32* %85)
  store i32* null, i32** @fn_filename_completion_function.dir, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** @fn_filename_completion_function.dirpath, align 8
  %89 = call i32 @el_free(i8* %88)
  store i8* null, i8** @fn_filename_completion_function.dirpath, align 8
  %90 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %93, i8** @fn_filename_completion_function.dirname, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8* null, i8** %3, align 8
  br label %229

96:                                               ; preds = %92
  %97 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %97, i8** @fn_filename_completion_function.dirpath, align 8
  br label %110

98:                                               ; preds = %87
  %99 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 126
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %105 = call i8* @fn_tilde_expand(i8* %104)
  store i8* %105, i8** @fn_filename_completion_function.dirpath, align 8
  br label %109

106:                                              ; preds = %98
  %107 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %108 = call i8* @strdup(i8* %107)
  store i8* %108, i8** @fn_filename_completion_function.dirpath, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %96
  %111 = load i8*, i8** @fn_filename_completion_function.dirpath, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i8* null, i8** %3, align 8
  br label %229

114:                                              ; preds = %110
  %115 = load i8*, i8** @fn_filename_completion_function.dirpath, align 8
  %116 = call i32* @opendir(i8* %115)
  store i32* %116, i32** @fn_filename_completion_function.dir, align 8
  %117 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i8* null, i8** %3, align 8
  br label %229

120:                                              ; preds = %114
  %121 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %125 = call i64 @strlen(i8* %124)
  br label %127

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i64 [ %125, %123 ], [ 0, %126 ]
  store i64 %128, i64* @fn_filename_completion_function.filename_len, align 8
  br label %129

129:                                              ; preds = %127, %12
  br label %130

130:                                              ; preds = %197, %164, %129
  %131 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %132 = call %struct.dirent* @readdir(i32* %131)
  store %struct.dirent* %132, %struct.dirent** %6, align 8
  %133 = icmp ne %struct.dirent* %132, null
  br i1 %133, label %134, label %198

134:                                              ; preds = %130
  %135 = load %struct.dirent*, %struct.dirent** %6, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 46
  br i1 %141, label %142, label %165

142:                                              ; preds = %134
  %143 = load %struct.dirent*, %struct.dirent** %6, align 8
  %144 = getelementptr inbounds %struct.dirent, %struct.dirent* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load %struct.dirent*, %struct.dirent** %6, align 8
  %151 = getelementptr inbounds %struct.dirent, %struct.dirent* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 46
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load %struct.dirent*, %struct.dirent** %6, align 8
  %159 = getelementptr inbounds %struct.dirent, %struct.dirent* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157, %142
  br label %130

165:                                              ; preds = %157, %149, %134
  %166 = load i64, i64* @fn_filename_completion_function.filename_len, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %198

169:                                              ; preds = %165
  %170 = load %struct.dirent*, %struct.dirent** %6, align 8
  %171 = getelementptr inbounds %struct.dirent, %struct.dirent* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %175, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %169
  %182 = load %struct.dirent*, %struct.dirent** %6, align 8
  %183 = getelementptr inbounds %struct.dirent, %struct.dirent* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strlen(i8* %184)
  %186 = load i64, i64* @fn_filename_completion_function.filename_len, align 8
  %187 = icmp uge i64 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %181
  %189 = load %struct.dirent*, %struct.dirent** %6, align 8
  %190 = getelementptr inbounds %struct.dirent, %struct.dirent* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i8*, i8** @fn_filename_completion_function.filename, align 8
  %193 = load i64, i64* @fn_filename_completion_function.filename_len, align 8
  %194 = call i64 @strncmp(i8* %191, i8* %192, i64 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %198

197:                                              ; preds = %188, %181, %169
  br label %130

198:                                              ; preds = %196, %168, %130
  %199 = load %struct.dirent*, %struct.dirent** %6, align 8
  %200 = icmp ne %struct.dirent* %199, null
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load %struct.dirent*, %struct.dirent** %6, align 8
  %203 = getelementptr inbounds %struct.dirent, %struct.dirent* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @strlen(i8* %204)
  store i64 %205, i64* %8, align 8
  %206 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %207 = call i64 @strlen(i8* %206)
  %208 = load i64, i64* %8, align 8
  %209 = add i64 %207, %208
  %210 = add i64 %209, 1
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = call i8* @el_calloc(i64 %211, i32 1)
  store i8* %212, i8** %7, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %201
  store i8* null, i8** %3, align 8
  br label %229

216:                                              ; preds = %201
  %217 = load i8*, i8** %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = load i8*, i8** @fn_filename_completion_function.dirname, align 8
  %220 = load %struct.dirent*, %struct.dirent** %6, align 8
  %221 = getelementptr inbounds %struct.dirent, %struct.dirent* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @snprintf(i8* %217, i64 %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %219, i8* %222)
  br label %227

224:                                              ; preds = %198
  %225 = load i32*, i32** @fn_filename_completion_function.dir, align 8
  %226 = call i32 @closedir(i32* %225)
  store i32* null, i32** @fn_filename_completion_function.dir, align 8
  store i8* null, i8** %7, align 8
  br label %227

227:                                              ; preds = %224, %216
  %228 = load i8*, i8** %7, align 8
  store i8* %228, i8** %3, align 8
  br label %229

229:                                              ; preds = %227, %215, %119, %113, %95, %76, %51, %31
  %230 = load i8*, i8** %3, align 8
  ret i8* %230
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @el_realloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i8* @fn_tilde_expand(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
