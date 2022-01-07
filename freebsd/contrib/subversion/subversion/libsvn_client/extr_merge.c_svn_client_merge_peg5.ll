; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge_peg5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge_peg5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot merge automatically while ignoring mergeinfo\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_merge_peg5(i8* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.TYPE_14__* %11, %struct.TYPE_13__* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  store i8* %0, i8** %16, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %17, align 8
  store i32* %2, i32** %18, align 8
  store i8* %3, i8** %19, align 8
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %28, align 8
  store i32* %13, i32** %29, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %14
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %15, align 8
  br label %159

43:                                               ; preds = %36, %14
  %44 = load i8*, i8** %19, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %46 = load i32*, i32** %29, align 8
  %47 = call i32 @get_target_and_lock_abspath(i8** %30, i8** %31, i8* %44, %struct.TYPE_13__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %107

51:                                               ; preds = %43
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %57 = call i32* @svn_error_create(i32 %55, i32* null, i32 %56)
  store i32* %57, i32** %15, align 8
  br label %159

58:                                               ; preds = %51
  %59 = load i8*, i8** %16, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = load i8*, i8** %30, align 8
  %62 = load i32, i32* %26, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %66 = load i32*, i32** %29, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = call i32 @client_find_automatic_merge(i32** %33, i8* %59, i32* %60, i8* %61, i32 %62, i32 %63, i32 %64, %struct.TYPE_13__* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32, i32* %25, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %58
  %73 = load i32*, i32** %33, align 8
  %74 = load i8*, i8** %30, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %25, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %82 = load i32*, i32** %29, align 8
  %83 = load i32*, i32** %29, align 8
  %84 = call i32 @do_automatic_merge_locked(i32** %32, i32* %73, i8* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, %struct.TYPE_14__* %80, %struct.TYPE_13__* %81, i32* %82, i32* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %31, align 8
  %89 = load i32, i32* @FALSE, align 4
  %90 = load i32*, i32** %29, align 8
  %91 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %84, i32 %87, i8* %88, i32 %89, i32* %90)
  br label %106

92:                                               ; preds = %58
  %93 = load i32*, i32** %33, align 8
  %94 = load i8*, i8** %30, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %102 = load i32*, i32** %29, align 8
  %103 = load i32*, i32** %29, align 8
  %104 = call i32 @do_automatic_merge_locked(i32** %32, i32* %93, i8* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, %struct.TYPE_14__* %100, %struct.TYPE_13__* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %92, %72
  br label %153

107:                                              ; preds = %43
  %108 = load i32, i32* %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %16, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %114 = load i8*, i8** %30, align 8
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %26, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %124 = load i32*, i32** %29, align 8
  %125 = load i32*, i32** %29, align 8
  %126 = call i32 @merge_peg_locked(i32** %32, i8* %111, i32* %112, %struct.TYPE_14__* %113, i8* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, %struct.TYPE_14__* %122, %struct.TYPE_13__* %123, i32* %124, i32* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %31, align 8
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32*, i32** %29, align 8
  %133 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %126, i32 %129, i8* %130, i32 %131, i32* %132)
  br label %152

134:                                              ; preds = %107
  %135 = load i8*, i8** %16, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %138 = load i8*, i8** %30, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %26, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %148 = load i32*, i32** %29, align 8
  %149 = load i32*, i32** %29, align 8
  %150 = call i32 @merge_peg_locked(i32** %32, i8* %135, i32* %136, %struct.TYPE_14__* %137, i8* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, %struct.TYPE_14__* %146, %struct.TYPE_13__* %147, i32* %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  br label %152

152:                                              ; preds = %134, %110
  br label %153

153:                                              ; preds = %152, %106
  %154 = load i32*, i32** %32, align 8
  %155 = load i32*, i32** %29, align 8
  %156 = call i32 @svn_client__make_merge_conflict_error(i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %158, i32** %15, align 8
  br label %159

159:                                              ; preds = %153, %54, %41
  %160 = load i32*, i32** %15, align 8
  ret i32* %160
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_target_and_lock_abspath(i8**, i8**, i8*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @client_find_automatic_merge(i32**, i8*, i32*, i8*, i32, i32, i32, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @do_automatic_merge_locked(i32**, i32*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @merge_peg_locked(i32**, i8*, i32*, %struct.TYPE_14__*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_client__make_merge_conflict_error(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
