; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_string_table.c_svn_fs_x__read_string_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_string_table.c_svn_fs_x__read_string_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_string_table(%struct.TYPE_8__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_8__* @apr_palloc(i32* %21, i32 16)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_packed__data_read(i32** %12, i32* %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @svn_packed__first_int_stream(i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32* @svn_packed__next_int_stream(i32* %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @svn_packed__first_byte_stream(i32* %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32* @svn_packed__next_byte_stream(i32* %34)
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_packed__get_uint(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 %44, 48
  %46 = trunc i64 %45 to i32
  %47 = call i8* @apr_pcalloc(i32* %41, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_9__*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %130, %4
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %61
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %17, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_packed__get_uint(i32* %63)
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %57
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %76, 32
  %78 = trunc i64 %77 to i32
  %79 = call i8* @apr_pcalloc(i32* %73, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_10__*
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 5
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %119, %72
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %93
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %18, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @svn_packed__get_uint(i32* %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @svn_packed__get_uint(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @svn_packed__get_uint(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @svn_packed__get_uint(i32* %113)
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %89
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %83

122:                                              ; preds = %83
  br label %123

123:                                              ; preds = %122, %57
  %124 = load i32*, i32** %15, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = call i8* @svn_packed__get_bytes(i32* %124, i32* %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %51

133:                                              ; preds = %51
  store i64 0, i64* %9, align 8
  br label %134

134:                                              ; preds = %194, %133
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %197

140:                                              ; preds = %134
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %144
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %19, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @svn_packed__get_uint(i32* %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %140
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 16
  %161 = trunc i64 %160 to i32
  %162 = call i8* @apr_pcalloc(i32* %155, i32 %161)
  %163 = bitcast i8* %162 to %struct.TYPE_7__*
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %165, align 8
  store i64 0, i64* %10, align 8
  br label %166

166:                                              ; preds = %189, %154
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %167, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %166
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %177
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %20, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = call i8* @svn_packed__get_bytes(i32* %179, i32* %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %173
  %190 = load i64, i64* %10, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %10, align 8
  br label %166

192:                                              ; preds = %166
  br label %193

193:                                              ; preds = %192, %140
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %9, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %9, align 8
  br label %134

197:                                              ; preds = %134
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %199 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %198, %struct.TYPE_8__** %199, align 8
  %200 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %200
}

declare dso_local %struct.TYPE_8__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_packed__data_read(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_packed__first_int_stream(i32*) #1

declare dso_local i32* @svn_packed__next_int_stream(i32*) #1

declare dso_local i32* @svn_packed__first_byte_stream(i32*) #1

declare dso_local i32* @svn_packed__next_byte_stream(i32*) #1

declare dso_local i32 @svn_packed__get_uint(i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_packed__get_bytes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
