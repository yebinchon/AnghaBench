; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_parse_property_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_parse_property_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i8*, i8*)*, i32 (i8*, i8*, %struct.TYPE_9__*)*, i32 (i8*, i8*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Incomplete or unterminated property block\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PROPS-END\00", align 1
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, %struct.TYPE_10__*, i8*, i8*, i64, i64*, i32*)* @parse_property_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_property_block(i32* %0, i64 %1, %struct.TYPE_10__* %2, i8* %3, i8* %4, i64 %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_9__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %19, align 8
  %31 = load i64*, i64** %16, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %202, %8
  %33 = load i64, i64* %11, align 8
  %34 = load i64*, i64** %16, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %203

37:                                               ; preds = %32
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @svn_pool_clear(i32* %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @svn_stream_readline(i32* %40, %struct.TYPE_8__** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %21, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %21, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32* @svn_error_create(i32 %47, i32* null, i32 %48)
  store i32* %49, i32** %9, align 8
  br label %207

50:                                               ; preds = %37
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load i64*, i64** %16, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %20, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %203

65:                                               ; preds = %50
  %66 = load i8*, i8** %20, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 75
  br i1 %70, label %71, label %157

71:                                               ; preds = %65
  %72 = load i8*, i8** %20, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %157

77:                                               ; preds = %71
  %78 = load i8*, i8** %20, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i32, i32* @APR_SIZE_MAX, align 4
  %81 = call i32 @svn_cstring_strtoui64(i64* %23, i8* %79, i32 0, i32 %80, i32 10)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i64*, i64** %16, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %23, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @read_key_or_val(i8** %22, i64* %83, i32* %84, i64 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @svn_stream_readline(i32* %89, %struct.TYPE_8__** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %21, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i64, i64* %21, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = call i32* (...) @stream_ran_dry()
  store i32* %96, i32** %9, align 8
  br label %207

97:                                               ; preds = %77
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = load i64*, i64** %16, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %20, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 86
  br i1 %112, label %113, label %154

113:                                              ; preds = %97
  %114 = load i8*, i8** %20, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %154

119:                                              ; preds = %113
  %120 = load i8*, i8** %20, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = call i32 @svn_cstring_atoi64(i64* %26, i8* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i64, i64* %26, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i64 %124, i64* %125, align 8
  %126 = load i64*, i64** %16, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = call i32 @read_key_or_val(i8** %25, i64* %126, i32* %127, i64 %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i8*, i8** %25, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i8* %133, i8** %134, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %119
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32 (i8*, i8*, %struct.TYPE_9__*)*, i32 (i8*, i8*, %struct.TYPE_9__*)** %139, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %22, align 8
  %143 = call i32 %140(i8* %141, i8* %142, %struct.TYPE_9__* %24)
  %144 = call i32 @SVN_ERR(i32 %143)
  br label %153

145:                                              ; preds = %119
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32 (i8*, i8*, %struct.TYPE_9__*)*, i32 (i8*, i8*, %struct.TYPE_9__*)** %147, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %22, align 8
  %151 = call i32 %148(i8* %149, i8* %150, %struct.TYPE_9__* %24)
  %152 = call i32 @SVN_ERR(i32 %151)
  br label %153

153:                                              ; preds = %145, %137
  br label %156

154:                                              ; preds = %113, %97
  %155 = call i32* (...) @stream_malformed()
  store i32* %155, i32** %9, align 8
  br label %207

156:                                              ; preds = %153
  br label %201

157:                                              ; preds = %71, %65
  %158 = load i8*, i8** %20, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 68
  br i1 %162, label %163, label %198

163:                                              ; preds = %157
  %164 = load i8*, i8** %20, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 32
  br i1 %168, label %169, label %198

169:                                              ; preds = %163
  %170 = load i8*, i8** %20, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i32, i32* @APR_SIZE_MAX, align 4
  %173 = call i32 @svn_cstring_strtoui64(i64* %28, i8* %171, i32 0, i32 %172, i32 10)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load i64*, i64** %16, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i64, i64* %28, align 8
  %178 = load i32*, i32** %19, align 8
  %179 = call i32 @read_key_or_val(i8** %27, i64* %175, i32* %176, i64 %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  %181 = load i64, i64* %15, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %169
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %185, align 8
  %187 = icmp ne i32 (i8*, i8*)* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %183, %169
  %189 = call i32* (...) @stream_malformed()
  store i32* %189, i32** %9, align 8
  br label %207

190:                                              ; preds = %183
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %192, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = load i8*, i8** %27, align 8
  %196 = call i32 %193(i8* %194, i8* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  br label %200

198:                                              ; preds = %163, %157
  %199 = call i32* (...) @stream_malformed()
  store i32* %199, i32** %9, align 8
  br label %207

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %156
  br label %202

202:                                              ; preds = %201
  br label %32

203:                                              ; preds = %64, %32
  %204 = load i32*, i32** %19, align 8
  %205 = call i32 @svn_pool_destroy(i32* %204)
  %206 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %206, i32** %9, align 8
  br label %207

207:                                              ; preds = %203, %198, %188, %154, %95, %46
  %208 = load i32*, i32** %9, align 8
  ret i32* %208
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_8__**, i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_cstring_strtoui64(i64*, i8*, i32, i32, i32) #1

declare dso_local i32 @read_key_or_val(i8**, i64*, i32*, i64, i32*) #1

declare dso_local i32* @stream_ran_dry(...) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32* @stream_malformed(...) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
