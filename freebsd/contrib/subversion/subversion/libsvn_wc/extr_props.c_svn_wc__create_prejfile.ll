; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__create_prejfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__create_prejfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__create_prejfile(i8** %0, i32* %1, i8* %2, %struct.TYPE_18__* %3, i32 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_18__*, align 8
  %31 = alloca %struct.TYPE_17__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_17__*, align 8
  %34 = alloca %struct.TYPE_17__*, align 8
  %35 = alloca %struct.TYPE_17__*, align 8
  %36 = alloca %struct.TYPE_17__*, align 8
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %17, i32* %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %17, align 8
  %46 = load i32, i32* @svn_io_file_del_none, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = call i32 @svn_stream_open_unique(i32** %18, i8** %19, i8* %45, i32 %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = icmp ne %struct.TYPE_18__* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %21, align 8
  br label %59

59:                                               ; preds = %78, %53
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %61 = icmp ne %struct.TYPE_18__* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32*, i32** %20, align 8
  %64 = call i32 @svn_pool_clear(i32* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @prop_conflict_from_skel(%struct.TYPE_17__** %22, %struct.TYPE_18__* %65, i32 %66, i8* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %18, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svn_stream_puts(i32* %72, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %62
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %21, align 8
  br label %59

82:                                               ; preds = %59
  br label %185

83:                                               ; preds = %8
  %84 = load i32*, i32** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @svn_wc__db_read_conflict(%struct.TYPE_18__** %30, i32* null, i32* null, i32* %84, i8* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @svn_wc__conflict_read_info(i64* %23, i32* null, i32* null, i32* null, i32* null, i32* %90, i8* %91, %struct.TYPE_18__* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @svn_wc__conflict_read_prop_conflict(i32* null, i32** %26, i32** %27, i32** %28, i32** %29, i32* %97, i8* %98, %struct.TYPE_18__* %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i64, i64* %23, align 8
  %105 = load i64, i64* @svn_wc_operation_merge, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %83
  %108 = load i32*, i32** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @svn_wc__db_read_pristine_props(i32** %25, i32* %108, i8* %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  br label %116

114:                                              ; preds = %83
  %115 = load i32*, i32** %27, align 8
  store i32* %115, i32** %25, align 8
  br label %116

116:                                              ; preds = %114, %107
  %117 = load i32*, i32** %16, align 8
  %118 = load i32*, i32** %29, align 8
  %119 = call i32* @apr_hash_first(i32* %117, i32* %118)
  store i32* %119, i32** %24, align 8
  br label %120

120:                                              ; preds = %181, %116
  %121 = load i32*, i32** %24, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %184

123:                                              ; preds = %120
  %124 = load i32*, i32** %24, align 8
  %125 = call i8* @apr_hash_this_key(i32* %124)
  store i8* %125, i8** %32, align 8
  %126 = load i32*, i32** %20, align 8
  %127 = call i32 @svn_pool_clear(i32* %126)
  %128 = load i32*, i32** %25, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32*, i32** %25, align 8
  %132 = load i8*, i8** %32, align 8
  %133 = call %struct.TYPE_17__* @svn_hash_gets(i32* %131, i8* %132)
  br label %135

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %130
  %136 = phi %struct.TYPE_17__* [ %133, %130 ], [ null, %134 ]
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %33, align 8
  %137 = load i32*, i32** %26, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32*, i32** %26, align 8
  %141 = load i8*, i8** %32, align 8
  %142 = call %struct.TYPE_17__* @svn_hash_gets(i32* %140, i8* %141)
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi %struct.TYPE_17__* [ %142, %139 ], [ null, %143 ]
  store %struct.TYPE_17__* %145, %struct.TYPE_17__** %34, align 8
  %146 = load i32*, i32** %28, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32*, i32** %28, align 8
  %150 = load i8*, i8** %32, align 8
  %151 = call %struct.TYPE_17__* @svn_hash_gets(i32* %149, i8* %150)
  br label %153

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi %struct.TYPE_17__* [ %151, %148 ], [ null, %152 ]
  store %struct.TYPE_17__* %154, %struct.TYPE_17__** %35, align 8
  %155 = load i32*, i32** %27, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32*, i32** %27, align 8
  %159 = load i8*, i8** %32, align 8
  %160 = call %struct.TYPE_17__* @svn_hash_gets(i32* %158, i8* %159)
  br label %162

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi %struct.TYPE_17__* [ %160, %157 ], [ null, %161 ]
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %36, align 8
  %164 = load i8*, i8** %32, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i8*, i8** %14, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = load i32*, i32** %20, align 8
  %173 = call i32 @prop_conflict_new(%struct.TYPE_17__** %31, i8* %164, %struct.TYPE_17__* %165, %struct.TYPE_17__* %166, %struct.TYPE_17__* %167, %struct.TYPE_17__* %168, i32 %169, i8* %170, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load i32*, i32** %18, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @svn_stream_puts(i32* %175, i32 %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  br label %181

181:                                              ; preds = %162
  %182 = load i32*, i32** %24, align 8
  %183 = call i32* @apr_hash_next(i32* %182)
  store i32* %183, i32** %24, align 8
  br label %120

184:                                              ; preds = %120
  br label %185

185:                                              ; preds = %184, %82
  %186 = load i32*, i32** %18, align 8
  %187 = call i32 @svn_stream_close(i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @svn_pool_destroy(i32* %189)
  %191 = load i32*, i32** %15, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = call i8* @apr_pstrdup(i32* %191, i8* %192)
  %194 = load i8**, i8*** %9, align 8
  store i8* %193, i8** %194, align 8
  %195 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %195
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @prop_conflict_from_skel(%struct.TYPE_17__**, %struct.TYPE_18__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_puts(i32*, i32) #1

declare dso_local i32 @svn_wc__db_read_conflict(%struct.TYPE_18__**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_prop_conflict(i32*, i32**, i32**, i32**, i32**, i32*, i8*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_17__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @prop_conflict_new(%struct.TYPE_17__**, i8*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
