; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_get_merging_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_get_merging_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_opt_revision_base = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_get_merging_summary(i32* %0, i8** %1, i32* %2, i8** %3, i32* %4, i8** %5, i32* %6, i8** %7, i32* %8, i8** %9, i8* %10, %struct.TYPE_18__* %11, i8* %12, %struct.TYPE_18__* %13, i32* %14, i32* %15, i32* %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_18__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_18__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_19__*, align 8
  %37 = alloca i8*, align 8
  store i32* %0, i32** %18, align 8
  store i8** %1, i8*** %19, align 8
  store i32* %2, i32** %20, align 8
  store i8** %3, i8*** %21, align 8
  store i32* %4, i32** %22, align 8
  store i8** %5, i8*** %23, align 8
  store i32* %6, i32** %24, align 8
  store i8** %7, i8*** %25, align 8
  store i32* %8, i32** %26, align 8
  store i8** %9, i8*** %27, align 8
  store i8* %10, i8** %28, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %29, align 8
  store i8* %12, i8** %30, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  store i32* %16, i32** %34, align 8
  %38 = load i8*, i8** %30, align 8
  %39 = call i32 @svn_path_is_url(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %17
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_opt_revision_working, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_opt_revision_base, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %41
  %60 = phi i1 [ true, %47 ], [ true, %41 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %17
  %62 = phi i1 [ false, %17 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %35, align 4
  %64 = load i32, i32* %35, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load i8*, i8** %30, align 8
  %68 = load i32*, i32** %34, align 8
  %69 = call i32 @svn_dirent_get_absolute(i8** %37, i8* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i8*, i8** %28, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %73 = load i8*, i8** %37, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = load i32*, i32** %32, align 8
  %78 = load i32*, i32** %34, align 8
  %79 = load i32*, i32** %34, align 8
  %80 = call i32 @client_find_automatic_merge(%struct.TYPE_19__** %36, i8* %71, %struct.TYPE_18__* %72, i8* %73, i32 %74, i32 %75, i32 %76, i32* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %92

82:                                               ; preds = %61
  %83 = load i8*, i8** %28, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %85 = load i8*, i8** %30, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %87 = load i32*, i32** %32, align 8
  %88 = load i32*, i32** %34, align 8
  %89 = load i32*, i32** %34, align 8
  %90 = call i32 @find_automatic_merge_no_wc(%struct.TYPE_19__** %36, i8* %83, %struct.TYPE_18__* %84, i8* %85, %struct.TYPE_18__* %86, i32* %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %82, %66
  %93 = load i32*, i32** %18, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %18, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i8**, i8*** %19, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32*, i32** %33, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @apr_pstrdup(i32* %104, i32 %109)
  %111 = load i8**, i8*** %19, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %103, %100
  %113 = load i32*, i32** %20, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %20, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load i8**, i8*** %21, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32*, i32** %33, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @apr_pstrdup(i32* %126, i32 %131)
  %133 = load i8**, i8*** %21, align 8
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %122
  %135 = load i32*, i32** %22, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %22, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %134
  %145 = load i8**, i8*** %23, align 8
  %146 = icmp ne i8** %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32*, i32** %33, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @apr_pstrdup(i32* %148, i32 %153)
  %155 = load i8**, i8*** %23, align 8
  store i8* %154, i8** %155, align 8
  br label %156

156:                                              ; preds = %147, %144
  %157 = load i32*, i32** %24, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %24, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %156
  %167 = load i8**, i8*** %25, align 8
  %168 = icmp ne i8** %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i32*, i32** %33, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @apr_pstrdup(i32* %170, i32 %175)
  %177 = load i8**, i8*** %25, align 8
  store i8* %176, i8** %177, align 8
  br label %178

178:                                              ; preds = %169, %166
  %179 = load i32*, i32** %26, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %26, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %181, %178
  %189 = load i8**, i8*** %27, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i32*, i32** %33, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @apr_pstrdup(i32* %192, i32 %197)
  %199 = load i8**, i8*** %27, align 8
  store i8* %198, i8** %199, align 8
  br label %200

200:                                              ; preds = %191, %188
  %201 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %201
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @client_find_automatic_merge(%struct.TYPE_19__**, i8*, %struct.TYPE_18__*, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @find_automatic_merge_no_wc(%struct.TYPE_19__**, i8*, %struct.TYPE_18__*, i8*, %struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
