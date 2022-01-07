; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc__internal_transmit_text_deltas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc__internal_transmit_text_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i32, i32*)*, i32* (%struct.TYPE_6__*, i8*, i8*, i32, %struct.TYPE_7__*, i32*)* }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32 }

@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@open_txdelta_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Checksum mismatch for text base of '%s'\00", align 1
@SVN_ERR_WC_CORRUPT_TEXT_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"While preparing '%s' for commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_transmit_text_deltas(i32* %0, i32** %1, i32** %2, i32* %3, i8* %4, i32 %5, %struct.TYPE_6__* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_7__, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i32** %2, i32*** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* null, i32** %26, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %38 = load i32*, i32** %21, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 @svn_wc__internal_translated_stream(i32** %30, i32* %34, i8* %35, i8* %36, i32 %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %10
  %45 = load i32*, i32** %30, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call i32* @copying_stream(i32* %45, i32* %46, i32* %47)
  store i32* %48, i32** %30, align 8
  br label %49

49:                                               ; preds = %44, %10
  %50 = load i32**, i32*** %14, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32*, i32** %15, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = call i32 @svn_wc__db_pristine_prepare_install(i32** %31, i32** %26, i32** %25, i32* null, i32* %53, i8* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %30, align 8
  %60 = load i32*, i32** %31, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i32* @copying_stream(i32* %59, i32* %60, i32* %61)
  store i32* %62, i32** %30, align 8
  br label %63

63:                                               ; preds = %52, %49
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %15, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @read_and_checksum_pristine_text(i32** %29, i32** %22, i32** %23, i32* %67, i8* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %76

73:                                               ; preds = %63
  %74 = load i32*, i32** %21, align 8
  %75 = call i32* @svn_stream_empty(i32* %74)
  store i32* %75, i32** %29, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32*, i32** %30, align 8
  %78 = load i32, i32* @svn_checksum_md5, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32*, i32** %21, align 8
  %81 = call i32* @svn_stream_checksummed2(i32* %77, i32** %24, i32* null, i32 %78, i32 %79, i32* %80)
  store i32* %81, i32** %30, align 8
  %82 = bitcast %struct.TYPE_7__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %82, i8 0, i64 24, i1 false)
  store i8* null, i8** %33, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32*, i32** %22, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = call i8* @svn_checksum_to_cstring_display(i32* %86, i32* %87)
  store i8* %88, i8** %33, align 8
  br label %89

89:                                               ; preds = %85, %76
  %90 = load i32, i32* @FALSE, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = load i32*, i32** %29, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = call i8* @svn_stream_disown(i32* %92, i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load i32*, i32** %30, align 8
  %97 = load i32*, i32** %21, align 8
  %98 = call i8* @svn_stream_disown(i32* %96, i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32* (%struct.TYPE_6__*, i8*, i8*, i32, %struct.TYPE_7__*, i32*)*, i32* (%struct.TYPE_6__*, i8*, i8*, i32, %struct.TYPE_7__*, i32*)** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = load i8*, i8** %33, align 8
  %106 = load i32, i32* @open_txdelta_stream, align 4
  %107 = load i32*, i32** %21, align 8
  %108 = call i32* %102(%struct.TYPE_6__* %103, i8* %104, i8* %105, i32 %106, %struct.TYPE_7__* %32, i32* %107)
  store i32* %108, i32** %27, align 8
  %109 = load i32*, i32** %29, align 8
  %110 = call i32* @svn_stream_close(i32* %109)
  store i32* %110, i32** %28, align 8
  %111 = load i32*, i32** %28, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %89
  store i32* null, i32** %23, align 8
  %114 = load i32*, i32** %27, align 8
  %115 = load i32*, i32** %28, align 8
  %116 = call i32* @svn_error_compose_create(i32* %114, i32* %115)
  store i32* %116, i32** %27, align 8
  br label %117

117:                                              ; preds = %113, %89
  %118 = load i32*, i32** %27, align 8
  %119 = load i32*, i32** %30, align 8
  %120 = call i32* @svn_stream_close(i32* %119)
  %121 = call i32* @svn_error_compose_create(i32* %118, i32* %120)
  store i32* %121, i32** %27, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %146

124:                                              ; preds = %117
  %125 = load i32*, i32** %23, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load i32*, i32** %22, align 8
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 @svn_checksum_match(i32* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %22, align 8
  %134 = load i32*, i32** %23, align 8
  %135 = load i32*, i32** %21, align 8
  %136 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %137 = load i8*, i8** %16, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = call i32 @svn_dirent_local_style(i8* %137, i32* %138)
  %140 = call i32* @svn_checksum_mismatch_err(i32* %133, i32* %134, i32* %135, i32 %136, i32 %139)
  %141 = load i32*, i32** %27, align 8
  %142 = call i32* @svn_error_compose_create(i32* %140, i32* %141)
  store i32* %142, i32** %27, align 8
  %143 = load i32, i32* @SVN_ERR_WC_CORRUPT_TEXT_BASE, align 4
  %144 = load i32*, i32** %27, align 8
  %145 = call i32* @svn_error_create(i32 %143, i32* %144, i32* null)
  store i32* %145, i32** %11, align 8
  br label %187

146:                                              ; preds = %127, %124, %117
  %147 = load i32*, i32** %27, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i8*, i8** %16, align 8
  %151 = load i32*, i32** %21, align 8
  %152 = call i32 @svn_dirent_local_style(i8* %150, i32* %151)
  %153 = call i32 @apr_psprintf(i32* %148, i32 %149, i32 %152)
  %154 = call i32 @SVN_ERR_W(i32* %147, i32 %153)
  %155 = load i32**, i32*** %13, align 8
  %156 = icmp ne i32** %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load i32*, i32** %24, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = call i32* @svn_checksum_dup(i32* %158, i32* %159)
  %161 = load i32**, i32*** %13, align 8
  store i32* %160, i32** %161, align 8
  br label %162

162:                                              ; preds = %157, %146
  %163 = load i32**, i32*** %14, align 8
  %164 = icmp ne i32** %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32*, i32** %26, align 8
  %167 = load i32*, i32** %25, align 8
  %168 = load i32*, i32** %24, align 8
  %169 = load i32*, i32** %21, align 8
  %170 = call i32 @svn_wc__db_pristine_install(i32* %166, i32* %167, i32* %168, i32* %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load i32*, i32** %25, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = call i32* @svn_checksum_dup(i32* %172, i32* %173)
  %175 = load i32**, i32*** %14, align 8
  store i32* %174, i32** %175, align 8
  br label %176

176:                                              ; preds = %165, %162
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %178, align 8
  %180 = load i8*, i8** %19, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = load i32*, i32** %21, align 8
  %183 = call i32 @svn_checksum_to_cstring(i32* %181, i32* %182)
  %184 = load i32*, i32** %21, align 8
  %185 = call i32 %179(i8* %180, i32 %183, i32* %184)
  %186 = call i32* @svn_error_trace(i32 %185)
  store i32* %186, i32** %11, align 8
  br label %187

187:                                              ; preds = %176, %132
  %188 = load i32*, i32** %11, align 8
  ret i32* %188
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_translated_stream(i32**, i32*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @copying_stream(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_prepare_install(i32**, i32**, i32**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @read_and_checksum_pristine_text(i32**, i32**, i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, i32**, i32*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @svn_checksum_to_cstring_display(i32*, i32*) #1

declare dso_local i8* @svn_stream_disown(i32*, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32*, i32) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32* @svn_checksum_dup(i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_install(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_checksum_to_cstring(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
