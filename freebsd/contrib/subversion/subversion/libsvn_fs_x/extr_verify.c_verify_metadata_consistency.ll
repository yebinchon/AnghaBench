; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_metadata_consistency.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_metadata_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i64, i64, i32 (i64, i8*, i32*)*, i8*, i32, i8*, i32*)* @verify_metadata_consistency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_metadata_consistency(%struct.TYPE_13__* %0, i64 %1, i64 %2, i32 (i64, i8*, i32*)* %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i64, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 (i64, i8*, i32*)* %3, i32 (i64, i8*, i32*)** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %19, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %22, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %20, align 8
  br label %33

33:                                               ; preds = %157, %8
  %34 = load i64, i64* %20, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %159

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = load i64, i64* %20, align 8
  %40 = call i64 @svn_fs_x__packed_base_rev(%struct.TYPE_13__* %38, i64 %39)
  store i64 %40, i64* %23, align 8
  %41 = load i64, i64* %23, align 8
  store i64 %41, i64* %24, align 8
  %42 = load i64, i64* %24, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = load i64, i64* %20, align 8
  %45 = call i64 @svn_fs_x__pack_size(%struct.TYPE_13__* %43, i64 %44)
  %46 = add nsw i64 %42, %45
  store i64 %46, i64* %25, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = call i32 @svn_pool_clear(i32* %47)
  %49 = load i32 (i64, i8*, i32*)*, i32 (i64, i8*, i32*)** %13, align 8
  %50 = icmp ne i32 (i64, i8*, i32*)* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %37
  %52 = load i64, i64* %24, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = srem i64 %52, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32 (i64, i8*, i32*)*, i32 (i64, i8*, i32*)** %13, align 8
  %60 = load i64, i64* %24, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i32 %59(i64 %60, i8* %61, i32* %62)
  br label %64

64:                                               ; preds = %58, %51, %37
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = load i64, i64* %24, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load i32*, i32** %22, align 8
  %70 = call i32* @verify_index_checksums(%struct.TYPE_13__* %65, i64 %66, i32 %67, i8* %68, i32* %69)
  store i32* %70, i32** %18, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %25, align 8
  %77 = load i64, i64* %24, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i32*, i32** %22, align 8
  %82 = call i32* @compare_l2p_to_p2l_index(%struct.TYPE_13__* %74, i64 %75, i64 %78, i32 %79, i8* %80, i32* %81)
  store i32* %82, i32** %18, align 8
  br label %83

83:                                               ; preds = %73, %64
  %84 = load i32*, i32** %18, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %25, align 8
  %90 = load i64, i64* %24, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = load i32*, i32** %22, align 8
  %95 = call i32* @compare_p2l_to_l2p_index(%struct.TYPE_13__* %87, i64 %88, i64 %91, i32 %92, i8* %93, i32* %94)
  store i32* %95, i32** %18, align 8
  br label %96

96:                                               ; preds = %86, %83
  %97 = load i32*, i32** %18, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %25, align 8
  %103 = load i64, i64* %24, align 8
  %104 = sub nsw i64 %102, %103
  %105 = load i32, i32* %15, align 4
  %106 = load i8*, i8** %16, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = call i32* @compare_p2l_to_rev(%struct.TYPE_13__* %100, i64 %101, i64 %104, i32 %105, i8* %106, i32* %107)
  store i32* %108, i32** %18, align 8
  br label %109

109:                                              ; preds = %99, %96
  %110 = load i32*, i32** %18, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %25, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i8*, i8** %16, align 8
  %118 = load i32*, i32** %22, align 8
  %119 = call i32* @verify_revprops(%struct.TYPE_13__* %113, i64 %114, i64 %115, i32 %116, i8* %117, i32* %118)
  store i32* %119, i32** %18, align 8
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i32*, i32** %18, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32* @svn_fs_x__read_min_unpacked_rev(i32* %125, %struct.TYPE_13__* %126, i32* %127)
  store i32* %128, i32** %26, align 8
  %129 = load i32*, i32** %26, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load i32*, i32** %18, align 8
  %133 = load i32*, i32** %26, align 8
  %134 = call i32 @svn_error_compose_create(i32* %132, i32* %133)
  %135 = call i32* @svn_error_trace(i32 %134)
  store i32* %135, i32** %9, align 8
  br label %163

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %120
  %138 = load i32*, i32** %18, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i64, i64* %23, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = load i64, i64* %20, align 8
  %144 = call i64 @svn_fs_x__pack_size(%struct.TYPE_13__* %142, i64 %143)
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32*, i32** %18, align 8
  %148 = call i32 @svn_error_clear(i32* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = load i64, i64* %20, align 8
  %151 = call i64 @svn_fs_x__packed_base_rev(%struct.TYPE_13__* %149, i64 %150)
  store i64 %151, i64* %21, align 8
  br label %156

152:                                              ; preds = %140, %137
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @SVN_ERR(i32* %153)
  %155 = load i64, i64* %25, align 8
  store i64 %155, i64* %21, align 8
  br label %156

156:                                              ; preds = %152, %146
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %21, align 8
  store i64 %158, i64* %20, align 8
  br label %33

159:                                              ; preds = %33
  %160 = load i32*, i32** %22, align 8
  %161 = call i32 @svn_pool_destroy(i32* %160)
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %162, i32** %9, align 8
  br label %163

163:                                              ; preds = %159, %131
  %164 = load i32*, i32** %9, align 8
  ret i32* %164
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @svn_fs_x__packed_base_rev(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @svn_fs_x__pack_size(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @verify_index_checksums(%struct.TYPE_13__*, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_l2p_to_p2l_index(%struct.TYPE_13__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_p2l_to_l2p_index(%struct.TYPE_13__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @compare_p2l_to_rev(%struct.TYPE_13__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @verify_revprops(%struct.TYPE_13__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32* @svn_fs_x__read_min_unpacked_rev(i32*, %struct.TYPE_13__*, i32*) #1

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
