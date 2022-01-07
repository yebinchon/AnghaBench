; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_check_can_add_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_check_can_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@SVN_ERR_ENTRY_FORBIDDEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"Can't create an entry with a reserved name while trying to add '%s'\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"'%s' not found\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Unsupported node kind for path '%s'\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [105 x i8] c"'%s' is an existing item in conflict; please mark the conflict as resolved before adding a new item here\00", align 1
@SVN_ERR_ENTRY_EXISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"'%s' is already under version control\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i64*, i64*, i64*, i32*, i8*, i8*, i32, i32*)* @check_can_add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @check_can_add_node(i64* %0, i64* %1, i64* %2, i32* %3, i8* %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  store i64* %0, i64** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = call i8* @svn_dirent_basename(i8* %26, i32* %27)
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @svn_dirent_is_absolute(i8* %29)
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i8*, i8** %15, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %8
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i64 @svn_uri_is_canonical(i8* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %16, align 4
  %41 = call i64 @SVN_IS_VALID_REVNUM(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br label %45

45:                                               ; preds = %43, %8
  %46 = phi i1 [ true, %8 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @SVN_ERR_ASSERT(i32 %47)
  %49 = load i8*, i8** %18, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i64 @svn_wc_is_adm_dir(i8* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i64, i64* @SVN_ERR_ENTRY_FORBIDDEN, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %14, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @svn_dirent_local_style(i8* %56, i32* %57)
  %59 = call %struct.TYPE_9__* @svn_error_createf(i64 %54, i32* null, i32 %55, i32 %58)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %9, align 8
  br label %182

60:                                               ; preds = %45
  %61 = load i8*, i8** %14, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @svn_path_check_valid(i8* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i8*, i8** %14, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @svn_io_check_special_path(i8* %65, i64* %20, i64* %21, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i64, i64* %20, align 8
  %70 = load i64, i64* @svn_node_none, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %74 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %14, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call %struct.TYPE_9__* @svn_error_createf(i64 %73, i32* null, i32 %74, i32 %77)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %9, align 8
  br label %182

79:                                               ; preds = %60
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* @svn_node_unknown, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i8*, i8** %14, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @svn_dirent_local_style(i8* %86, i32* %87)
  %89 = call %struct.TYPE_9__* @svn_error_createf(i64 %84, i32* null, i32 %85, i32 %88)
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %9, align 8
  br label %182

90:                                               ; preds = %79
  %91 = load i64*, i64** %10, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %20, align 8
  %95 = load i64*, i64** %10, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %13, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call %struct.TYPE_9__* @svn_wc__db_read_info(i32* %22, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %23, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %97, i8* %98, i32* %99, i32* %100)
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %25, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %112 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %111)
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %9, align 8
  br label %182

113:                                              ; preds = %104
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %115 = call i32 @svn_error_clear(%struct.TYPE_9__* %114)
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %24, align 8
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %19, align 8
  br label %168

118:                                              ; preds = %96
  %119 = load i64, i64* @FALSE, align 8
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %24, align 8
  %121 = load i64, i64* %23, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i64, i64* @SVN_ERR_WC_FOUND_CONFLICT, align 8
  %125 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i8*, i8** %14, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @svn_dirent_local_style(i8* %126, i32* %127)
  %129 = call %struct.TYPE_9__* @svn_error_createf(i64 %124, i32* null, i32 %125, i32 %128)
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %9, align 8
  br label %182

130:                                              ; preds = %118
  %131 = load i32, i32* %22, align 4
  switch i32 %131, label %160 [
    i32 128, label %132
    i32 130, label %133
    i32 129, label %139
  ]

132:                                              ; preds = %130
  br label %167

133:                                              ; preds = %130
  %134 = load i64, i64* %19, align 8
  %135 = icmp ne i64 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @SVN_ERR_ASSERT(i32 %137)
  br label %167

139:                                              ; preds = %130
  %140 = load i32*, i32** %13, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = call i32 @svn_wc__db_is_wcroot(i64* %19, i32* %140, i8* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i64, i64* %19, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i8*, i8** %15, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %167

151:                                              ; preds = %147, %139
  %152 = load i64, i64* %19, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i64, i64* %21, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %167

158:                                              ; preds = %154, %151
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %130, %159
  %161 = load i64, i64* @SVN_ERR_ENTRY_EXISTS, align 8
  %162 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i8*, i8** %14, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @svn_dirent_local_style(i8* %163, i32* %164)
  %166 = call %struct.TYPE_9__* @svn_error_createf(i64 %161, i32* null, i32 %162, i32 %165)
  store %struct.TYPE_9__* %166, %struct.TYPE_9__** %9, align 8
  br label %182

167:                                              ; preds = %157, %150, %133, %132
  br label %168

168:                                              ; preds = %167, %113
  %169 = load i64*, i64** %11, align 8
  %170 = icmp ne i64* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, i64* %24, align 8
  %173 = load i64*, i64** %11, align 8
  store i64 %172, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i64*, i64** %12, align 8
  %176 = icmp ne i64* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, i64* %19, align 8
  %179 = load i64*, i64** %12, align 8
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %177, %174
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %9, align 8
  br label %182

182:                                              ; preds = %180, %160, %123, %110, %83, %72, %53
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  ret %struct.TYPE_9__* %183
}

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i64 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @svn_wc_is_adm_dir(i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_check_valid(i8*, i32*) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_wc__db_read_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
