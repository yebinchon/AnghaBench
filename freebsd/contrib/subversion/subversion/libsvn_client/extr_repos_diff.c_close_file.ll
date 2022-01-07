; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32*, i32, i32, i32*, i64, i32*, i32, i32, i32, i64, i64, i32, i64, %struct.edit_baton*, %struct.dir_baton* }
%struct.edit_baton = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32*, i32*, i64, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)* }
%struct.dir_baton = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton*, align 8
  %9 = alloca %struct.dir_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.file_baton*
  store %struct.file_baton* %15, %struct.file_baton** %8, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 14
  %18 = load %struct.dir_baton*, %struct.dir_baton** %17, align 8
  store %struct.dir_baton* %18, %struct.dir_baton** %9, align 8
  %19 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 13
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %10, align 8
  %22 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 12
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @svn_pool_destroy(i32* %29)
  %31 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %32 = call i32 @release_dir(%struct.dir_baton* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %4, align 8
  br label %219

35:                                               ; preds = %3
  %36 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %37 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %43 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load i32, i32* @svn_checksum_md5, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_checksum_parse_hex(i32** %12, i32 %47, i8* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %54 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @svn_checksum_match(i32* %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %46
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %61 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %66 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_checksum_mismatch_err(i32* %59, i32 %62, i32* %63, i32 %64, i32 %67)
  %69 = call i32* @svn_error_trace(i32 %68)
  store i32* %69, i32** %4, align 8
  br label %219

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %41, %35
  %72 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %73 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %78 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %83 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %210

86:                                               ; preds = %81, %76, %71
  %87 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %88 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @get_file_from_ra(%struct.file_baton* %97, i32 %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %96, %91, %86
  %103 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %104 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %109 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %112 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @remove_non_prop_changes(i64 %110, i32 %113)
  br label %115

115:                                              ; preds = %107, %102
  %116 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %117 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %120 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %123 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32* @svn_prop__patch(i64 %118, i32 %121, i32* %124)
  store i32* %125, i32** %13, align 8
  %126 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %127 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %115
  %131 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %132 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)** %134, align 8
  %136 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %137 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %140 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %143 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %147 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %150 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %153 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 %135(i32 %138, i32* null, i32 %141, i32* null, i32* %144, i32* null, i32* %145, i32 %148, %struct.TYPE_3__* %151, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %209

157:                                              ; preds = %115
  %158 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %159 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32 (i32, i32, i32, i32*, i32*, i64, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)*, i32 (i32, i32, i32, i32*, i32*, i64, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)** %161, align 8
  %163 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %164 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %167 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %170 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %173 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %157
  %177 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %178 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  br label %181

180:                                              ; preds = %157
  br label %181

181:                                              ; preds = %180, %176
  %182 = phi i32* [ %179, %176 ], [ null, %180 ]
  %183 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %184 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %187 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %191 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  %194 = zext i1 %193 to i32
  %195 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %196 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %199 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %202 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %201, i32 0, i32 0
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %205 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 %162(i32 %165, i32 %168, i32 %171, i32* %182, i32* %185, i64 %188, i32* %189, i32 %194, i32 %197, i32 %200, %struct.TYPE_3__* %203, i32* %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  br label %209

209:                                              ; preds = %181, %130
  br label %210

210:                                              ; preds = %209, %81
  %211 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %212 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @svn_pool_destroy(i32* %213)
  %215 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %216 = call i32 @release_dir(%struct.dir_baton* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %218, i32** %4, align 8
  br label %219

219:                                              ; preds = %210, %58, %26
  %220 = load i32*, i32** %4, align 8
  ret i32* %220
}

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @release_dir(%struct.dir_baton*) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_checksum_mismatch_err(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_file_from_ra(%struct.file_baton*, i32, i32*) #1

declare dso_local i32 @remove_non_prop_changes(i64, i32) #1

declare dso_local i32* @svn_prop__patch(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
