; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_wc__node_get_base(i32* %0, i32* %1, i8** %2, i8** %3, i8** %4, i8** %5, %struct.TYPE_13__* %6, i8* %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i8** %3, i8*** %16, align 8
  store i8** %4, i8*** %17, align 8
  store i8** %5, i8*** %18, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %19, align 8
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = load i8**, i8*** %16, align 8
  %31 = load i8**, i8*** %17, align 8
  %32 = load i8**, i8*** %18, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %11
  br label %36

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi %struct.TYPE_14__** [ %26, %34 ], [ null, %35 ]
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %20, align 8
  %42 = load i32*, i32** %22, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = call %struct.TYPE_15__* @svn_wc__db_base_get_info(i64* %25, i32* %27, i32* %28, i8** %29, i8** %30, i8** %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_14__** %37, i32* null, i32* null, i32* null, i32 %40, i8* %41, i32* %42, i32* %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %24, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %55 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %12, align 8
  br label %183

56:                                               ; preds = %47, %36
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %25, align 8
  %61 = load i64, i64* @svn_wc__db_status_normal, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %119

63:                                               ; preds = %59
  %64 = load i64, i64* %25, align 8
  %65 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %63, %56
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %75 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %12, align 8
  br label %183

76:                                               ; preds = %70
  %77 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %78 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %20, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call i32 @svn_dirent_local_style(i8* %79, i32* %80)
  %82 = call %struct.TYPE_15__* @svn_error_createf(i64 %77, i32* null, i32 %78, i32 %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %12, align 8
  br label %183

83:                                               ; preds = %67
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %85 = call i32 @svn_error_clear(%struct.TYPE_15__* %84)
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @svn_node_unknown, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32*, i32** %14, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %96 = load i32*, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8**, i8*** %15, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8**, i8*** %15, align 8
  store i8* null, i8** %101, align 8
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i8**, i8*** %16, align 8
  %104 = icmp ne i8** %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8**, i8*** %16, align 8
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i8**, i8*** %17, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i8**, i8*** %17, align 8
  store i8* null, i8** %111, align 8
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i8**, i8*** %18, align 8
  %114 = icmp ne i8** %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i8**, i8*** %18, align 8
  store i8* null, i8** %116, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %12, align 8
  br label %183

119:                                              ; preds = %63, %59
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %13, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %27, align 4
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i8**, i8*** %18, align 8
  %128 = icmp ne i8** %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %131 = icmp ne %struct.TYPE_14__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i8* [ %135, %132 ], [ null, %136 ]
  %139 = load i8**, i8*** %18, align 8
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %126
  %141 = load i32*, i32** %14, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @SVN_IS_VALID_REVNUM(i32 %145)
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i1 [ true, %140 ], [ %147, %143 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @SVN_ERR_ASSERT(i32 %150)
  %152 = load i8**, i8*** %15, align 8
  %153 = icmp ne i8** %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i8**, i8*** %15, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br label %158

158:                                              ; preds = %154, %148
  %159 = phi i1 [ true, %148 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @SVN_ERR_ASSERT(i32 %160)
  %162 = load i8**, i8*** %16, align 8
  %163 = icmp ne i8** %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i8**, i8*** %16, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br label %168

168:                                              ; preds = %164, %158
  %169 = phi i1 [ true, %158 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @SVN_ERR_ASSERT(i32 %170)
  %172 = load i8**, i8*** %17, align 8
  %173 = icmp ne i8** %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i8**, i8*** %17, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br label %178

178:                                              ; preds = %174, %168
  %179 = phi i1 [ true, %168 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @SVN_ERR_ASSERT(i32 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %182, %struct.TYPE_15__** %12, align 8
  br label %183

183:                                              ; preds = %178, %117, %76, %73, %53
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  ret %struct.TYPE_15__* %184
}

declare dso_local %struct.TYPE_15__* @svn_wc__db_base_get_info(i64*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_14__**, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
