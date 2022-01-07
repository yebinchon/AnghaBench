; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { %struct.edit_baton*, i32, i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.edit_baton = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton*, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.file_baton*
  store %struct.file_baton* %18, %struct.file_baton** %8, align 8
  %19 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 0
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %9, align 8
  %22 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %228

28:                                               ; preds = %3
  %29 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %30 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @svn_stream_close(i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* @svn_checksum_md5, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_checksum_parse_hex(i32** %10, i32 %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %40 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* @svn_checksum__from_digest_md5(i32 %41, i32* %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_checksum_match(i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %28
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %54 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @svn_dirent_local_style(i32 %55, i32* %56)
  %58 = call i32* @svn_checksum_mismatch_err(i32* %49, i32* %50, i32* %51, i32 %52, i32 %57)
  store i32* %58, i32** %4, align 8
  br label %228

59:                                               ; preds = %28
  %60 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %61 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %60, i32 0, i32 11
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %66 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %65, i32 0, i32 10
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %71 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69
  %75 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %76 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %79 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @svn_io_file_rename2(i32 %77, i32 %80, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %162

85:                                               ; preds = %69, %64, %59
  store i8* null, i8** %13, align 8
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %87 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %88 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %87, i32 0, i32 11
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 11
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %98 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @get_eol_style(i32* %12, i8** %13, i32 %96, i32 %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %91, %85
  %104 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %105 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %104, i32 0, i32 10
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %103
  %109 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %110 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %109, i32 0, i32 10
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %115 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %118 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %121 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %124 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %127 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @svn_subst_build_keywords3(i32** %15, i32 %113, i32 %116, i32 %119, i32 %122, i64 %125, i32 %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  br label %132

132:                                              ; preds = %108, %103
  %133 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %134 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %137 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %144 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %147 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %150 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @svn_subst_copy_and_translate4(i32 %135, i32 %138, i8* %139, i32 %140, i32* %141, i32 %142, i32 %145, i32 %148, i32 %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %156 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FALSE, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @svn_io_remove_file2(i32 %157, i32 %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  br label %162

162:                                              ; preds = %132, %74
  %163 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %164 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %169 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TRUE, align 4
  %172 = load i32, i32* @FALSE, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @svn_io_set_file_executable(i32 %170, i32 %171, i32 %172, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %176

176:                                              ; preds = %167, %162
  %177 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %178 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %176
  %182 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %183 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %188 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %191 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @svn_io_set_file_affected_time(i64 %189, i32 %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  br label %196

196:                                              ; preds = %186, %181, %176
  %197 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %198 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %197, i32 0, i32 0
  %199 = load %struct.edit_baton*, %struct.edit_baton** %198, align 8
  %200 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %199, i32 0, i32 1
  %201 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %200, align 8
  %202 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %201, null
  br i1 %202, label %203, label %226

203:                                              ; preds = %196
  %204 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %205 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @svn_wc_notify_update_add, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = call %struct.TYPE_8__* @svn_wc_create_notify(i32 %206, i32 %207, i32* %208)
  store %struct.TYPE_8__* %209, %struct.TYPE_8__** %16, align 8
  %210 = load i32, i32* @svn_node_file, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %214 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %213, i32 0, i32 0
  %215 = load %struct.edit_baton*, %struct.edit_baton** %214, align 8
  %216 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %215, i32 0, i32 1
  %217 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %216, align 8
  %218 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %219 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %218, i32 0, i32 0
  %220 = load %struct.edit_baton*, %struct.edit_baton** %219, align 8
  %221 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 %217(i32 %222, %struct.TYPE_8__* %223, i32* %224)
  br label %226

226:                                              ; preds = %203, %196
  %227 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %227, i32** %4, align 8
  br label %228

228:                                              ; preds = %226, %48, %26
  %229 = load i32*, i32** %4, align 8
  ret i32* %229
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32* @svn_checksum__from_digest_md5(i32, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i32, i32, i32, i32*) #1

declare dso_local i32 @get_eol_style(i32*, i8**, i32, i32) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @svn_subst_copy_and_translate4(i32, i32, i8*, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i32, i32, i32*) #1

declare dso_local i32 @svn_io_set_file_executable(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_io_set_file_affected_time(i64, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
