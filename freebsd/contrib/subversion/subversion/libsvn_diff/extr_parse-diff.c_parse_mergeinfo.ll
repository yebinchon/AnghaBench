; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32*, i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)* @parse_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @parse_mergeinfo(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2, %struct.TYPE_17__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %13, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %14, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %223

31:                                               ; preds = %6
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %223

34:                                               ; preds = %31
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 114
  br i1 %39, label %40, label %223

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %223

44:                                               ; preds = %40
  store i32* null, i32** %16, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call %struct.TYPE_16__* @svn_stringbuf_create_ensure(i32 %47, i32* %48)
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %15, align 8
  %50 = load i8*, i8** %13, align 8
  store i8* %50, i8** %17, align 8
  br label %51

51:                                               ; preds = %55, %44
  %52 = load i8*, i8** %17, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ule i8* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_16__* %56, i8 signext %58)
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %17, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load i8*, i8** %17, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %17, align 8
  br label %65

65:                                               ; preds = %82, %62
  %66 = load i8*, i8** %17, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = icmp ult i8* %66, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load i8*, i8** %17, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @svn_ctype_isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %89

82:                                               ; preds = %76
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_16__* %83, i8 signext %85)
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %17, align 8
  br label %65

89:                                               ; preds = %81, %65
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call %struct.TYPE_18__* @svn_mergeinfo_parse(i32** %16, i8* %92, i32* %93)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %18, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %96 = icmp ne %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %105 = call i32 @svn_error_clear(%struct.TYPE_18__* %104)
  store i32* null, i32** %16, align 8
  br label %109

106:                                              ; preds = %97, %89
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %108 = call i32 @SVN_ERR(%struct.TYPE_18__* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %16, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %222

112:                                              ; preds = %109
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %165

117:                                              ; preds = %112
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32*, i32** %16, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  br label %140

131:                                              ; preds = %122
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = call %struct.TYPE_18__* @svn_mergeinfo_merge2(i32* %134, i32* %135, i32* %136, i32* %137)
  %139 = call i32 @SVN_ERR(%struct.TYPE_18__* %138)
  br label %140

140:                                              ; preds = %131, %127
  br label %160

141:                                              ; preds = %117
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32*, i32** %16, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32* %147, i32** %149, align 8
  br label %159

150:                                              ; preds = %141
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = call %struct.TYPE_18__* @svn_mergeinfo_merge2(i32* %153, i32* %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(%struct.TYPE_18__* %157)
  br label %159

159:                                              ; preds = %150, %146
  br label %160

160:                                              ; preds = %159, %140
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* %162, align 8
  br label %219

165:                                              ; preds = %112
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %218

170:                                              ; preds = %165
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32*, i32** %16, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  store i32* %181, i32** %183, align 8
  br label %193

184:                                              ; preds = %175
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = call %struct.TYPE_18__* @svn_mergeinfo_merge2(i32* %187, i32* %188, i32* %189, i32* %190)
  %192 = call i32 @SVN_ERR(%struct.TYPE_18__* %191)
  br label %193

193:                                              ; preds = %184, %180
  br label %213

194:                                              ; preds = %170
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32*, i32** %16, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i32* %200, i32** %202, align 8
  br label %212

203:                                              ; preds = %194
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32*, i32** %16, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = call %struct.TYPE_18__* @svn_mergeinfo_merge2(i32* %206, i32* %207, i32* %208, i32* %209)
  %211 = call i32 @SVN_ERR(%struct.TYPE_18__* %210)
  br label %212

212:                                              ; preds = %203, %199
  br label %213

213:                                              ; preds = %212, %193
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, -1
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %213, %165
  br label %219

219:                                              ; preds = %218, %160
  %220 = load i32, i32* @TRUE, align 4
  %221 = load i32*, i32** %7, align 8
  store i32 %220, i32* %221, align 4
  br label %222

222:                                              ; preds = %219, %109
  br label %223

223:                                              ; preds = %222, %40, %34, %31, %6
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_18__* %224
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_16__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i64 @svn_ctype_isspace(i8 signext) #1

declare dso_local %struct.TYPE_18__* @svn_mergeinfo_parse(i32**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_mergeinfo_merge2(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
