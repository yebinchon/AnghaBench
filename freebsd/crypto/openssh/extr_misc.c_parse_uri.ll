; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_uri.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_uri(i8* %0, i8* %1, i8** %2, i8** %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %23, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %23, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @strncmp(i8* %27, i8* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %23, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %6
  store i32 1, i32* %7, align 4
  br label %190

40:                                               ; preds = %33
  %41 = load i64, i64* %23, align 8
  %42 = add i64 %41, 3
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %9, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8**, i8*** %10, align 8
  store i8* null, i8** %48, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8**, i8*** %11, align 8
  store i8* null, i8** %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8**, i8*** %13, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8**, i8*** %13, align 8
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i8*, i8** %9, align 8
  %66 = call i8* @xstrdup(i8* %65)
  store i8* %66, i8** %16, align 8
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 64)
  store i8* %68, i8** %15, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load i8*, i8** %15, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %16, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 59)
  store i8* %73, i8** %24, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %24, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %180

83:                                               ; preds = %77
  %84 = load i8*, i8** %16, align 8
  %85 = call i8* @urldecode(i8* %84)
  store i8* %85, i8** %18, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %180

88:                                               ; preds = %83
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %16, align 8
  br label %91

91:                                               ; preds = %88, %64
  %92 = call i8* @hpdelim2(i8** %16, i8* %17)
  store i8* %92, i8** %15, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %91
  br label %180

100:                                              ; preds = %94
  %101 = load i8*, i8** %15, align 8
  %102 = call i8* @cleanhostname(i8* %101)
  %103 = call i8* @xstrdup(i8* %102)
  store i8* %103, i8** %19, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 @valid_domain(i8* %104, i32 0, i32* null)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %180

108:                                              ; preds = %100
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %155

111:                                              ; preds = %108
  %112 = load i8*, i8** %16, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %111
  %117 = load i8, i8* %17, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 58
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i8*, i8** %16, align 8
  %122 = call i8* @strchr(i8* %121, i8 signext 47)
  store i8* %122, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i8*, i8** %15, align 8
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 @a2port(i8* %127)
  store i32 %128, i32* %21, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %180

131:                                              ; preds = %126
  %132 = load i8*, i8** %15, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  br label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i8* [ %136, %134 ], [ null, %137 ]
  store i8* %139, i8** %16, align 8
  br label %140

140:                                              ; preds = %138, %116
  %141 = load i8*, i8** %16, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i8*, i8** %16, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i8*, i8** %16, align 8
  %150 = call i8* @urldecode(i8* %149)
  store i8* %150, i8** %20, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %180

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %153, %143, %140
  br label %155

155:                                              ; preds = %154, %111, %108
  %156 = load i8**, i8*** %10, align 8
  %157 = icmp ne i8** %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %18, align 8
  %160 = load i8**, i8*** %10, align 8
  store i8* %159, i8** %160, align 8
  store i8* null, i8** %18, align 8
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i8**, i8*** %11, align 8
  %163 = icmp ne i8** %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %19, align 8
  %166 = load i8**, i8*** %11, align 8
  store i8* %165, i8** %166, align 8
  store i8* null, i8** %19, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %12, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = load i32*, i32** %12, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i8**, i8*** %13, align 8
  %175 = icmp ne i8** %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** %20, align 8
  %178 = load i8**, i8*** %13, align 8
  store i8* %177, i8** %178, align 8
  store i8* null, i8** %20, align 8
  br label %179

179:                                              ; preds = %176, %173
  store i32 0, i32* %22, align 4
  br label %180

180:                                              ; preds = %179, %152, %130, %107, %99, %87, %82
  %181 = load i8*, i8** %14, align 8
  %182 = call i32 @free(i8* %181)
  %183 = load i8*, i8** %18, align 8
  %184 = call i32 @free(i8* %183)
  %185 = load i8*, i8** %19, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %20, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i32, i32* %22, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %180, %39
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @urldecode(i8*) #1

declare dso_local i8* @hpdelim2(i8**, i8*) #1

declare dso_local i8* @cleanhostname(i8*) #1

declare dso_local i32 @valid_domain(i8*, i32, i32*) #1

declare dso_local i32 @a2port(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
