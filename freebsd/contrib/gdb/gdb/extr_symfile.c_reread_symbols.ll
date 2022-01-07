; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_reread_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_reread_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i64, i32, i32, %struct.TYPE_9__*, %struct.section_offsets*, i32, i32, i8*, i8*, i32*, i32*, %struct.TYPE_10__, %struct.TYPE_10__, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_11__*, %struct.objfile* }
%struct.TYPE_9__ = type { i32 (%struct.objfile*, i32)*, i32 (%struct.objfile*)*, i32 (%struct.objfile*)*, i32 (%struct.objfile*)* }
%struct.section_offsets = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i64 }
%struct.cleanup = type { i32 }

@object_files = common dso_local global %struct.objfile* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"`%s' has disappeared; keeping its symbols.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"`%s' has changed; re-reading symbols.\0A\00", align 1
@clear_symtab_users_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't close BFD for %s: %s\00", align 1
@gnutarget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't open %s to read symbols.\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't read symbols from %s: %s.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Can't find the file sections in `%s': %s\00", align 1
@symfile_objfile = common dso_local global %struct.objfile* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"(no debugging symbols found)\0A\00", align 1
@OBJF_SYMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reread_symbols() #0 {
  %1 = alloca %struct.objfile*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca %struct.section_offsets*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %10, %struct.objfile** %1, align 8
  br label %11

11:                                               ; preds = %307, %0
  %12 = load %struct.objfile*, %struct.objfile** %1, align 8
  %13 = icmp ne %struct.objfile* %12, null
  br i1 %13, label %14, label %311

14:                                               ; preds = %11
  %15 = load %struct.objfile*, %struct.objfile** %1, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 24
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %306

19:                                               ; preds = %14
  %20 = load %struct.objfile*, %struct.objfile** %1, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @stat(i32 %22, %struct.stat* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.objfile*, %struct.objfile** %1, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %307

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load %struct.objfile*, %struct.objfile** %1, align 8
  %36 = getelementptr inbounds %struct.objfile, %struct.objfile* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %305

39:                                               ; preds = %31
  %40 = load %struct.objfile*, %struct.objfile** %1, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.objfile*, %struct.objfile** %1, align 8
  %45 = call %struct.cleanup* @make_cleanup_free_objfile(%struct.objfile* %44)
  store %struct.cleanup* %45, %struct.cleanup** %6, align 8
  %46 = load i32, i32* @clear_symtab_users_cleanup, align 4
  %47 = call i32 @make_cleanup(i32 %46, i32 0)
  %48 = load %struct.objfile*, %struct.objfile** %1, align 8
  %49 = getelementptr inbounds %struct.objfile, %struct.objfile* %48, i32 0, i32 24
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call i8* @bfd_get_filename(%struct.TYPE_11__* %50)
  store i8* %51, i8** %9, align 8
  %52 = load %struct.objfile*, %struct.objfile** %1, align 8
  %53 = getelementptr inbounds %struct.objfile, %struct.objfile* %52, i32 0, i32 24
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i32 @bfd_close(%struct.TYPE_11__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %39
  %58 = load %struct.objfile*, %struct.objfile** %1, align 8
  %59 = getelementptr inbounds %struct.objfile, %struct.objfile* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (...) @bfd_get_error()
  %62 = call i8* @bfd_errmsg(i32 %61)
  %63 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %62)
  br label %64

64:                                               ; preds = %57, %39
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* @gnutarget, align 4
  %67 = call %struct.TYPE_11__* @bfd_openr(i8* %65, i32 %66)
  %68 = load %struct.objfile*, %struct.objfile** %1, align 8
  %69 = getelementptr inbounds %struct.objfile, %struct.objfile* %68, i32 0, i32 24
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.objfile*, %struct.objfile** %1, align 8
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %70, i32 0, i32 24
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp eq %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.objfile*, %struct.objfile** %1, align 8
  %76 = getelementptr inbounds %struct.objfile, %struct.objfile* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %64
  %80 = load %struct.objfile*, %struct.objfile** %1, align 8
  %81 = getelementptr inbounds %struct.objfile, %struct.objfile* %80, i32 0, i32 24
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* @bfd_object, align 4
  %84 = call i32 @bfd_check_format(%struct.TYPE_11__* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.objfile*, %struct.objfile** %1, align 8
  %88 = getelementptr inbounds %struct.objfile, %struct.objfile* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (...) @bfd_get_error()
  %91 = call i8* @bfd_errmsg(i32 %90)
  %92 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %89, i8* %91)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.objfile*, %struct.objfile** %1, align 8
  %95 = getelementptr inbounds %struct.objfile, %struct.objfile* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %97)
  %99 = call i64 @alloca(i32 %98)
  %100 = inttoptr i64 %99 to %struct.section_offsets*
  store %struct.section_offsets* %100, %struct.section_offsets** %7, align 8
  %101 = load %struct.section_offsets*, %struct.section_offsets** %7, align 8
  %102 = load %struct.objfile*, %struct.objfile** %1, align 8
  %103 = getelementptr inbounds %struct.objfile, %struct.objfile* %102, i32 0, i32 4
  %104 = load %struct.section_offsets*, %struct.section_offsets** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %105)
  %107 = call i32 @memcpy(%struct.section_offsets* %101, %struct.section_offsets* %104, i32 %106)
  %108 = load %struct.objfile*, %struct.objfile** %1, align 8
  %109 = getelementptr inbounds %struct.objfile, %struct.objfile* %108, i32 0, i32 23
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %93
  %114 = load %struct.objfile*, %struct.objfile** %1, align 8
  %115 = getelementptr inbounds %struct.objfile, %struct.objfile* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.objfile*, %struct.objfile** %1, align 8
  %118 = getelementptr inbounds %struct.objfile, %struct.objfile* %117, i32 0, i32 23
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @xmfree(i32* %116, i64 %120)
  br label %122

122:                                              ; preds = %113, %93
  %123 = load %struct.objfile*, %struct.objfile** %1, align 8
  %124 = getelementptr inbounds %struct.objfile, %struct.objfile* %123, i32 0, i32 23
  %125 = call i32 @memset(%struct.TYPE_10__* %124, i32 0, i32 8)
  %126 = load %struct.objfile*, %struct.objfile** %1, align 8
  %127 = getelementptr inbounds %struct.objfile, %struct.objfile* %126, i32 0, i32 22
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.objfile*, %struct.objfile** %1, align 8
  %133 = getelementptr inbounds %struct.objfile, %struct.objfile* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.objfile*, %struct.objfile** %1, align 8
  %136 = getelementptr inbounds %struct.objfile, %struct.objfile* %135, i32 0, i32 22
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @xmfree(i32* %134, i64 %138)
  br label %140

140:                                              ; preds = %131, %122
  %141 = load %struct.objfile*, %struct.objfile** %1, align 8
  %142 = getelementptr inbounds %struct.objfile, %struct.objfile* %141, i32 0, i32 22
  %143 = call i32 @memset(%struct.TYPE_10__* %142, i32 0, i32 8)
  %144 = load %struct.objfile*, %struct.objfile** %1, align 8
  %145 = getelementptr inbounds %struct.objfile, %struct.objfile* %144, i32 0, i32 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @bcache_xfree(i8* %146)
  %148 = call i8* (...) @bcache_xmalloc()
  %149 = load %struct.objfile*, %struct.objfile** %1, align 8
  %150 = getelementptr inbounds %struct.objfile, %struct.objfile* %149, i32 0, i32 8
  store i8* %148, i8** %150, align 8
  %151 = load %struct.objfile*, %struct.objfile** %1, align 8
  %152 = getelementptr inbounds %struct.objfile, %struct.objfile* %151, i32 0, i32 7
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @bcache_xfree(i8* %153)
  %155 = call i8* (...) @bcache_xmalloc()
  %156 = load %struct.objfile*, %struct.objfile** %1, align 8
  %157 = getelementptr inbounds %struct.objfile, %struct.objfile* %156, i32 0, i32 7
  store i8* %155, i8** %157, align 8
  %158 = load %struct.objfile*, %struct.objfile** %1, align 8
  %159 = getelementptr inbounds %struct.objfile, %struct.objfile* %158, i32 0, i32 21
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %140
  %163 = load %struct.objfile*, %struct.objfile** %1, align 8
  %164 = getelementptr inbounds %struct.objfile, %struct.objfile* %163, i32 0, i32 21
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @htab_delete(i32* %165)
  %167 = load %struct.objfile*, %struct.objfile** %1, align 8
  %168 = getelementptr inbounds %struct.objfile, %struct.objfile* %167, i32 0, i32 21
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %162, %140
  %170 = load %struct.objfile*, %struct.objfile** %1, align 8
  %171 = getelementptr inbounds %struct.objfile, %struct.objfile* %170, i32 0, i32 5
  %172 = call i32 @obstack_free(i32* %171, i32 0)
  %173 = load %struct.objfile*, %struct.objfile** %1, align 8
  %174 = getelementptr inbounds %struct.objfile, %struct.objfile* %173, i32 0, i32 20
  store i32* null, i32** %174, align 8
  %175 = load %struct.objfile*, %struct.objfile** %1, align 8
  %176 = getelementptr inbounds %struct.objfile, %struct.objfile* %175, i32 0, i32 19
  store i32* null, i32** %176, align 8
  %177 = load %struct.objfile*, %struct.objfile** %1, align 8
  %178 = getelementptr inbounds %struct.objfile, %struct.objfile* %177, i32 0, i32 18
  store i32* null, i32** %178, align 8
  %179 = load %struct.objfile*, %struct.objfile** %1, align 8
  %180 = getelementptr inbounds %struct.objfile, %struct.objfile* %179, i32 0, i32 17
  store i32* null, i32** %180, align 8
  %181 = load %struct.objfile*, %struct.objfile** %1, align 8
  %182 = getelementptr inbounds %struct.objfile, %struct.objfile* %181, i32 0, i32 16
  store i32* null, i32** %182, align 8
  %183 = load %struct.objfile*, %struct.objfile** %1, align 8
  %184 = getelementptr inbounds %struct.objfile, %struct.objfile* %183, i32 0, i32 15
  store i32* null, i32** %184, align 8
  %185 = load %struct.objfile*, %struct.objfile** %1, align 8
  %186 = getelementptr inbounds %struct.objfile, %struct.objfile* %185, i32 0, i32 14
  store i32* null, i32** %186, align 8
  %187 = load %struct.objfile*, %struct.objfile** %1, align 8
  %188 = getelementptr inbounds %struct.objfile, %struct.objfile* %187, i32 0, i32 13
  store i64 0, i64* %188, align 8
  %189 = load %struct.objfile*, %struct.objfile** %1, align 8
  %190 = getelementptr inbounds %struct.objfile, %struct.objfile* %189, i32 0, i32 12
  %191 = call i32 @memset(%struct.TYPE_10__* %190, i32 0, i32 8)
  %192 = load %struct.objfile*, %struct.objfile** %1, align 8
  %193 = getelementptr inbounds %struct.objfile, %struct.objfile* %192, i32 0, i32 11
  %194 = call i32 @memset(%struct.TYPE_10__* %193, i32 0, i32 8)
  %195 = load %struct.objfile*, %struct.objfile** %1, align 8
  %196 = getelementptr inbounds %struct.objfile, %struct.objfile* %195, i32 0, i32 10
  store i32* null, i32** %196, align 8
  %197 = load %struct.objfile*, %struct.objfile** %1, align 8
  %198 = call i32 @clear_objfile_data(%struct.objfile* %197)
  %199 = load %struct.objfile*, %struct.objfile** %1, align 8
  %200 = getelementptr inbounds %struct.objfile, %struct.objfile* %199, i32 0, i32 3
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = icmp ne %struct.TYPE_9__* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %169
  %204 = load %struct.objfile*, %struct.objfile** %1, align 8
  %205 = getelementptr inbounds %struct.objfile, %struct.objfile* %204, i32 0, i32 3
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load i32 (%struct.objfile*)*, i32 (%struct.objfile*)** %207, align 8
  %209 = load %struct.objfile*, %struct.objfile** %1, align 8
  %210 = call i32 %208(%struct.objfile* %209)
  br label %211

211:                                              ; preds = %203, %169
  %212 = load %struct.objfile*, %struct.objfile** %1, align 8
  %213 = getelementptr inbounds %struct.objfile, %struct.objfile* %212, i32 0, i32 9
  store i32* null, i32** %213, align 8
  %214 = call i8* (...) @bcache_xmalloc()
  %215 = load %struct.objfile*, %struct.objfile** %1, align 8
  %216 = getelementptr inbounds %struct.objfile, %struct.objfile* %215, i32 0, i32 8
  store i8* %214, i8** %216, align 8
  %217 = call i8* (...) @bcache_xmalloc()
  %218 = load %struct.objfile*, %struct.objfile** %1, align 8
  %219 = getelementptr inbounds %struct.objfile, %struct.objfile* %218, i32 0, i32 7
  store i8* %217, i8** %219, align 8
  %220 = load %struct.objfile*, %struct.objfile** %1, align 8
  %221 = getelementptr inbounds %struct.objfile, %struct.objfile* %220, i32 0, i32 5
  %222 = call i32 @obstack_init(i32* %221)
  %223 = load %struct.objfile*, %struct.objfile** %1, align 8
  %224 = call i64 @build_objfile_section_table(%struct.objfile* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %211
  %227 = load %struct.objfile*, %struct.objfile** %1, align 8
  %228 = getelementptr inbounds %struct.objfile, %struct.objfile* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (...) @bfd_get_error()
  %231 = call i8* @bfd_errmsg(i32 %230)
  %232 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %229, i8* %231)
  br label %233

233:                                              ; preds = %226, %211
  %234 = load %struct.objfile*, %struct.objfile** %1, align 8
  %235 = call i32 @terminate_minimal_symbol_table(%struct.objfile* %234)
  %236 = load %struct.objfile*, %struct.objfile** %1, align 8
  %237 = getelementptr inbounds %struct.objfile, %struct.objfile* %236, i32 0, i32 5
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %238)
  %240 = call i64 @obstack_alloc(i32* %237, i32 %239)
  %241 = inttoptr i64 %240 to %struct.section_offsets*
  %242 = load %struct.objfile*, %struct.objfile** %1, align 8
  %243 = getelementptr inbounds %struct.objfile, %struct.objfile* %242, i32 0, i32 4
  store %struct.section_offsets* %241, %struct.section_offsets** %243, align 8
  %244 = load %struct.objfile*, %struct.objfile** %1, align 8
  %245 = getelementptr inbounds %struct.objfile, %struct.objfile* %244, i32 0, i32 4
  %246 = load %struct.section_offsets*, %struct.section_offsets** %245, align 8
  %247 = load %struct.section_offsets*, %struct.section_offsets** %7, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %248)
  %250 = call i32 @memcpy(%struct.section_offsets* %246, %struct.section_offsets* %247, i32 %249)
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.objfile*, %struct.objfile** %1, align 8
  %253 = getelementptr inbounds %struct.objfile, %struct.objfile* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = load %struct.objfile*, %struct.objfile** %1, align 8
  %255 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %256 = icmp eq %struct.objfile* %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %233
  %258 = load %struct.objfile*, %struct.objfile** %1, align 8
  %259 = getelementptr inbounds %struct.objfile, %struct.objfile* %258, i32 0, i32 3
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i32 (%struct.objfile*)*, i32 (%struct.objfile*)** %261, align 8
  %263 = load %struct.objfile*, %struct.objfile** %1, align 8
  %264 = call i32 %262(%struct.objfile* %263)
  br label %265

265:                                              ; preds = %257, %233
  %266 = load %struct.objfile*, %struct.objfile** %1, align 8
  %267 = getelementptr inbounds %struct.objfile, %struct.objfile* %266, i32 0, i32 3
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i32 (%struct.objfile*)*, i32 (%struct.objfile*)** %269, align 8
  %271 = load %struct.objfile*, %struct.objfile** %1, align 8
  %272 = call i32 %270(%struct.objfile* %271)
  %273 = call i32 @clear_complaints(i32* @symfile_complaints, i32 1, i32 1)
  %274 = load %struct.objfile*, %struct.objfile** %1, align 8
  %275 = getelementptr inbounds %struct.objfile, %struct.objfile* %274, i32 0, i32 3
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32 (%struct.objfile*, i32)*, i32 (%struct.objfile*, i32)** %277, align 8
  %279 = load %struct.objfile*, %struct.objfile** %1, align 8
  %280 = call i32 %278(%struct.objfile* %279, i32 0)
  %281 = call i32 (...) @have_partial_symbols()
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %265
  %284 = call i32 (...) @have_full_symbols()
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %283
  %287 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %288 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %289 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %290

290:                                              ; preds = %286, %283, %265
  %291 = load i32, i32* @OBJF_SYMS, align 4
  %292 = load %struct.objfile*, %struct.objfile** %1, align 8
  %293 = getelementptr inbounds %struct.objfile, %struct.objfile* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = call i32 @clear_complaints(i32* @symfile_complaints, i32 0, i32 1)
  %297 = call i32 (...) @reinit_frame_cache()
  %298 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %299 = call i32 @discard_cleanups(%struct.cleanup* %298)
  %300 = load i64, i64* %2, align 8
  %301 = load %struct.objfile*, %struct.objfile** %1, align 8
  %302 = getelementptr inbounds %struct.objfile, %struct.objfile* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  store i32 1, i32* %3, align 4
  %303 = load %struct.objfile*, %struct.objfile** %1, align 8
  %304 = call i32 @reread_separate_symbols(%struct.objfile* %303)
  br label %305

305:                                              ; preds = %290, %31
  br label %306

306:                                              ; preds = %305, %14
  br label %307

307:                                              ; preds = %306, %26
  %308 = load %struct.objfile*, %struct.objfile** %1, align 8
  %309 = getelementptr inbounds %struct.objfile, %struct.objfile* %308, i32 0, i32 25
  %310 = load %struct.objfile*, %struct.objfile** %309, align 8
  store %struct.objfile* %310, %struct.objfile** %1, align 8
  br label %11

311:                                              ; preds = %11
  %312 = load i32, i32* %3, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (...) @clear_symtab_users()
  br label %316

316:                                              ; preds = %314, %311
  ret void
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local %struct.cleanup* @make_cleanup_free_objfile(%struct.objfile*) #1

declare dso_local i32 @make_cleanup(i32, i32) #1

declare dso_local i8* @bfd_get_filename(%struct.TYPE_11__*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_11__*) #1

declare dso_local i32 @error(i8*, i32, ...) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local %struct.TYPE_11__* @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i32 @memcpy(%struct.section_offsets*, %struct.section_offsets*, i32) #1

declare dso_local i32 @xmfree(i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bcache_xfree(i8*) #1

declare dso_local i8* @bcache_xmalloc(...) #1

declare dso_local i32 @htab_delete(i32*) #1

declare dso_local i32 @obstack_free(i32*, i32) #1

declare dso_local i32 @clear_objfile_data(%struct.objfile*) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i64 @build_objfile_section_table(%struct.objfile*) #1

declare dso_local i32 @terminate_minimal_symbol_table(%struct.objfile*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @clear_complaints(i32*, i32, i32) #1

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i32 @have_full_symbols(...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @reinit_frame_cache(...) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i32 @reread_separate_symbols(%struct.objfile*) #1

declare dso_local i32 @clear_symtab_users(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
