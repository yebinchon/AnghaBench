; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_parse_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUTH_HTTPS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@AUTH_HTTP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"protocol %s:// not supported (for url %s)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32*, i32*)* @parse_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_url(i8* %0, i8** %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @AUTH_HTTPS_PORT, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 7
  store i8* %26, i8** %12, align 8
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @AUTH_HTTP_PORT, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %12, align 8
  br label %74

37:                                               ; preds = %30
  %38 = load i8*, i8** %12, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 47)
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ugt i8* %43, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 58)
  %50 = load i8*, i8** %12, align 8
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp uge i8* %49, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %12, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = call i8* @dup_prefix(i8* %54, i64 %60)
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** %13, align 8
  br label %67

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %66 ]
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @free(i8* %71)
  store i32 0, i32* %6, align 4
  br label %197

73:                                               ; preds = %47, %41, %37
  br label %74

74:                                               ; preds = %73, %34
  br label %75

75:                                               ; preds = %74, %24
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 91
  br i1 %80, label %81, label %115

81:                                               ; preds = %75
  %82 = load i8*, i8** %12, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 93)
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = call i8* @dup_prefix(i8* %89, i64 %94)
  %96 = load i8**, i8*** %8, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i8**, i8*** %8, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %197

101:                                              ; preds = %88
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %12, align 8
  br label %114

104:                                              ; preds = %81
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @dup_all(i8* %105)
  %107 = load i8**, i8*** %8, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %197

112:                                              ; preds = %104
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %12, align 8
  br label %114

114:                                              ; preds = %112, %101
  br label %145

115:                                              ; preds = %75
  %116 = load i8*, i8** %12, align 8
  %117 = call i8* @str_find_first_of_chars(i8* %116, i8 signext 58, i8 signext 47)
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = call i8* @dup_prefix(i8* %121, i64 %126)
  %128 = load i8**, i8*** %8, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i8**, i8*** %8, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %197

133:                                              ; preds = %120
  br label %143

134:                                              ; preds = %115
  %135 = load i8*, i8** %12, align 8
  %136 = call i8* @dup_all(i8* %135)
  %137 = load i8**, i8*** %8, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %197

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i8*, i8** %15, align 8
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %143, %114
  %146 = load i8*, i8** %12, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 58
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  store i8* null, i8** %16, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 @strtol(i8* %156, i8** %16, i32 10)
  %158 = load i32*, i32** %10, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i8*, i8** %16, align 8
  store i8* %159, i8** %12, align 8
  br label %160

160:                                              ; preds = %154, %148, %145
  br label %161

161:                                              ; preds = %171, %160
  %162 = load i8*, i8** %12, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i8*, i8** %12, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 47
  br label %169

169:                                              ; preds = %164, %161
  %170 = phi i1 [ false, %161 ], [ %168, %164 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %12, align 8
  br label %161

174:                                              ; preds = %169
  %175 = load i8*, i8** %12, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i8*, i8** %12, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177, %174
  %184 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i8**, i8*** %9, align 8
  store i8* %184, i8** %185, align 8
  br label %190

186:                                              ; preds = %177
  %187 = load i8*, i8** %12, align 8
  %188 = call i8* @strdup(i8* %187)
  %189 = load i8**, i8*** %9, align 8
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i8**, i8*** %9, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %197

196:                                              ; preds = %190
  store i32 1, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %194, %141, %132, %111, %100, %67
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @dup_prefix(i8*, i64) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @dup_all(i8*) #1

declare dso_local i8* @str_find_first_of_chars(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
