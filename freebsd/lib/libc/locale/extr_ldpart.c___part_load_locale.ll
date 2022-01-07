; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_ldpart.c___part_load_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_ldpart.c___part_load_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"C.\00", align 1
@_LDP_CACHE = common dso_local global i32 0, align 4
@_PathLocale = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@_LDP_ERROR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_LDP_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__part_load_locale(i8* %0, i32* %1, i8** %2, i8* %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.stat, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %29 = load i32, i32* @PATH_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %7
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36, %7
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @_LDP_CACHE, align 4
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %206

47:                                               ; preds = %40
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %52, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @_LDP_CACHE, align 4
  store i32 %59, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %206

60:                                               ; preds = %51, %47
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add i64 %62, 1
  store i64 %63, i64* %26, align 8
  %64 = load i8*, i8** @_PathLocale, align 8
  %65 = call i32 @strcpy(i8* %32, i8* %64)
  %66 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strcat(i8* %32, i8* %67)
  %69 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @strcat(i8* %32, i8* %70)
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = load i32, i32* @O_CLOEXEC, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @_open(i8* %32, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %78, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %206

79:                                               ; preds = %60
  %80 = load i32, i32* %17, align 4
  %81 = call i64 @_fstat(i32 %80, %struct.stat* %25)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %200

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ule i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @EFTYPE, align 4
  store i32 %89, i32* @errno, align 4
  br label %200

90:                                               ; preds = %84
  %91 = load i64, i64* %26, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %91, %93
  store i64 %94, i64* %27, align 8
  %95 = load i64, i64* %27, align 8
  %96 = call i8* @malloc(i64 %95)
  store i8* %96, i8** %20, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* @errno, align 4
  br label %200

100:                                              ; preds = %90
  %101 = load i8*, i8** %20, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @strcpy(i8* %101, i8* %102)
  %104 = load i8*, i8** %20, align 8
  %105 = load i64, i64* %26, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %21, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %22, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i8*, i8** %21, align 8
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @_read(i32 %111, i8* %112, i64 %114)
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  br label %195

120:                                              ; preds = %100
  %121 = load i8*, i8** %22, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 10
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @EFTYPE, align 4
  store i32 %127, i32* @errno, align 4
  br label %195

128:                                              ; preds = %120
  %129 = load i8*, i8** %21, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = call i32 @split_lines(i8* %129, i8* %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %19, align 4
  br label %146

137:                                              ; preds = %128
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %19, align 4
  br label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @EFTYPE, align 4
  store i32 %144, i32* @errno, align 4
  br label %195

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %135
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @_close(i32 %147)
  %149 = load i8**, i8*** %11, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i8**, i8*** %11, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @free(i8* %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i8*, i8** %20, align 8
  %158 = load i8**, i8*** %11, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i8**, i8*** %11, align 8
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %21, align 8
  store i32 0, i32* %18, align 4
  br label %161

161:                                              ; preds = %175, %156
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i8*, i8** %21, align 8
  %167 = call i64 @strlen(i8* %166)
  %168 = add i64 %167, 1
  %169 = load i8*, i8** %21, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  store i8* %170, i8** %21, align 8
  %171 = load i8**, i8*** %15, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %170, i8** %174, align 8
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  br label %161

178:                                              ; preds = %161
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %189, %178
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i8**, i8*** %15, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* null, i8** %188, align 8
  br label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %180

192:                                              ; preds = %180
  %193 = load i32*, i32** %10, align 8
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* @_LDP_LOADED, align 4
  store i32 %194, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %206

195:                                              ; preds = %143, %126, %119
  %196 = load i32, i32* @errno, align 4
  store i32 %196, i32* %16, align 4
  %197 = load i8*, i8** %20, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* @errno, align 4
  br label %200

200:                                              ; preds = %195, %98, %88, %83
  %201 = load i32, i32* @errno, align 4
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @_close(i32 %202)
  %204 = load i32, i32* %16, align 4
  store i32 %204, i32* @errno, align 4
  %205 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %205, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %206

206:                                              ; preds = %200, %192, %77, %57, %44
  %207 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @_open(i8*, i32) #2

declare dso_local i64 @_fstat(i32, %struct.stat*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @_read(i32, i8*, i64) #2

declare dso_local i32 @split_lines(i8*, i8*) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
