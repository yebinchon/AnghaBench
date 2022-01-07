; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_noop_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_noop_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_15__*, i32*)* @log_noop_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_noop_revs(i8* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %4, align 8
  br label %168

32:                                               ; preds = %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rangelist_merge_revision(i32 %35, i64 %36, i32 %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @apr_hash_first(i32* %42, i32 %45)
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %150, %32
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %153

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = call i8* @apr_hash_this_key(i32* %51)
  store i8* %52, i8** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %16, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @svn_fspath__skip_ancestor(i32 %56, i8* %57)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %150

62:                                               ; preds = %50
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @svn_dirent_join(i32 %67, i8* %68, i32* %69)
  store i8* %70, i8** %14, align 8
  br label %71

71:                                               ; preds = %116, %62
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call %struct.TYPE_16__* @get_child_with_mergeinfo(i32 %78, i8* %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %17, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = icmp ne %struct.TYPE_16__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call %struct.TYPE_14__* @svn_hash_gets(i64 %91, i8* %92)
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %15, align 8
  br label %124

94:                                               ; preds = %83, %75
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %94
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i64 @svn_dirent_is_root(i8* %101, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %14, align 8
  %113 = call i64 @strcmp(i32 %111, i8* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %100, %94
  br label %124

116:                                              ; preds = %106
  %117 = load i8*, i8** %14, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i8* @svn_dirent_dirname(i8* %117, i32* %118)
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i8* @svn_fspath__dirname(i8* %120, i32* %121)
  store i8* %122, i8** %12, align 8
  %123 = load i64, i64* @TRUE, align 8
  store i64 %123, i64* %16, align 8
  br label %71

124:                                              ; preds = %115, %88, %71
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %126 = icmp ne %struct.TYPE_14__* %125, null
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load i64, i64* %10, align 8
  %129 = sub nsw i64 %128, 1
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @TRUE, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call %struct.TYPE_14__* @svn_rangelist__initialize(i64 %129, i64 %130, i64 %131, i32* %132)
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %19, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @svn_rangelist_intersect(%struct.TYPE_14__** %18, %struct.TYPE_14__* %134, %struct.TYPE_14__* %135, i64 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %127
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %11, align 8
  br label %146

146:                                              ; preds = %144, %127
  br label %149

147:                                              ; preds = %124
  %148 = load i64, i64* @TRUE, align 8
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %147, %146
  br label %150

150:                                              ; preds = %149, %61
  %151 = load i32*, i32** %9, align 8
  %152 = call i32* @apr_hash_next(i32* %151)
  store i32* %152, i32** %9, align 8
  br label %47

153:                                              ; preds = %47
  %154 = load i64, i64* %11, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @rangelist_merge_revision(i32 %159, i64 %160, i32 %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  br label %166

166:                                              ; preds = %156, %153
  %167 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %167, i32** %4, align 8
  br label %168

168:                                              ; preds = %166, %30
  %169 = load i32*, i32** %4, align 8
  ret i32* %169
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rangelist_merge_revision(i32, i64, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @get_child_with_mergeinfo(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @svn_hash_gets(i64, i8*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_fspath__dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_rangelist__initialize(i64, i64, i64, i32*) #1

declare dso_local i32 @svn_rangelist_intersect(%struct.TYPE_14__**, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
