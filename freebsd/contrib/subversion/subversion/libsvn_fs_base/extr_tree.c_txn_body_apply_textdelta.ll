; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32 }

@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Base checksum mismatch on '%s'\00", align 1
@write_to_string = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_21__*)* @txn_body_apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_apply_textdelta(i8* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @open_path(%struct.TYPE_22__** %7, %struct.TYPE_19__* %19, i32 %22, i32 0, i8* %23, %struct.TYPE_21__* %24, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 10
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @svn_fs_base__allow_locked_operation(i32 %41, i32 %42, %struct.TYPE_21__* %43, i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %38, %2
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 10
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @make_path_mutable(%struct.TYPE_19__* %52, %struct.TYPE_22__* %53, i32 %56, %struct.TYPE_21__* %57, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = icmp ne %struct.TYPE_18__* %70, null
  br i1 %71, label %72, label %107

72:                                               ; preds = %49
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @svn_fs_base__dag_file_checksum(i32** %9, i32 %77, i32 %80, %struct.TYPE_21__* %81, i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 9
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @svn_checksum_match(%struct.TYPE_18__* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %72
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 9
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @svn_checksum_mismatch_err(%struct.TYPE_18__* %96, i32* %97, i32 %100, i32 %101, i32 %104)
  store i32* %105, i32** %3, align 8
  br label %167

106:                                              ; preds = %72
  br label %107

107:                                              ; preds = %106, %49
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @svn_fs_base__dag_get_contents(i32* %109, i32 %112, %struct.TYPE_21__* %113, i32 %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @svn_fs_base__dag_get_edit_stream(i32* %120, i32 %123, i8* %124, %struct.TYPE_21__* %125, i32 %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @svn_stringbuf_create_empty(i32 %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @svn_stream_create(%struct.TYPE_20__* %137, i32 %140)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @write_to_string, align 4
  %148 = call i32 @svn_stream_set_write(i32 %146, i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = call i32 @svn_txdelta_apply(i32 %151, i32 %154, i32* null, i32 %157, i32 %160, i32* %162, i32* %164)
  %166 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %166, i32** %3, align 8
  br label %167

167:                                              ; preds = %107, %93
  %168 = load i32*, i32** %3, align 8
  ret i32* %168
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_22__**, %struct.TYPE_19__*, i32, i32, i8*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i32, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_19__*, %struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_file_checksum(i32**, i32, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(%struct.TYPE_18__*, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__dag_get_contents(i32*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_edit_stream(i32*, i32, i8*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32) #1

declare dso_local i32 @svn_stream_create(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32, i32) #1

declare dso_local i32 @svn_txdelta_apply(i32, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
