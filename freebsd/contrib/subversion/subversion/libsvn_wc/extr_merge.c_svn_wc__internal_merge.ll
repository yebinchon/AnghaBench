; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_svn_wc__internal_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_svn_wc__internal_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i32*, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@svn_wc_merge_no_merge = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_merge(i32** %0, i32** %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32* %11, i32 %12, i8* %13, i32* %14, i32* %15, i32 %16, i8* %17, i32* %18, i32* %19) #0 {
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_9__*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.TYPE_10__, align 8
  %46 = alloca i8*, align 8
  store i32** %0, i32*** %21, align 8
  store i32** %1, i32*** %22, align 8
  store i32* %2, i32** %23, align 8
  store i32* %3, i32** %24, align 8
  store i8* %4, i8** %25, align 8
  store i8* %5, i8** %26, align 8
  store i8* %6, i8** %27, align 8
  store i8* %7, i8** %28, align 8
  store i8* %8, i8** %29, align 8
  store i8* %9, i8** %30, align 8
  store i8* %10, i8** %31, align 8
  store i32* %11, i32** %32, align 8
  store i32 %12, i32* %33, align 4
  store i8* %13, i8** %34, align 8
  store i32* %14, i32** %35, align 8
  store i32* %15, i32** %36, align 8
  store i32 %16, i32* %37, align 4
  store i8* %17, i8** %38, align 8
  store i32* %18, i32** %39, align 8
  store i32* %19, i32** %40, align 8
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %42, align 4
  %48 = load i8*, i8** %25, align 8
  %49 = call i32 @svn_dirent_is_absolute(i8* %48)
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i8*, i8** %26, align 8
  %52 = call i32 @svn_dirent_is_absolute(i8* %51)
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  %54 = load i8*, i8** %27, align 8
  %55 = call i32 @svn_dirent_is_absolute(i8* %54)
  %56 = call i32 @SVN_ERR_ASSERT(i32 %55)
  %57 = load i32**, i32*** %21, align 8
  store i32* null, i32** %57, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  store i32* %58, i32** %59, align 8
  %60 = load i8*, i8** %27, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** %28, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %32, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32* %64, i32** %65, align 8
  %66 = load i32*, i32** %36, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  store i32* %66, i32** %67, align 8
  %68 = load i8*, i8** %34, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load i32*, i32** %35, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  store i32* %70, i32** %71, align 8
  %72 = load i32*, i32** %36, align 8
  %73 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %74 = call %struct.TYPE_9__* @get_prop(i32* %72, i32 %73)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %43, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %20
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @svn_mime_type_is_binary(i8* %86)
  store i32 %87, i32* %42, align 4
  br label %102

88:                                               ; preds = %76, %20
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %92 = call i8* @svn_prop_get_value(i32* %90, i32 %91)
  store i8* %92, i8** %46, align 8
  %93 = load i8*, i8** %46, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i8*, i8** %46, align 8
  %97 = call i32 @svn_mime_type_is_binary(i8* %96)
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %95, %88
  %100 = phi i1 [ false, %88 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %42, align 4
  br label %102

102:                                              ; preds = %99, %81
  %103 = load i32, i32* %42, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %34, align 8
  %107 = icmp ne i8* %106, null
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i1 [ false, %102 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %27, align 8
  %112 = load i32, i32* %37, align 4
  %113 = load i8*, i8** %38, align 8
  %114 = load i32*, i32** %40, align 8
  %115 = load i32*, i32** %40, align 8
  %116 = call i32 @detranslate_wc_file(i8** %41, %struct.TYPE_10__* %45, i32 %110, i8* %111, i32 %112, i8* %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %36, align 8
  %119 = load i8*, i8** %25, align 8
  %120 = load i32, i32* %37, align 4
  %121 = load i8*, i8** %38, align 8
  %122 = load i32*, i32** %40, align 8
  %123 = load i32*, i32** %40, align 8
  %124 = call i32 @maybe_update_target_eols(i8** %25, i32* %118, i8* %119, i32 %120, i8* %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32**, i32*** %21, align 8
  %127 = load i32*, i32** %23, align 8
  %128 = load i8*, i8** %25, align 8
  %129 = load i8*, i8** %26, align 8
  %130 = load i8*, i8** %27, align 8
  %131 = load i8*, i8** %41, align 8
  %132 = load i32, i32* %33, align 4
  %133 = load i32*, i32** %24, align 8
  %134 = load i32, i32* %37, align 4
  %135 = load i8*, i8** %38, align 8
  %136 = load i32*, i32** %39, align 8
  %137 = load i32*, i32** %40, align 8
  %138 = call i32 @merge_file_trivial(i32** %126, i32* %127, i8* %128, i8* %129, i8* %130, i8* %131, i32 %132, i32* %133, i32 %134, i8* %135, i32* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i32*, i32** %23, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @svn_wc_merge_no_merge, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %180

144:                                              ; preds = %108
  %145 = load i32, i32* %42, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i32**, i32*** %21, align 8
  %149 = load i32**, i32*** %22, align 8
  %150 = load i32*, i32** %23, align 8
  %151 = load i8*, i8** %25, align 8
  %152 = load i8*, i8** %26, align 8
  %153 = load i8*, i8** %29, align 8
  %154 = load i8*, i8** %30, align 8
  %155 = load i8*, i8** %31, align 8
  %156 = load i32, i32* %33, align 4
  %157 = load i8*, i8** %41, align 8
  %158 = load i32*, i32** %39, align 8
  %159 = load i32*, i32** %40, align 8
  %160 = call i32 @merge_binary_file(i32** %148, i32** %149, i32* %150, %struct.TYPE_10__* %45, i8* %151, i8* %152, i8* %153, i8* %154, i8* %155, i32 %156, i8* %157, i32* %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  br label %179

162:                                              ; preds = %144
  %163 = load i32**, i32*** %21, align 8
  %164 = load i32**, i32*** %22, align 8
  %165 = load i32*, i32** %23, align 8
  %166 = load i8*, i8** %25, align 8
  %167 = load i8*, i8** %26, align 8
  %168 = load i8*, i8** %29, align 8
  %169 = load i8*, i8** %30, align 8
  %170 = load i8*, i8** %31, align 8
  %171 = load i32, i32* %33, align 4
  %172 = load i8*, i8** %41, align 8
  %173 = load i32, i32* %37, align 4
  %174 = load i8*, i8** %38, align 8
  %175 = load i32*, i32** %39, align 8
  %176 = load i32*, i32** %40, align 8
  %177 = call i32 @merge_text_file(i32** %163, i32** %164, i32* %165, %struct.TYPE_10__* %45, i8* %166, i8* %167, i8* %168, i8* %169, i8* %170, i32 %171, i8* %172, i32 %173, i8* %174, i32* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %179

179:                                              ; preds = %162, %147
  br label %180

180:                                              ; preds = %179, %108
  %181 = load i32, i32* %33, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180
  %184 = load i32*, i32** %24, align 8
  %185 = load i8*, i8** %27, align 8
  %186 = load i32*, i32** %39, align 8
  %187 = load i32*, i32** %40, align 8
  %188 = call i32 @svn_wc__wq_build_sync_file_flags(i32** %44, i32* %184, i8* %185, i32* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32**, i32*** %21, align 8
  %191 = load i32*, i32** %190, align 8
  %192 = load i32*, i32** %44, align 8
  %193 = load i32*, i32** %39, align 8
  %194 = call i32* @svn_wc__wq_merge(i32* %191, i32* %192, i32* %193)
  %195 = load i32**, i32*** %21, align 8
  store i32* %194, i32** %195, align 8
  br label %196

196:                                              ; preds = %183, %180
  %197 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %197
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_9__* @get_prop(i32*, i32) #1

declare dso_local i32 @svn_mime_type_is_binary(i8*) #1

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @detranslate_wc_file(i8**, %struct.TYPE_10__*, i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @maybe_update_target_eols(i8**, i32*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @merge_file_trivial(i32**, i32*, i8*, i8*, i8*, i8*, i32, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @merge_binary_file(i32**, i32**, i32*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @merge_text_file(i32**, i32**, i32*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_sync_file_flags(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
