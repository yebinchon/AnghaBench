; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc_entry_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc_entry_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @svn_wc_entry_dup(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_5__* @apr_palloc(i32* %6, i32 152)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = bitcast %struct.TYPE_5__* %8 to i8*
  %11 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 152, i1 false)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 18
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 18
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @apr_pstrdup(i32* %17, i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 18
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 17
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 17
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @apr_pstrdup(i32* %30, i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 17
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 16
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 16
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @apr_pstrdup(i32* %43, i8* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 16
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 15
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 15
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @apr_pstrdup(i32* %56, i8* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 15
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 14
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 14
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @apr_pstrdup(i32* %69, i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 14
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 13
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 13
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @apr_pstrdup(i32* %82, i8* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 13
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 12
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 12
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @apr_pstrdup(i32* %95, i8* %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 12
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %94, %89
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 11
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 11
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @apr_pstrdup(i32* %108, i8* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %107, %102
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 10
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 10
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @apr_pstrdup(i32* %121, i8* %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 10
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %120, %115
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 9
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @apr_pstrdup(i32* %134, i8* %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 9
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %133, %128
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 8
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32*, i32** %4, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @apr_pstrdup(i32* %147, i8* %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 8
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %146, %141
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 7
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 7
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* @apr_pstrdup(i32* %160, i8* %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i32*, i32** %4, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @apr_pstrdup(i32* %173, i8* %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %172, %167
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load i32*, i32** %4, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @apr_pstrdup(i32* %186, i8* %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %180
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load i32*, i32** %4, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @apr_pstrdup(i32* %199, i8* %202)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %198, %193
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %208, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %210, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %223

215:                                              ; preds = %206
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @apr_pstrdup(i32* %216, i8* %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %215, %206
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load i32*, i32** %4, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i8* @apr_pstrdup(i32* %229, i8* %232)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %228, %223
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %237
}

declare dso_local %struct.TYPE_5__* @apr_palloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
