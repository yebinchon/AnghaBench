; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_path_driver_cb_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_path_driver_cb_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_driver_cb_baton = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32* (i8*, i32, i64, i32*)*, i32* (i8*, i8*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i32*, i32*)*, i32* (i8*, i32, i64, i32*)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i32, i8*, i32*)* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32*, i32, i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i8*, i8*, i32*)* @path_driver_cb_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @path_driver_cb_func(i8** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.path_driver_cb_baton*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.path_driver_cb_baton*
  store %struct.path_driver_cb_baton* %18, %struct.path_driver_cb_baton** %12, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %22 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.TYPE_5__* @svn_hash_gets(i32 %23, i8* %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %15, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* null, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @svn_path_is_empty(i8* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %5
  %38 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %39 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = call i32* %42(i8* %43, i8* %44, i32* null, i32 %45, i32* %46, i8** %47)
  store i32* %48, i32** %6, align 8
  br label %238

49:                                               ; preds = %5
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %56 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %54
  br label %87

62:                                               ; preds = %49
  %63 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %64 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @strcmp(i32 %70, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %13, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %86

79:                                               ; preds = %62
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %79, %78
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %92 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  %95 = load i32* (i8*, i32, i8*, i32*)*, i32* (i8*, i32, i8*, i32*)** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* %95(i8* %96, i32 %97, i8* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32* %100)
  br label %102

102:                                              ; preds = %90, %87
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %199

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32* @svn_path_check_valid(i8* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @svn_node_file, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %160

115:                                              ; preds = %105
  %116 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %117 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32* %120(i8* %121, i8* %122, i32* %125, i32 %128, i32* %129, i8** %16)
  %131 = call i32 @SVN_ERR(i32* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %115
  %137 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %138 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i32* (i8*, i32, i64, i32*)*, i32* (i8*, i32, i64, i32*)** %140, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32* %141(i8* %142, i32 %143, i64 %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32* %148)
  br label %150

150:                                              ; preds = %136, %115
  %151 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %152 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32* (i8*, i32*, i32*)*, i32* (i8*, i32*, i32*)** %154, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i32* %155(i8* %156, i32* null, i32* %157)
  %159 = call i32 @SVN_ERR(i32* %158)
  br label %198

160:                                              ; preds = %105
  %161 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %162 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %164, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i8**, i8*** %7, align 8
  %176 = call i32* %165(i8* %166, i8* %167, i32* %170, i32 %173, i32* %174, i8** %175)
  %177 = call i32 @SVN_ERR(i32* %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %160
  %183 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %184 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32* (i8*, i32, i64, i32*)*, i32* (i8*, i32, i64, i32*)** %186, align 8
  %188 = load i8**, i8*** %7, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32* %187(i8* %189, i32 %190, i64 %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32* %195)
  br label %197

197:                                              ; preds = %182, %160
  br label %198

198:                                              ; preds = %197, %150
  br label %199

199:                                              ; preds = %198, %102
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %236

204:                                              ; preds = %199
  %205 = load i8**, i8*** %7, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %210 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32* (i8*, i8*, i32, i32*, i8**)*, i32* (i8*, i8*, i32, i32*, i8**)** %212, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = load i8**, i8*** %7, align 8
  %219 = call i32* %213(i8* %214, i8* %215, i32 %216, i32* %217, i8** %218)
  %220 = call i32 @SVN_ERR(i32* %219)
  br label %221

221:                                              ; preds = %208, %204
  %222 = load %struct.path_driver_cb_baton*, %struct.path_driver_cb_baton** %12, align 8
  %223 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32* (i8*, i32, i64, i32*)*, i32* (i8*, i32, i64, i32*)** %225, align 8
  %227 = load i8**, i8*** %7, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i32*, i32** %11, align 8
  %234 = call i32* %226(i8* %228, i32 %229, i64 %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32* %234)
  br label %236

236:                                              ; preds = %221, %199
  %237 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %237, i32** %6, align 8
  br label %238

238:                                              ; preds = %236, %37
  %239 = load i32*, i32** %6, align 8
  ret i32* %239
}

declare dso_local %struct.TYPE_5__* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_empty(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_path_check_valid(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
