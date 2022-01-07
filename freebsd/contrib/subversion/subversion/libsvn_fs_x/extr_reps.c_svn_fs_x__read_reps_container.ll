; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__read_reps_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__read_reps_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8**, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i32, i8*, i64, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_reps_container(%struct.TYPE_6__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_6__* @apr_pcalloc(i32* %22, i32 56)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %13, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @svn_packed__data_read(i32** %14, i32* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = call i32* @svn_packed__first_int_stream(i32* %29)
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i32* @svn_packed__next_int_stream(i32* %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32* @svn_packed__next_int_stream(i32* %33)
  store i32* %34, i32** %17, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = call i32* @svn_packed__next_int_stream(i32* %35)
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32* @svn_packed__first_byte_stream(i32* %37)
  store i32* %38, i32** %19, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = call i32 @svn_packed__get_bytes(i32* %39, i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @apr_pmemdup(i32* %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = call i32* @svn_packed__first_int_substream(i32* %55)
  %57 = call i8* @svn_packed__int_count(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = call i8* @apr_palloc(i32* %61, i32 %67)
  %69 = bitcast i8* %68 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %10, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %102, %4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %20, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i64 @svn_packed__get_int(i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i64 @svn_packed__get_uint(i32* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i64 @svn_packed__get_uint(i32* %92)
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i64 @svn_packed__get_uint(i32* %97)
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %73

105:                                              ; preds = %73
  %106 = load i32*, i32** %17, align 8
  %107 = call i32* @svn_packed__first_int_substream(i32* %106)
  %108 = call i8* @svn_packed__int_count(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 16
  %118 = trunc i64 %117 to i32
  %119 = call i8* @apr_palloc(i32* %112, i32 %118)
  %120 = bitcast i8* %119 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %12, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %123, align 8
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %144, %105
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %21, align 8
  %135 = load i32*, i32** %17, align 8
  %136 = call i64 @svn_packed__get_int(i32* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i64 @svn_packed__get_uint(i32* %139)
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %124

147:                                              ; preds = %124
  %148 = load i32*, i32** %16, align 8
  %149 = call i8* @svn_packed__int_count(i32* %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 8
  %160 = trunc i64 %159 to i32
  %161 = call i8* @apr_palloc(i32* %153, i32 %160)
  %162 = bitcast i8* %161 to i8**
  store i8** %162, i8*** %11, align 8
  %163 = load i8**, i8*** %11, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  store i8** %163, i8*** %165, align 8
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %180, %147
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i32*, i32** %16, align 8
  %174 = call i64 @svn_packed__get_uint(i32* %173)
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8**, i8*** %11, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %166

183:                                              ; preds = %166
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load i8**, i8*** %11, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %189, i64 %193
  store i8* %188, i8** %194, align 8
  %195 = load i32*, i32** %18, align 8
  %196 = call i64 @svn_packed__get_uint(i32* %195)
  %197 = trunc i64 %196 to i32
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %200, %struct.TYPE_6__** %201, align 8
  %202 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %202
}

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_packed__data_read(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_packed__first_int_stream(i32*) #1

declare dso_local i32* @svn_packed__next_int_stream(i32*) #1

declare dso_local i32* @svn_packed__first_byte_stream(i32*) #1

declare dso_local i32 @svn_packed__get_bytes(i32*, i32*) #1

declare dso_local i32 @apr_pmemdup(i32*, i32, i32) #1

declare dso_local i8* @svn_packed__int_count(i32*) #1

declare dso_local i32* @svn_packed__first_int_substream(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i64 @svn_packed__get_int(i32*) #1

declare dso_local i64 @svn_packed__get_uint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
