; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_filter_merged_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_filter_merged_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@pool = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_25__*, %struct.TYPE_25__*, i8*, %struct.TYPE_24__*, i64, i64, i32, i32*, i32*, i32*, i32*)* @filter_merged_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filter_merged_revisions(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i8* %2, %struct.TYPE_24__* %3, i64 %4, i64 %5, i32 %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %13, align 8
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* %17, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = load i32*, i32** %22, align 8
  %33 = call %struct.TYPE_24__* @svn_rangelist__initialize(i64 %29, i64 %30, i32 %31, i32* %32)
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %23, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %125

37:                                               ; preds = %11
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = call i32 @svn_rangelist_reverse(%struct.TYPE_24__* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %43 = icmp ne %struct.TYPE_24__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %22, align 8
  %49 = call i32 @svn_rangelist_intersect(%struct.TYPE_24__** %25, %struct.TYPE_24__* %45, %struct.TYPE_24__* %46, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %55

51:                                               ; preds = %37
  %52 = load i32*, i32** %21, align 8
  %53 = call i8* @apr_array_make(i32* %52, i32 0, i32 8)
  %54 = bitcast i8* %53 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %25, align 8
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32*, i32** %22, align 8
  %60 = call i32 @svn_rangelist_diff(%struct.TYPE_24__** %27, %struct.TYPE_24__** %26, %struct.TYPE_24__* %56, %struct.TYPE_24__* %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = call i32 @svn_rangelist_reverse(%struct.TYPE_24__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = call i8* @svn_rangelist_dup(%struct.TYPE_24__* %71, i32* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_24__*
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  store %struct.TYPE_24__* %74, %struct.TYPE_24__** %76, align 8
  br label %124

77:                                               ; preds = %55
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %80 = load i32, i32* %18, align 4
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = load i32*, i32** %22, align 8
  %87 = call i32 @ensure_implicit_mergeinfo(%struct.TYPE_25__* %78, %struct.TYPE_25__* %79, i32 %80, i64 %81, i64 %82, i32* %83, i32* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call %struct.TYPE_24__* @svn_hash_gets(i32 %91, i8* %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %24, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %95 = icmp ne %struct.TYPE_24__* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %77
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @svn_rangelist_intersect(%struct.TYPE_24__** %28, %struct.TYPE_24__* %97, %struct.TYPE_24__* %98, i32 %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %107

103:                                              ; preds = %77
  %104 = load i32*, i32** %22, align 8
  %105 = call i8* @apr_array_make(i32* %104, i32 0, i32 8)
  %106 = bitcast i8* %105 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %106, %struct.TYPE_24__** %28, align 8
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %110 = load i32*, i32** %22, align 8
  %111 = load i32*, i32** %22, align 8
  %112 = call i32 @svn_rangelist_merge2(%struct.TYPE_24__* %108, %struct.TYPE_24__* %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = call i32 @svn_rangelist_reverse(%struct.TYPE_24__* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %119 = load i32*, i32** %21, align 8
  %120 = call i8* @svn_rangelist_dup(%struct.TYPE_24__* %118, i32* %119)
  %121 = bitcast i8* %120 to %struct.TYPE_24__*
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %123, align 8
  br label %124

124:                                              ; preds = %107, %66
  br label %188

125:                                              ; preds = %11
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %127 = icmp ne %struct.TYPE_24__* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32*, i32** %22, align 8
  %133 = call i32 @svn_rangelist_remove(%struct.TYPE_24__** %25, %struct.TYPE_24__* %129, %struct.TYPE_24__* %130, i32 %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  br label %140

135:                                              ; preds = %125
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = call i8* @svn_rangelist_dup(%struct.TYPE_24__* %136, i32* %137)
  %139 = bitcast i8* %138 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %25, align 8
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32*, i32** %21, align 8
  %147 = call i8* @apr_array_make(i32* %146, i32 0, i32 8)
  %148 = bitcast i8* %147 to %struct.TYPE_24__*
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  store %struct.TYPE_24__* %148, %struct.TYPE_24__** %150, align 8
  br label %187

151:                                              ; preds = %140
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = load i32*, i32** %20, align 8
  %159 = load i32*, i32** %21, align 8
  %160 = load i32*, i32** %22, align 8
  %161 = call i32 @ensure_implicit_mergeinfo(%struct.TYPE_25__* %152, %struct.TYPE_25__* %153, i32 %154, i64 %155, i64 %156, i32* %157, i32* %158, i32* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call %struct.TYPE_24__* @svn_hash_gets(i32 %165, i8* %166)
  store %struct.TYPE_24__* %167, %struct.TYPE_24__** %24, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %169 = icmp ne %struct.TYPE_24__* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %151
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %175 = load i32, i32* @FALSE, align 4
  %176 = load i32*, i32** %21, align 8
  %177 = call i32 @svn_rangelist_remove(%struct.TYPE_24__** %172, %struct.TYPE_24__* %173, %struct.TYPE_24__* %174, i32 %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %186

179:                                              ; preds = %151
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %181 = load i32*, i32** %21, align 8
  %182 = call i8* @svn_rangelist_dup(%struct.TYPE_24__* %180, i32* %181)
  %183 = bitcast i8* %182 to %struct.TYPE_24__*
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  store %struct.TYPE_24__* %183, %struct.TYPE_24__** %185, align 8
  br label %186

186:                                              ; preds = %179, %170
  br label %187

187:                                              ; preds = %186, %145
  br label %188

188:                                              ; preds = %187, %124
  %189 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %189
}

declare dso_local %struct.TYPE_24__* @svn_rangelist__initialize(i64, i64, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_reverse(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @svn_rangelist_intersect(%struct.TYPE_24__**, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i8* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @svn_rangelist_diff(%struct.TYPE_24__**, %struct.TYPE_24__**, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i8* @svn_rangelist_dup(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ensure_implicit_mergeinfo(%struct.TYPE_25__*, %struct.TYPE_25__*, i32, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @svn_rangelist_merge2(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @svn_rangelist_remove(%struct.TYPE_24__**, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
