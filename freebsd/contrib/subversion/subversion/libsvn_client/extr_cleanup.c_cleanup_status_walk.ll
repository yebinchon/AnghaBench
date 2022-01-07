; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cleanup.c_cleanup_status_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cleanup.c_cleanup_status_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.cleanup_status_walk_baton = type { %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@svn_wc_status_external = common dso_local global i64 0, align 8
@svn_wc_notify_cleanup_external = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_20__* null, align 8
@svn_wc_status_ignored = common dso_local global i64 0, align 8
@svn_wc_status_unversioned = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i8*, i8*, %struct.TYPE_18__*, i32*)* @cleanup_status_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @cleanup_status_walk(i8* %0, i8* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cleanup_status_walk_baton*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.cleanup_status_walk_baton*
  store %struct.cleanup_status_walk_baton* %15, %struct.cleanup_status_walk_baton** %10, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @svn_wc_status_external, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %4
  %22 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %23 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.TYPE_20__* @svn_io_check_path(i8* %27, i32* %11, i32* %28)
  %30 = call i32 @SVN_ERR(%struct.TYPE_20__* %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %100

33:                                               ; preds = %26
  %34 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %35 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %37, align 8
  %39 = icmp ne i32 (i32, %struct.TYPE_19__*, i32*)* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @svn_wc_notify_cleanup_external, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call %struct.TYPE_19__* @svn_wc_create_notify(i8* %41, i32 %42, i32* %43)
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %12, align 8
  %45 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %46 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %48, align 8
  %50 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %51 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 %49(i32 %54, %struct.TYPE_19__* %55, i32* %56)
  br label %58

58:                                               ; preds = %40, %33
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %61 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %64 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %67 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %70 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %73 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %76 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %80 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call %struct.TYPE_20__* @do_cleanup(i8* %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %78, %struct.TYPE_17__* %81, i32* %82)
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %13, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %85 = icmp ne %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %58
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %94 = call i32 @svn_error_clear(%struct.TYPE_20__* %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %5, align 8
  br label %194

96:                                               ; preds = %86, %58
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %98 = call i32 @SVN_ERR(%struct.TYPE_20__* %97)
  br label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %26
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %5, align 8
  br label %194

102:                                              ; preds = %21, %4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @svn_wc_status_ignored, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %110 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %114, %struct.TYPE_20__** %5, align 8
  br label %194

115:                                              ; preds = %108
  br label %133

116:                                              ; preds = %102
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @svn_wc_status_unversioned, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %124 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %5, align 8
  br label %194

129:                                              ; preds = %122
  br label %132

130:                                              ; preds = %116
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %5, align 8
  br label %194

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132, %115
  %134 = load i8*, i8** %7, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call %struct.TYPE_20__* @svn_io_check_path(i8* %134, i32* %11, i32* %135)
  %137 = call i32 @SVN_ERR(%struct.TYPE_20__* %136)
  %138 = load i32, i32* %11, align 4
  switch i32 %138, label %162 [
    i32 130, label %139
    i32 128, label %139
    i32 131, label %145
    i32 129, label %161
  ]

139:                                              ; preds = %133, %133
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call %struct.TYPE_20__* @svn_io_remove_file2(i8* %140, i32 %141, i32* %142)
  %144 = call i32 @SVN_ERR(%struct.TYPE_20__* %143)
  br label %164

145:                                              ; preds = %133
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* @FALSE, align 4
  %148 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %149 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %154 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = call %struct.TYPE_20__* @svn_io_remove_dir2(i8* %146, i32 %147, i32 %152, i32 %157, i32* %158)
  %160 = call i32 @SVN_ERR(%struct.TYPE_20__* %159)
  br label %164

161:                                              ; preds = %133
  br label %162

162:                                              ; preds = %133, %161
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %163, %struct.TYPE_20__** %5, align 8
  br label %194

164:                                              ; preds = %145, %139
  %165 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %166 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %165, i32 0, i32 0
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  %169 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %168, align 8
  %170 = icmp ne i32 (i32, %struct.TYPE_19__*, i32*)* %169, null
  br i1 %170, label %171, label %192

171:                                              ; preds = %164
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* @svn_wc_notify_delete, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = call %struct.TYPE_19__* @svn_wc_create_notify(i8* %172, i32 %173, i32* %174)
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %12, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %180 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %182, align 8
  %184 = load %struct.cleanup_status_walk_baton*, %struct.cleanup_status_walk_baton** %10, align 8
  %185 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 %183(i32 %188, %struct.TYPE_19__* %189, i32* %190)
  br label %192

192:                                              ; preds = %171, %164
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %193, %struct.TYPE_20__** %5, align 8
  br label %194

194:                                              ; preds = %192, %162, %130, %127, %113, %100, %92
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %195
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @svn_io_check_path(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @do_cleanup(i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_io_remove_dir2(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
