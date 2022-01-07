; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_l2p_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_l2p_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { i64, i32, i64 }

@SVN_ERR_FS_INDEX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"L2P actual page size does not match page table value.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32*, %struct.TYPE_5__*, i32*)* @get_l2p_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_l2p_page(%struct.TYPE_6__** %0, i32* %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i8* @apr_pcalloc(i32* %17, i32 24)
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %13, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @svn_fs_x__rev_file_l2p_index(i32** %16, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %16, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @packed_stream_seek(i32* %23, i64 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i8* @apr_pcalloc(i32* %33, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i8* @apr_pcalloc(i32* %44, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @packed_stream_get(i32* %14, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 24
  %62 = trunc i64 %61 to i32
  %63 = call i8* @apr_pcalloc(i32* %58, i32 %62)
  %64 = bitcast i8* %63 to i8**
  store i8** %64, i8*** %15, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %84, %4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @packed_stream_get(i32* %10, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = getelementptr i8, i8* %78, i64 -1
  %80 = load i8**, i8*** %15, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %79, i8** %83, align 8
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %65

87:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %163, %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %166

94:                                               ; preds = %88
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @packed_stream_get(i32* %10, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 -1, i32* %106, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  br label %162

113:                                              ; preds = %94
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %113
  %118 = load i8**, i8*** %15, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @packed_stream_get(i32* %10, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %161

141:                                              ; preds = %113
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %148, i32* %154, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %141, %117
  br label %162

162:                                              ; preds = %161, %100
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %88

166:                                              ; preds = %88
  %167 = load i32*, i32** %16, align 8
  %168 = call i64 @packed_stream_offset(i32* %167)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = icmp ne i64 %168, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %166
  %178 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %179 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %180 = call i32* @svn_error_create(i32 %178, i32* null, i32 %179)
  store i32* %180, i32** %5, align 8
  br label %185

181:                                              ; preds = %166
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %183, align 8
  %184 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %184, i32** %5, align 8
  br label %185

185:                                              ; preds = %181, %177
  %186 = load i32*, i32** %5, align 8
  ret i32* %186
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_l2p_index(i32**, i32*) #1

declare dso_local i32 @packed_stream_seek(i32*, i64) #1

declare dso_local i32 @packed_stream_get(i32*, i32*) #1

declare dso_local i64 @packed_stream_offset(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
