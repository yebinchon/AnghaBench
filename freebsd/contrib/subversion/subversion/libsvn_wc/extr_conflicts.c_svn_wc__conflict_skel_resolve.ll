; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@SVN_ERR_INCOMPLETE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Not a completed conflict skel\00", align 1
@SVN_WC__CONFLICT_KIND_TEXT = common dso_local global i8* null, align 8
@SVN_WC__CONFLICT_KIND_PROP = common dso_local global i8* null, align 8
@SVN_WC__CONFLICT_KIND_TREE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_skel_resolve(i32* %0, %struct.TYPE_7__* %1, i32* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__**, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca %struct.TYPE_7__**, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = call i32 @conflict__get_operation(%struct.TYPE_7__** %20, %struct.TYPE_7__* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %9
  %31 = load i32, i32* @SVN_ERR_INCOMPLETE_DATA, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* @svn_error_create(i32 %31, i32* null, i32 %32)
  store i32* %33, i32** %10, align 8
  br label %157

34:                                               ; preds = %9
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store %struct.TYPE_7__** %40, %struct.TYPE_7__*** %21, align 8
  br label %41

41:                                               ; preds = %139, %131, %116, %57, %34
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %143

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %22, align 8
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %54 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TEXT, align 8
  %55 = call i64 @svn_skel__matches_atom(%struct.TYPE_7__* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %62, align 8
  br label %41

63:                                               ; preds = %52, %45
  %64 = load i8*, i8** %16, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %123

66:                                               ; preds = %63
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %68 = load i8*, i8** @SVN_WC__CONFLICT_KIND_PROP, align 8
  %69 = call i64 @svn_skel__matches_atom(%struct.TYPE_7__* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store %struct.TYPE_7__** %77, %struct.TYPE_7__*** %23, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %84, align 8
  br label %107

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %102, %85
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = call i64 @svn_skel__matches_atom(%struct.TYPE_7__* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %101, align 8
  br label %106

102:                                              ; preds = %90
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store %struct.TYPE_7__** %105, %struct.TYPE_7__*** %23, align 8
  br label %86

106:                                              ; preds = %96, %86
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = icmp ne %struct.TYPE_7__* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %107
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %121, align 8
  br label %41

122:                                              ; preds = %107
  br label %138

123:                                              ; preds = %66, %63
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %128 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TREE, align 8
  %129 = call i64 @svn_skel__matches_atom(%struct.TYPE_7__* %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %136, align 8
  br label %41

137:                                              ; preds = %126, %123
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store %struct.TYPE_7__** %142, %struct.TYPE_7__*** %21, align 8
  br label %41

143:                                              ; preds = %41
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %148 = call i32 @svn_wc__conflict_skel_is_complete(i32* %24, %struct.TYPE_7__* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %146, %143
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %10, align 8
  br label %157

157:                                              ; preds = %155, %30
  %158 = load i32*, i32** %10, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_operation(%struct.TYPE_7__**, %struct.TYPE_7__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_skel__matches_atom(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @svn_wc__conflict_skel_is_complete(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
