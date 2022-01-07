; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_walker_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_walker_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* (i8*, i32*, i8*, i32*)*, i32* (i8*, %struct.TYPE_9__*, i8*, i32*)* }
%struct.TYPE_9__ = type { i64, i32 }

@SVN_WC_ENTRY_THIS_DIR = common dso_local global i32 0, align 4
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Directory '%s' has no THIS_DIR entry\00", align 1
@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, %struct.TYPE_10__*, i8*, i64, i32, i32* (i8*)*, i8*, i32*)* @walker_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @walker_helper(i8* %0, i32* %1, %struct.TYPE_10__* %2, i8* %3, i64 %4, i32 %5, i32* (i8*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32* (i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_9__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* (i8*)* %6, i32* (i8*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = call i32* @svn_pool_create(i32* %33)
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32* @svn_wc__adm_get_db(i32* %35)
  store i32* %36, i32** %25, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %19, align 8
  %40 = call i32* @svn_wc__entries_read_internal(i32** %21, i32* %37, i32 %38, i32* %39)
  store i32* %40, i32** %24, align 8
  %41 = load i32*, i32** %24, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %9
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32* (i8*, i32*, i8*, i32*)*, i32* (i8*, i32*, i8*, i32*)** %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i32* %46(i8* %47, i32* %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32* %51)
  br label %53

53:                                               ; preds = %43, %9
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %56 = call %struct.TYPE_9__* @svn_hash_gets(i32* %54, i32 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %23, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32* (i8*, i32*, i8*, i32*)*, i32* (i8*, i32*, i8*, i32*)** %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %11, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @svn_dirent_local_style(i8* %66, i32* %67)
  %69 = call i32* @svn_error_createf(i32 %64, i32* null, i32 %65, i32 %68)
  %70 = load i8*, i8** %14, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = call i32* %62(i8* %63, i32* %69, i8* %70, i32* %71)
  store i32* %72, i32** %10, align 8
  br label %220

73:                                               ; preds = %53
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32* (i8*, %struct.TYPE_9__*, i8*, i32*)*, i32* (i8*, %struct.TYPE_9__*, i8*, i32*)** %75, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = call i32* %76(i8* %77, %struct.TYPE_9__* %78, i8* %79, i32* %80)
  store i32* %81, i32** %24, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32* (i8*, i32*, i8*, i32*)*, i32* (i8*, i32*, i8*, i32*)** %86, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i32*, i32** %24, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = call i32* %87(i8* %88, i32* %89, i8* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32* %92)
  br label %94

94:                                               ; preds = %84, %73
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @svn_depth_empty, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %10, align 8
  br label %220

100:                                              ; preds = %94
  %101 = load i32*, i32** %19, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = call i32* @apr_hash_first(i32* %101, i32* %102)
  store i32* %103, i32** %22, align 8
  br label %104

104:                                              ; preds = %213, %100
  %105 = load i32*, i32** %22, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %216

107:                                              ; preds = %104
  %108 = load i32*, i32** %22, align 8
  %109 = call i8* @apr_hash_this_key(i32* %108)
  store i8* %109, i8** %26, align 8
  %110 = load i32*, i32** %22, align 8
  %111 = call %struct.TYPE_9__* @apr_hash_this_val(i32* %110)
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %27, align 8
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @svn_pool_clear(i32* %112)
  %114 = load i32* (i8*)*, i32* (i8*)** %17, align 8
  %115 = icmp ne i32* (i8*)* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load i32* (i8*)*, i32* (i8*)** %17, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = call i32* %117(i8* %118)
  %120 = call i32 @SVN_ERR(i32* %119)
  br label %121

121:                                              ; preds = %116, %107
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %126 = call i64 @strcmp(i32 %124, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %213

129:                                              ; preds = %121
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %26, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = call i8* @svn_dirent_join(i8* %130, i8* %131, i32* %132)
  store i8* %133, i8** %28, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %135 = call i32* @svn_wc__entry_is_hidden(i32* %30, %struct.TYPE_9__* %134)
  %136 = call i32 @SVN_ERR(i32* %135)
  %137 = load i8*, i8** %28, align 8
  %138 = load i32*, i32** %20, align 8
  %139 = call i32* @svn_dirent_get_absolute(i8** %29, i8* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32* %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @svn_node_file, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %129
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* @svn_depth_immediates, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %146, %129
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32* (i8*, %struct.TYPE_9__*, i8*, i32*)*, i32* (i8*, %struct.TYPE_9__*, i8*, i32*)** %152, align 8
  %154 = load i8*, i8** %28, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = call i32* %153(i8* %154, %struct.TYPE_9__* %155, i8* %156, i32* %157)
  store i32* %158, i32** %24, align 8
  %159 = load i32*, i32** %24, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %150
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32* (i8*, i32*, i8*, i32*)*, i32* (i8*, i32*, i8*, i32*)** %163, align 8
  %165 = load i8*, i8** %28, align 8
  %166 = load i32*, i32** %24, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = call i32* %164(i8* %165, i32* %166, i8* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32* %169)
  br label %171

171:                                              ; preds = %161, %150
  br label %172

172:                                              ; preds = %171, %146
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @svn_node_dir, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %172
  %179 = load i32, i32* %30, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %212, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* @svn_depth_immediates, align 8
  %184 = icmp sge i64 %182, %183
  br i1 %184, label %185, label %212

185:                                              ; preds = %181
  %186 = load i64, i64* %15, align 8
  store i64 %186, i64* %32, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* @svn_depth_immediates, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i64, i64* @svn_depth_empty, align 8
  store i64 %191, i64* %32, align 8
  br label %192

192:                                              ; preds = %190, %185
  %193 = load i32*, i32** %25, align 8
  %194 = load i8*, i8** %29, align 8
  %195 = load i32*, i32** %20, align 8
  %196 = call i32* @svn_wc__adm_retrieve_internal2(i32* %193, i8* %194, i32* %195)
  store i32* %196, i32** %31, align 8
  %197 = load i32*, i32** %31, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %211

199:                                              ; preds = %192
  %200 = load i8*, i8** %28, align 8
  %201 = load i32*, i32** %31, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = load i64, i64* %32, align 8
  %205 = load i32, i32* %16, align 4
  %206 = load i32* (i8*)*, i32* (i8*)** %17, align 8
  %207 = load i8*, i8** %18, align 8
  %208 = load i32*, i32** %20, align 8
  %209 = call i32* @walker_helper(i8* %200, i32* %201, %struct.TYPE_10__* %202, i8* %203, i64 %204, i32 %205, i32* (i8*)* %206, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32* %209)
  br label %211

211:                                              ; preds = %199, %192
  br label %212

212:                                              ; preds = %211, %181, %178, %172
  br label %213

213:                                              ; preds = %212, %128
  %214 = load i32*, i32** %22, align 8
  %215 = call i32* @apr_hash_next(i32* %214)
  store i32* %215, i32** %22, align 8
  br label %104

216:                                              ; preds = %104
  %217 = load i32*, i32** %20, align 8
  %218 = call i32 @svn_pool_destroy(i32* %217)
  %219 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %219, i32** %10, align 8
  br label %220

220:                                              ; preds = %216, %98, %59
  %221 = load i32*, i32** %10, align 8
  ret i32* %221
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32* @svn_wc__entries_read_internal(i32**, i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_9__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_wc__entry_is_hidden(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
