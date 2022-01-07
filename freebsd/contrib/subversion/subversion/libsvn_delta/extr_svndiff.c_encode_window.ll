; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_encode_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_encode_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__*, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }

@MAX_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__**, %struct.TYPE_18__**, %struct.TYPE_19__**, %struct.TYPE_16__*, i32, i32, i32*)* @encode_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_window(%struct.TYPE_18__** %0, %struct.TYPE_18__** %1, %struct.TYPE_19__** %2, %struct.TYPE_16__* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %26 = load i32, i32* @MAX_INSTRUCTION_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %15, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %32)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %16, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %21, align 8
  br label %37

37:                                               ; preds = %102, %7
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i64 %45
  %47 = icmp ult %struct.TYPE_17__* %38, %46
  br i1 %47, label %48, label %105

48:                                               ; preds = %37
  store i8* %29, i8** %20, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %58 [
    i32 129, label %52
    i32 128, label %54
    i32 130, label %56
  ]

52:                                               ; preds = %48
  %53 = load i8*, i8** %20, align 8
  store i8 0, i8* %53, align 1
  br label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** %20, align 8
  store i8 64, i8* %55, align 1
  br label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** %20, align 8
  store i8 -128, i8* %57, align 1
  br label %58

58:                                               ; preds = %48, %56, %54, %52
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load i8*, i8** %20, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %20, align 8
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %69
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %70, align 1
  br label %83

76:                                               ; preds = %58
  %77 = load i8*, i8** %20, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @svn__encode_uint(i8* %78, i32 %81)
  store i8* %82, i8** %20, align 8
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 130
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** %20, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @svn__encode_uint(i8* %89, i32 %92)
  store i8* %93, i8** %20, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = ptrtoint i8* %29 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_18__* %95, i8* %29, i32 %100)
  br label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 1
  store %struct.TYPE_17__* %104, %struct.TYPE_17__** %21, align 8
  br label %37

105:                                              ; preds = %37
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @append_encoded_int(%struct.TYPE_18__* %106, i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @append_encoded_int(%struct.TYPE_18__* %111, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @append_encoded_int(%struct.TYPE_18__* %116, i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %136

123:                                              ; preds = %105
  %124 = load i32*, i32** %14, align 8
  %125 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %124)
  store %struct.TYPE_18__* %125, %struct.TYPE_18__** %22, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %133 = call i32 @svn__compress_lz4(i32 %128, i32 %131, %struct.TYPE_18__* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %15, align 8
  br label %154

136:                                              ; preds = %105
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load i32*, i32** %14, align 8
  %141 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %140)
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %23, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @svn__compress_zlib(i32 %144, i32 %147, %struct.TYPE_18__* %148, i32 %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %15, align 8
  br label %153

153:                                              ; preds = %139, %136
  br label %154

154:                                              ; preds = %153, %123
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @append_encoded_int(%struct.TYPE_18__* %155, i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %180

162:                                              ; preds = %154
  %163 = load i32*, i32** %14, align 8
  %164 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %163)
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %24, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %176 = call i32 @svn__compress_lz4(i32 %169, i32 %174, %struct.TYPE_18__* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %179 = call %struct.TYPE_19__* @svn_stringbuf__morph_into_string(%struct.TYPE_18__* %178)
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %17, align 8
  br label %207

180:                                              ; preds = %154
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %202

183:                                              ; preds = %180
  %184 = load i32*, i32** %14, align 8
  %185 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %184)
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %25, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @svn__compress_zlib(i32 %190, i32 %195, %struct.TYPE_18__* %196, i32 %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %201 = call %struct.TYPE_19__* @svn_stringbuf__morph_into_string(%struct.TYPE_18__* %200)
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %17, align 8
  br label %206

202:                                              ; preds = %180
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  store %struct.TYPE_19__* %205, %struct.TYPE_19__** %17, align 8
  br label %206

206:                                              ; preds = %202, %183
  br label %207

207:                                              ; preds = %206, %162
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @append_encoded_int(%struct.TYPE_18__* %208, i32 %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %214 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %213, %struct.TYPE_18__** %214, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %215, %struct.TYPE_18__** %216, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %218 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__* %217, %struct.TYPE_19__** %218, align 8
  %219 = load i32*, i32** @SVN_NO_ERROR, align 8
  %220 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %220)
  ret i32* %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_18__* @svn_stringbuf_create_empty(i32*) #2

declare dso_local i8* @svn__encode_uint(i8*, i32) #2

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_18__*, i8*, i32) #2

declare dso_local i32 @append_encoded_int(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn__compress_lz4(i32, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @svn__compress_zlib(i32, i32, %struct.TYPE_18__*, i32) #2

declare dso_local %struct.TYPE_19__* @svn_stringbuf__morph_into_string(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
