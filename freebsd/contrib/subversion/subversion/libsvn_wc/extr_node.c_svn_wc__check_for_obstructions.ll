; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__check_for_obstructions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__check_for_obstructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_notify_state_obstructed = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc_notify_state_missing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_wc__check_for_obstructions(i32* %0, i64* %1, i64* %2, i64* %3, i32* %4, %struct.TYPE_12__* %5, i8* %6, i64 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i64*, i64** %12, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %9
  %31 = load i64, i64* @svn_node_none, align 8
  %32 = load i64*, i64** %12, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %9
  %34 = load i64*, i64** %13, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @FALSE, align 8
  %38 = load i64*, i64** %13, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64*, i64** %14, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @FALSE, align 8
  %44 = load i64*, i64** %14, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @svn_depth_unknown, align 4
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %17, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = call %struct.TYPE_13__* @svn_io_check_path(i8* %52, i64* %22, i32* %53)
  %55 = call i32 @SVN_ERR(%struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call %struct.TYPE_13__* @svn_wc__db_read_info(i32* %20, i64* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %58, i8* %59, i32* %60, i32* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %23, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %124

65:                                               ; preds = %51
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %124

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_13__* %72)
  %74 = load i64, i64* %22, align 8
  %75 = load i64, i64* @svn_node_none, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %10, align 8
  br label %214

81:                                               ; preds = %71
  %82 = load i32*, i32** %15, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %17, align 8
  %87 = load i32*, i32** %19, align 8
  %88 = call i8* @svn_dirent_dirname(i8* %86, i32* %87)
  %89 = load i32*, i32** %19, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call %struct.TYPE_13__* @svn_wc__db_read_info(i32* %20, i64* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %82, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %85, i8* %88, i32* %89, i32* %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %23, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %93 = icmp ne %struct.TYPE_13__* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %81
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %102 = call i32 @svn_error_clear(%struct.TYPE_13__* %101)
  %103 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %10, align 8
  br label %214

106:                                              ; preds = %94, %81
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %108 = call i32 @SVN_ERR(%struct.TYPE_13__* %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* @svn_node_dir, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %20, align 4
  %115 = icmp ne i32 %114, 130
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 134
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %109
  %120 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116, %113
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %10, align 8
  br label %214

124:                                              ; preds = %65, %51
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %126 = call i32 @SVN_ERR(%struct.TYPE_13__* %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %18, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %21, align 8
  %132 = load i64, i64* @svn_node_dir, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load i32, i32* %20, align 4
  %136 = icmp eq i32 %135, 130
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %17, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call %struct.TYPE_13__* @svn_wc__db_is_wcroot(i64* %24, i32 %140, i8* %141, i32* %142)
  %144 = call i32 @SVN_ERR(%struct.TYPE_13__* %143)
  %145 = load i64, i64* %24, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %10, align 8
  br label %214

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %134, %130, %127
  %153 = load i64*, i64** %12, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* %21, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i64, i64* @FALSE, align 8
  %160 = call %struct.TYPE_13__* @convert_db_kind_to_node_kind(i64* %156, i64 %157, i32 %158, i64 %159)
  %161 = call i32 @SVN_ERR(%struct.TYPE_13__* %160)
  br label %162

162:                                              ; preds = %155, %152
  %163 = load i32, i32* %20, align 4
  switch i32 %163, label %210 [
    i32 133, label %164
    i32 129, label %171
    i32 132, label %179
    i32 128, label %179
    i32 131, label %186
    i32 134, label %189
    i32 130, label %189
  ]

164:                                              ; preds = %162
  %165 = load i64*, i64** %13, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, i64* @TRUE, align 8
  %169 = load i64*, i64** %13, align 8
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %162, %170
  %172 = load i64, i64* %22, align 8
  %173 = load i64, i64* @svn_node_none, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %171
  br label %212

179:                                              ; preds = %162, %162
  %180 = load i64*, i64** %14, align 8
  %181 = icmp ne i64* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i64, i64* @TRUE, align 8
  %184 = load i64*, i64** %14, align 8
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %162, %185
  %187 = load i32, i32* @svn_wc_notify_state_missing, align 4
  %188 = load i32*, i32** %11, align 8
  store i32 %187, i32* %188, align 4
  br label %212

189:                                              ; preds = %162, %162
  %190 = load i64, i64* %22, align 8
  %191 = load i64, i64* @svn_node_none, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @svn_wc_notify_state_missing, align 4
  %195 = load i32*, i32** %11, align 8
  store i32 %194, i32* %195, align 4
  br label %209

196:                                              ; preds = %189
  %197 = load i64, i64* %21, align 8
  %198 = load i32, i32* %20, align 4
  %199 = load i64, i64* @FALSE, align 8
  %200 = call %struct.TYPE_13__* @convert_db_kind_to_node_kind(i64* %25, i64 %197, i32 %198, i64 %199)
  %201 = call i32 @SVN_ERR(%struct.TYPE_13__* %200)
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %25, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load i32, i32* @svn_wc_notify_state_obstructed, align 4
  %207 = load i32*, i32** %11, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %196
  br label %209

209:                                              ; preds = %208, %193
  br label %212

210:                                              ; preds = %162
  %211 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %212

212:                                              ; preds = %210, %209, %186, %178
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %213, %struct.TYPE_13__** %10, align 8
  br label %214

214:                                              ; preds = %212, %147, %122, %100, %77
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  ret %struct.TYPE_13__* %215
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc__db_read_info(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc__db_is_wcroot(i64*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @convert_db_kind_to_node_kind(i64*, i64, i32, i64) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
