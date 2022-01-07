; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_verify_f7_metadata_consistency.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_verify_f7_metadata_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i64, i64, i32 (i64, i8*, i32*)*, i8*, i32, i8*, i32*)* @verify_f7_metadata_consistency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_f7_metadata_consistency(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 (i64, i8*, i32*)* %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i64, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 (i64, i8*, i32*)* %3, i32 (i64, i8*, i32*)** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %18, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %21, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %19, align 8
  br label %33

33:                                               ; preds = %158, %8
  %34 = load i64, i64* %19, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %160

37:                                               ; preds = %33
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %22, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = load i64, i64* %19, align 8
  %41 = call i64 @pack_size(%struct.TYPE_12__* %39, i64 %40)
  store i64 %41, i64* %23, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = load i64, i64* %19, align 8
  %44 = call i64 @svn_fs_fs__packed_base_rev(%struct.TYPE_12__* %42, i64 %43)
  store i64 %44, i64* %24, align 8
  %45 = load i64, i64* %24, align 8
  %46 = load i64, i64* %23, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %25, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = call i32 @svn_pool_clear(i32* %48)
  %50 = load i32 (i64, i8*, i32*)*, i32 (i64, i8*, i32*)** %13, align 8
  %51 = icmp ne i32 (i64, i8*, i32*)* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %37
  %53 = load i64, i64* %24, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = srem i64 %53, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32 (i64, i8*, i32*)*, i32 (i64, i8*, i32*)** %13, align 8
  %61 = load i64, i64* %24, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = call i32 %60(i64 %61, i8* %62, i32* %63)
  br label %65

65:                                               ; preds = %59, %52, %37
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = load i64, i64* %24, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = call i32* @verify_index_checksums(%struct.TYPE_12__* %66, i64 %67, i32 %68, i8* %69, i32* %70)
  store i32* %71, i32** %22, align 8
  %72 = load i32*, i32** %22, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = load i64, i64* %24, align 8
  %77 = load i64, i64* %25, align 8
  %78 = load i64, i64* %24, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i8*, i8** %16, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call i32* @compare_l2p_to_p2l_index(%struct.TYPE_12__* %75, i64 %76, i64 %79, i32 %80, i8* %81, i32* %82)
  store i32* %83, i32** %22, align 8
  br label %84

84:                                               ; preds = %74, %65
  %85 = load i32*, i32** %22, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %25, align 8
  %91 = load i64, i64* %24, align 8
  %92 = sub nsw i64 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = call i32* @compare_p2l_to_l2p_index(%struct.TYPE_12__* %88, i64 %89, i64 %92, i32 %93, i8* %94, i32* %95)
  store i32* %96, i32** %22, align 8
  br label %97

97:                                               ; preds = %87, %84
  %98 = load i32*, i32** %22, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* %24, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %16, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = call i32* @compare_p2l_to_rev(%struct.TYPE_12__* %101, i64 %102, i64 %105, i32 %106, i8* %107, i32* %108)
  store i32* %109, i32** %22, align 8
  br label %110

110:                                              ; preds = %100, %97
  %111 = load i32*, i32** %22, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i32*, i32** %21, align 8
  %120 = call i32* @verify_revprops(%struct.TYPE_12__* %114, i64 %115, i64 %116, i32 %117, i8* %118, i32* %119)
  store i32* %120, i32** %22, align 8
  br label %121

121:                                              ; preds = %113, %110
  %122 = load i32*, i32** %22, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32* @svn_fs_fs__read_min_unpacked_rev(i32* %126, %struct.TYPE_12__* %127, i32* %128)
  store i32* %129, i32** %26, align 8
  %130 = load i32*, i32** %26, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32*, i32** %22, align 8
  %134 = load i32*, i32** %26, align 8
  %135 = call i32 @svn_error_compose_create(i32* %133, i32* %134)
  %136 = call i32* @svn_error_trace(i32 %135)
  store i32* %136, i32** %9, align 8
  br label %164

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %121
  %139 = load i32*, i32** %22, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i64, i64* %23, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = load i64, i64* %19, align 8
  %145 = call i64 @pack_size(%struct.TYPE_12__* %143, i64 %144)
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32*, i32** %22, align 8
  %149 = call i32 @svn_error_clear(i32* %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %151 = load i64, i64* %19, align 8
  %152 = call i64 @svn_fs_fs__packed_base_rev(%struct.TYPE_12__* %150, i64 %151)
  store i64 %152, i64* %20, align 8
  br label %157

153:                                              ; preds = %141, %138
  %154 = load i32*, i32** %22, align 8
  %155 = call i32 @SVN_ERR(i32* %154)
  %156 = load i64, i64* %25, align 8
  store i64 %156, i64* %20, align 8
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %20, align 8
  store i64 %159, i64* %19, align 8
  br label %33

160:                                              ; preds = %33
  %161 = load i32*, i32** %21, align 8
  %162 = call i32 @svn_pool_destroy(i32* %161)
  %163 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %163, i32** %9, align 8
  br label %164

164:                                              ; preds = %160, %132
  %165 = load i32*, i32** %9, align 8
  ret i32* %165
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @pack_size(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @svn_fs_fs__packed_base_rev(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @verify_index_checksums(%struct.TYPE_12__*, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_l2p_to_p2l_index(%struct.TYPE_12__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_p2l_to_l2p_index(%struct.TYPE_12__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_p2l_to_rev(%struct.TYPE_12__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @verify_revprops(%struct.TYPE_12__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @svn_fs_fs__read_min_unpacked_rev(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
