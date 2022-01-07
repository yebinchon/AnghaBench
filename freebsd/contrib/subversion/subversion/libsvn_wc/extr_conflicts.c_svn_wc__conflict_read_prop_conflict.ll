; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_prop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_prop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__* }

@SVN_WC__CONFLICT_KIND_PROP = common dso_local global i32 0, align 4
@SVN_ERR_WC_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Conflict not set\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_read_prop_conflict(i8** %0, i32** %1, i32** %2, i32** %3, i32** %4, i32* %5, i8* %6, %struct.TYPE_6__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i32** %2, i32*** %14, align 8
  store i32** %3, i32*** %15, align 8
  store i32** %4, i32*** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %27 = load i32, i32* @SVN_WC__CONFLICT_KIND_PROP, align 4
  %28 = call i32 @conflict__get_conflict(%struct.TYPE_6__** %22, %struct.TYPE_6__* %26, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* @SVN_ERR_WC_MISSING, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = call i32* @svn_error_create(i32 %33, i32* null, i32 %34)
  store i32* %35, i32** %11, align 8
  br label %182

36:                                               ; preds = %10
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %23, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %23, align 8
  %43 = load i8**, i8*** %12, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load i32*, i32** %20, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @apr_pstrmemdup(i32* %58, i32 %63, i32 %68)
  store i8* %69, i8** %24, align 8
  %70 = load i8**, i8*** %12, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i8*, i8** %24, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = call i32 @svn_wc__db_from_relpath(i8** %70, i32* %71, i8* %72, i8* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %80

78:                                               ; preds = %50, %45
  %79 = load i8**, i8*** %12, align 8
  store i8* null, i8** %79, align 8
  br label %80

80:                                               ; preds = %78, %57
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %23, align 8
  %85 = load i32**, i32*** %16, align 8
  %86 = icmp ne i32** %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %81
  %88 = load i32*, i32** %20, align 8
  %89 = call i32* @apr_hash_make(i32* %88)
  %90 = load i32**, i32*** %16, align 8
  store i32* %89, i32** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %25, align 8
  br label %94

94:                                               ; preds = %109, %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32**, i32*** %16, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @apr_pstrmemdup(i32* %100, i32 %103, i32 %106)
  %108 = call i32 @svn_hash_sets(i32* %99, i8* %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %97
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %25, align 8
  br label %94

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113, %81
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %23, align 8
  %118 = load i32**, i32*** %14, align 8
  %119 = icmp ne i32** %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32*, i32** %20, align 8
  %127 = call i32* @apr_hash_make(i32* %126)
  %128 = load i32**, i32*** %14, align 8
  store i32* %127, i32** %128, align 8
  br label %135

129:                                              ; preds = %120
  %130 = load i32**, i32*** %14, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @svn_skel__parse_proplist(i32** %130, %struct.TYPE_6__* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  br label %135

135:                                              ; preds = %129, %125
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %23, align 8
  %140 = load i32**, i32*** %13, align 8
  %141 = icmp ne i32** %140, null
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32*, i32** %20, align 8
  %149 = call i32* @apr_hash_make(i32* %148)
  %150 = load i32**, i32*** %13, align 8
  store i32* %149, i32** %150, align 8
  br label %157

151:                                              ; preds = %142
  %152 = load i32**, i32*** %13, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @svn_skel__parse_proplist(i32** %152, %struct.TYPE_6__* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %157

157:                                              ; preds = %151, %147
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  store %struct.TYPE_6__* %161, %struct.TYPE_6__** %23, align 8
  %162 = load i32**, i32*** %15, align 8
  %163 = icmp ne i32** %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32*, i32** %20, align 8
  %171 = call i32* @apr_hash_make(i32* %170)
  %172 = load i32**, i32*** %15, align 8
  store i32* %171, i32** %172, align 8
  br label %179

173:                                              ; preds = %164
  %174 = load i32**, i32*** %15, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %176 = load i32*, i32** %20, align 8
  %177 = call i32 @svn_skel__parse_proplist(i32** %174, %struct.TYPE_6__* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %179

179:                                              ; preds = %173, %169
  br label %180

180:                                              ; preds = %179, %158
  %181 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %181, i32** %11, align 8
  br label %182

182:                                              ; preds = %180, %32
  %183 = load i32*, i32** %11, align 8
  ret i32* %183
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_6__**, %struct.TYPE_6__*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32 @svn_skel__parse_proplist(i32**, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
