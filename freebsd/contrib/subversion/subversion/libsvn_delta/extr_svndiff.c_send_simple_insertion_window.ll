; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_send_simple_insertion_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_send_simple_insertion_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.encoder_baton = type { i32, i32, i64 }

@SVNDIFF_HEADER_SIZE = common dso_local global i32 0, align 4
@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i32 0, align 4
@MAX_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@svn_txdelta_new = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, %struct.encoder_baton*)* @send_simple_insertion_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_simple_insertion_window(%struct.TYPE_7__* %0, %struct.encoder_baton* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.encoder_baton*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.encoder_baton* %1, %struct.encoder_baton** %4, align 8
  %13 = load i32, i32* @SVNDIFF_HEADER_SIZE, align 4
  %14 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %15 = mul nsw i32 5, %14
  %16 = add nsw i32 %13, %15
  %17 = load i32, i32* @MAX_INSTRUCTION_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @MAX_INSTRUCTION_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @svn_txdelta_new, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.encoder_baton*, %struct.encoder_baton** %4, align 8
  %62 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %2
  %66 = load i64, i64* @TRUE, align 8
  %67 = load %struct.encoder_baton*, %struct.encoder_baton** %4, align 8
  %68 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.encoder_baton*, %struct.encoder_baton** %4, align 8
  %70 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @get_svndiff_header(i32 %71)
  %73 = load i32, i32* @SVNDIFF_HEADER_SIZE, align 4
  %74 = call i32 @memcpy(i8* %21, i32 %72, i32 %73)
  %75 = load i32, i32* @SVNDIFF_HEADER_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %21, i64 %76
  store i8* %77, i8** %8, align 8
  br label %79

78:                                               ; preds = %2
  store i8* %21, i8** %8, align 8
  br label %79

79:                                               ; preds = %78, %65
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = ashr i64 %82, 6
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 128
  %90 = trunc i64 %89 to i8
  %91 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %90, i8* %91, align 16
  store i64 1, i64* %10, align 8
  br label %102

92:                                               ; preds = %79
  %93 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 -128, i8* %93, align 16
  %94 = getelementptr inbounds i8, i8* %24, i64 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @svn__encode_uint(i8* %94, i64 %97)
  %99 = ptrtoint i8* %98 to i64
  %100 = ptrtoint i8* %24 to i64
  %101 = sub i64 %99, %100
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %92, %85
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @svn__encode_uint(i8* %103, i64 %106)
  store i8* %107, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @svn__encode_uint(i8* %108, i64 %111)
  store i8* %112, i8** %8, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @svn__encode_uint(i8* %113, i64 %116)
  store i8* %117, i8** %8, align 8
  %118 = load i64, i64* %10, align 8
  %119 = trunc i64 %118 to i8
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i64, i64* %12, align 8
  %125 = call i8* @svn__encode_uint(i8* %123, i64 %124)
  store i8* %125, i8** %8, align 8
  store i64 0, i64* %11, align 8
  br label %126

126:                                              ; preds = %137, %102
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds i8, i8* %24, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 %133, i8* %136, align 1
  br label %137

137:                                              ; preds = %130
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %126

140:                                              ; preds = %126
  %141 = load i8*, i8** %8, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = ptrtoint i8* %21 to i64
  %144 = sub i64 %142, %143
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %144, %145
  store i64 %146, i64* %9, align 8
  %147 = load %struct.encoder_baton*, %struct.encoder_baton** %4, align 8
  %148 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @svn_stream_write(i32 %149, i8* %21, i64* %9)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %140
  %155 = load %struct.encoder_baton*, %struct.encoder_baton** %4, align 8
  %156 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @svn_stream_write(i32 %157, i8* %162, i64* %12)
  %164 = call i32 @SVN_ERR(i32 %163)
  br label %165

165:                                              ; preds = %154, %140
  %166 = load i32*, i32** @SVN_NO_ERROR, align 8
  %167 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %167)
  ret i32* %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @get_svndiff_header(i32) #2

declare dso_local i8* @svn__encode_uint(i8*, i64) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_stream_write(i32, i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
