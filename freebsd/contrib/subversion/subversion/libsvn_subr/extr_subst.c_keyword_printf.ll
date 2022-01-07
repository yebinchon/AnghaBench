; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_keyword_printf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_keyword_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%04d-%02d-%02d %02d:%02d:%02dZ\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%P%_%r%_%d%_%a\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%b%_%r%_%d%_%a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i8*, i8*, i8*, i32, i8*, i32*)* @keyword_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @keyword_printf(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_7__, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i32* @svn_stringbuf_create_empty(i32* %24)
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %230, %7
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %16, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i8*, i8** %16, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %16, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 37
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %16, align 8
  br label %28

43:                                               ; preds = %38
  %44 = load i8*, i8** %16, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %17, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32*, i32** %15, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %17, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @svn_stringbuf_appendbytes(i32* %51, i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i8*, i8** %16, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %233

62:                                               ; preds = %56
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %226 [
    i32 97, label %67
    i32 98, label %75
    i32 100, label %91
    i32 68, label %117
    i32 80, label %127
    i32 82, label %156
    i32 114, label %169
    i32 117, label %177
    i32 95, label %185
    i32 37, label %188
    i32 0, label %193
    i32 72, label %200
    i32 73, label %213
  ]

67:                                               ; preds = %62
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %15, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @svn_stringbuf_appendcstr(i32* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %230

75:                                               ; preds = %62
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %10, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i8* @svn_uri_basename(i8* %84, i32* %85)
  store i8* %86, i8** %18, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 @svn_stringbuf_appendcstr(i32* %87, i8* %88)
  br label %90

90:                                               ; preds = %83, %78, %75
  br label %230

91:                                               ; preds = %62
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @apr_time_exp_gmt(%struct.TYPE_7__* %19, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1900
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @apr_psprintf(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111)
  store i8* %112, i8** %20, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = call i32 @svn_stringbuf_appendcstr(i32* %113, i8* %114)
  br label %116

116:                                              ; preds = %94, %91
  br label %230

117:                                              ; preds = %62
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = call i8* @svn_time_to_human_cstring(i32 %122, i32* %123)
  %125 = call i32 @svn_stringbuf_appendcstr(i32* %121, i8* %124)
  br label %126

126:                                              ; preds = %120, %117
  br label %230

127:                                              ; preds = %62
  %128 = load i8*, i8** %11, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %155

130:                                              ; preds = %127
  %131 = load i8*, i8** %11, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = load i8*, i8** %10, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i8*, i8** %10, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = call i8* @svn_uri_skip_ancestor(i8* %144, i8* %145, i32* %146)
  store i8* %147, i8** %21, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32*, i32** %15, align 8
  %152 = load i8*, i8** %21, align 8
  %153 = call i32 @svn_stringbuf_appendcstr(i32* %151, i8* %152)
  br label %154

154:                                              ; preds = %150, %143
  br label %155

155:                                              ; preds = %154, %138, %135, %130, %127
  br label %230

156:                                              ; preds = %62
  %157 = load i8*, i8** %11, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32*, i32** %15, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @svn_stringbuf_appendcstr(i32* %165, i8* %166)
  br label %168

168:                                              ; preds = %164, %159, %156
  br label %230

169:                                              ; preds = %62
  %170 = load i8*, i8** %9, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32*, i32** %15, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @svn_stringbuf_appendcstr(i32* %173, i8* %174)
  br label %176

176:                                              ; preds = %172, %169
  br label %230

177:                                              ; preds = %62
  %178 = load i8*, i8** %10, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32*, i32** %15, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 @svn_stringbuf_appendcstr(i32* %181, i8* %182)
  br label %184

184:                                              ; preds = %180, %177
  br label %230

185:                                              ; preds = %62
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @svn_stringbuf_appendbyte(i32* %186, i8 signext 32)
  br label %230

188:                                              ; preds = %62
  %189 = load i32*, i32** %15, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @svn_stringbuf_appendbyte(i32* %189, i8 signext %191)
  br label %230

193:                                              ; preds = %62
  %194 = load i32*, i32** %15, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @svn_stringbuf_appendbyte(i32* %194, i8 signext %196)
  %198 = load i8*, i8** %16, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %199, i8** %16, align 8
  br label %230

200:                                              ; preds = %62
  %201 = load i8*, i8** %9, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i8*, i8** %13, align 8
  %206 = load i32*, i32** %14, align 8
  %207 = call %struct.TYPE_6__* @keyword_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %201, i8* %202, i8* %203, i32 %204, i8* %205, i32* %206)
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %22, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @svn_stringbuf_appendcstr(i32* %208, i8* %211)
  br label %230

213:                                              ; preds = %62
  %214 = load i8*, i8** %9, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i8*, i8** %13, align 8
  %219 = load i32*, i32** %14, align 8
  %220 = call %struct.TYPE_6__* @keyword_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %214, i8* %215, i8* %216, i32 %217, i8* %218, i32* %219)
  store %struct.TYPE_6__* %220, %struct.TYPE_6__** %23, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @svn_stringbuf_appendcstr(i32* %221, i8* %224)
  br label %230

226:                                              ; preds = %62
  %227 = load i32*, i32** %15, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 @svn_stringbuf_appendbytes(i32* %227, i8* %228, i32 2)
  br label %230

230:                                              ; preds = %226, %213, %200, %193, %188, %185, %184, %176, %168, %155, %126, %116, %90, %74
  %231 = load i8*, i8** %16, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  store i8* %232, i8** %8, align 8
  br label %26

233:                                              ; preds = %61
  %234 = load i32*, i32** %15, align 8
  %235 = call %struct.TYPE_6__* @svn_stringbuf__morph_into_string(i32* %234)
  ret %struct.TYPE_6__* %235
}

declare dso_local i32* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i8* @svn_uri_basename(i8*, i32*) #1

declare dso_local i32 @apr_time_exp_gmt(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @svn_time_to_human_cstring(i32, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(i32*, i8 signext) #1

declare dso_local %struct.TYPE_6__* @svn_stringbuf__morph_into_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
