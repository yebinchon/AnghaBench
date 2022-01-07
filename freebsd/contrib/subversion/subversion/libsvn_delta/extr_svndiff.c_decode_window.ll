; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_decode_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_decode_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32*, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@SVN_DELTA_WINDOW_SIZE = common dso_local global i32 0, align 4
@MAX_INSTRUCTION_SECTION_LEN = common dso_local global i32 0, align 4
@svn_txdelta_source = common dso_local global i64 0, align 8
@svn_txdelta_new = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i8*, i32*, i32)* @decode_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_window(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca %struct.TYPE_13__*, align 8
  %27 = alloca %struct.TYPE_13__*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %19, align 8
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %84

44:                                               ; preds = %9
  %45 = load i32*, i32** %17, align 8
  %46 = call %struct.TYPE_13__* @svn_stringbuf_create_empty(i32* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %25, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = call %struct.TYPE_13__* @svn_stringbuf_create_empty(i32* %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %26, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %52 = load i32, i32* @SVN_DELTA_WINDOW_SIZE, align 4
  %53 = call i32 @svn__decompress_lz4(i8* %49, i32 %50, %struct.TYPE_13__* %51, i32 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i8*, i8** %16, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %63 = load i32, i32* @MAX_INSTRUCTION_SECTION_LEN, align 4
  %64 = call i32 @svn__decompress_lz4(i8* %55, i32 %61, %struct.TYPE_13__* %62, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %15, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %16, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %19, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %83 = call i32* @svn_stringbuf__morph_into_string(%struct.TYPE_13__* %82)
  store i32* %83, i32** %24, align 8
  br label %133

84:                                               ; preds = %9
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = load i32*, i32** %17, align 8
  %89 = call %struct.TYPE_13__* @svn_stringbuf_create_empty(i32* %88)
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %27, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call %struct.TYPE_13__* @svn_stringbuf_create_empty(i32* %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %28, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %95 = load i32, i32* @SVN_DELTA_WINDOW_SIZE, align 4
  %96 = call i32 @svn__decompress_zlib(i8* %92, i32 %93, %struct.TYPE_13__* %94, i32 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i8*, i8** %16, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %106 = load i32, i32* @MAX_INSTRUCTION_SECTION_LEN, align 4
  %107 = call i32 @svn__decompress_zlib(i8* %98, i32 %104, %struct.TYPE_13__* %105, i32 %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %15, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %16, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8* %124, i8** %19, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %126 = call i32* @svn_stringbuf__morph_into_string(%struct.TYPE_13__* %125)
  store i32* %126, i32** %24, align 8
  br label %132

127:                                              ; preds = %84
  %128 = load i8*, i8** %19, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32*, i32** %17, align 8
  %131 = call i32* @svn_string_ncreate(i8* %128, i32 %129, i32* %130)
  store i32* %131, i32** %24, align 8
  br label %132

132:                                              ; preds = %127, %87
  br label %133

133:                                              ; preds = %132, %44
  %134 = load i8*, i8** %16, align 8
  %135 = load i8*, i8** %19, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @count_and_verify_instructions(i32* %20, i8* %134, i8* %135, i32 %136, i32 %137, i32 %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 16
  %145 = trunc i64 %144 to i32
  %146 = call %struct.TYPE_12__* @apr_palloc(i32* %141, i32 %145)
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %22, align 8
  store i32 0, i32* %21, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %23, align 8
  br label %150

150:                                              ; preds = %189, %133
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = icmp ult %struct.TYPE_12__* %151, %155
  br i1 %156, label %157, label %192

157:                                              ; preds = %150
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = load i8*, i8** %19, align 8
  %161 = call i8* @decode_instruction(%struct.TYPE_12__* %158, i8* %159, i8* %160)
  store i8* %161, i8** %16, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @svn_txdelta_source, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %157
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  br label %188

172:                                              ; preds = %157
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @svn_txdelta_new, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load i32, i32* %21, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %21, align 4
  br label %187

187:                                              ; preds = %178, %172
  br label %188

188:                                              ; preds = %187, %167
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 1
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %23, align 8
  br label %150

192:                                              ; preds = %150
  %193 = load i8*, i8** %16, align 8
  %194 = load i8*, i8** %19, align 8
  %195 = icmp eq i8* %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @SVN_ERR_ASSERT(i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 4
  store %struct.TYPE_12__* %198, %struct.TYPE_12__** %200, align 8
  %201 = load i32, i32* %20, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load i32*, i32** %24, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  store i32* %204, i32** %206, align 8
  %207 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %207
}

declare dso_local %struct.TYPE_13__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn__decompress_lz4(i8*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32* @svn_stringbuf__morph_into_string(%struct.TYPE_13__*) #1

declare dso_local i32 @svn__decompress_zlib(i8*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32* @svn_string_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @count_and_verify_instructions(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @decode_instruction(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
