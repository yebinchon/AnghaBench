; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_make_node_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_make_node_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i8*, i32, i8*, i32, i32, i32, i32, i32, i32*, %struct.revision_baton* }
%struct.revision_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@svn_node_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_ACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@svn_node_action_change = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@svn_node_action_add = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@svn_node_action_delete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@svn_node_action_replace = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.node_baton**, i32*, %struct.revision_baton*, i32*)* @make_node_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_node_baton(%struct.node_baton** %0, i32* %1, %struct.revision_baton* %2, i32* %3) #0 {
  %5 = alloca %struct.node_baton**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.node_baton*, align 8
  %10 = alloca i8*, align 8
  store %struct.node_baton** %0, %struct.node_baton*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.revision_baton* %2, %struct.revision_baton** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call %struct.node_baton* @apr_pcalloc(i32* %11, i32 64)
  store %struct.node_baton* %12, %struct.node_baton** %9, align 8
  %13 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %14 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %15 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %14, i32 0, i32 9
  store %struct.revision_baton* %13, %struct.revision_baton** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %18 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %17, i32 0, i32 8
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* @svn_node_unknown, align 4
  %20 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %21 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_PATH, align 4
  %24 = call i8* @svn_hash_gets(i32* %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @svn_relpath_canonicalize(i8* %27, i32* %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %31 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %38 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i8* @svn_relpath_join(i64 %41, i8* %42, i32* %43)
  %45 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %46 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %26
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %50 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %36
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %55 = call i8* @svn_hash_gets(i32* %53, i32 %54)
  store i8* %55, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @svn_node_file, align 4
  %63 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %64 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @svn_node_dir, align 4
  %71 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %72 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %77 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %80 = call i8* @svn_hash_gets(i32* %78, i32 %79)
  store i8* %80, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %118

82:                                               ; preds = %75
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @svn_node_action_change, align 4
  %88 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %89 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %117

90:                                               ; preds = %82
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @svn_node_action_add, align 4
  %96 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %97 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %116

98:                                               ; preds = %90
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @svn_node_action_delete, align 4
  %104 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %105 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %115

106:                                              ; preds = %98
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @svn_node_action_replace, align 4
  %112 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %113 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %75
  %119 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %120 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %121 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 4
  %124 = call i8* @svn_hash_gets(i32* %122, i32 %123)
  store i8* %124, i8** %10, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @SVN_STR_TO_REV(i8* %127)
  %129 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %130 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %118
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, align 4
  %134 = call i8* @svn_hash_gets(i32* %132, i32 %133)
  store i8* %134, i8** %10, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %162

136:                                              ; preds = %131
  %137 = load i8*, i8** %10, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = call i8* @svn_relpath_canonicalize(i8* %137, i32* %138)
  store i8* %139, i8** %10, align 8
  %140 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %141 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %136
  %147 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %148 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i8* @svn_relpath_join(i64 %151, i8* %152, i32* %153)
  %155 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %156 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %161

157:                                              ; preds = %136
  %158 = load i8*, i8** %10, align 8
  %159 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %160 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %146
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM, align 4
  %165 = call i8* @svn_hash_gets(i32* %163, i32 %164)
  store i8* %165, i8** %10, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %169 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %168, i32 0, i32 5
  %170 = load i32, i32* @svn_checksum_md5, align 4
  %171 = load i8*, i8** %10, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @svn_checksum_parse_hex(i32* %169, i32 %170, i8* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  br label %175

175:                                              ; preds = %167, %162
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM, align 4
  %178 = call i8* @svn_hash_gets(i32* %176, i32 %177)
  store i8* %178, i8** %10, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %182 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %181, i32 0, i32 4
  %183 = load i32, i32* @svn_checksum_md5, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @svn_checksum_parse_hex(i32* %182, i32 %183, i8* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %188

188:                                              ; preds = %180, %175
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM, align 4
  %191 = call i8* @svn_hash_gets(i32* %189, i32 %190)
  store i8* %191, i8** %10, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %195 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %194, i32 0, i32 3
  %196 = load i32, i32* @svn_checksum_md5, align 4
  %197 = load i8*, i8** %10, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @svn_checksum_parse_hex(i32* %195, i32 %196, i8* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  br label %201

201:                                              ; preds = %193, %188
  %202 = load %struct.node_baton*, %struct.node_baton** %9, align 8
  %203 = load %struct.node_baton**, %struct.node_baton*** %5, align 8
  store %struct.node_baton* %202, %struct.node_baton** %203, align 8
  %204 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %204
}

declare dso_local %struct.node_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_STR_TO_REV(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
