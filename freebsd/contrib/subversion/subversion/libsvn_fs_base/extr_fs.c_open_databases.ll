; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_open_databases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_open_databases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@fs_vtable = common dso_local global i32 0, align 4
@SVN_BDB_STANDARD_ENV_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Berkeley DB error for filesystem '%s' while creating environment:\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Berkeley DB error for filesystem '%s' while opening environment:\0A\00", align 1
@cleanup_fs_apr = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"creating 'nodes' table\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"opening 'nodes' table\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"creating 'revisions' table\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"opening 'revisions' table\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"creating 'transactions' table\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"opening 'transactions' table\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"creating 'copies' table\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"opening 'copies' table\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"creating 'changes' table\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"opening 'changes' table\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"creating 'representations' table\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"opening 'representations' table\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"creating 'strings' table\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"opening 'strings' table\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"creating 'uuids' table\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"opening 'uuids' table\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"creating 'locks' table\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"opening 'locks' table\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"creating 'lock-tokens' table\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"opening 'lock-tokens' table\00", align 1
@SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"creating 'node-origins' table\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"opening 'node-origins' table\00", align 1
@SVN_FS_BASE__MIN_MISCELLANY_FORMAT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"creating 'miscellaneous' table\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"opening 'miscellaneous' table\00", align 1
@SVN_FS_BASE__MIN_REP_SHARING_FORMAT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"creating 'checksum-reps' table\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"opening 'checksum-reps' table\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i32, i32, i8*)* @open_databases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @open_databases(%struct.TYPE_16__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @svn_fs__check_fs(%struct.TYPE_16__* %12, i32 %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_18__* @apr_pcalloc(i32 %18, i32 64)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  store i32* @fs_vtable, i32** %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @apr_pstrdup(i32 %27, i8* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @bdb_write_config(%struct.TYPE_16__* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %34, %4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @SVN_BDB_STANDARD_ENV_FLAGS, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_17__* @svn_fs_bdb__open(%struct.TYPE_19__** %40, i8* %41, i32 %42, i32 438, i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %11, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_17__* @svn_error_createf(i32 %55, %struct.TYPE_17__* %56, i32 %57, i32 %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %5, align 8
  br label %356

62:                                               ; preds = %49
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_17__* @svn_error_createf(i32 %65, %struct.TYPE_17__* %66, i32 %67, i32 %70)
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %5, align 8
  br label %356

72:                                               ; preds = %38
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = load i32, i32* @cleanup_fs_apr, align 4
  %78 = load i32, i32* @apr_pool_cleanup_null, align 4
  %79 = call i32 @apr_pool_cleanup_register(i32 %75, %struct.TYPE_16__* %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %87

85:                                               ; preds = %72
  %86 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 13
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @svn_fs_bdb__open_nodes_table(i32* %90, i32 %95, i32 %96)
  %98 = call i32 @BDB_WRAP(%struct.TYPE_16__* %80, i32 %88, i32 %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %107

105:                                              ; preds = %87
  %106 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 12
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @svn_fs_bdb__open_revisions_table(i32* %110, i32 %115, i32 %116)
  %118 = call i32 @BDB_WRAP(%struct.TYPE_16__* %100, i32 %108, i32 %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %127

125:                                              ; preds = %107
  %126 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 11
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @svn_fs_bdb__open_transactions_table(i32* %130, i32 %135, i32 %136)
  %138 = call i32 @BDB_WRAP(%struct.TYPE_16__* %120, i32 %128, i32 %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %127
  %144 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %147

145:                                              ; preds = %127
  %146 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 10
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @svn_fs_bdb__open_copies_table(i32* %150, i32 %155, i32 %156)
  %158 = call i32 @BDB_WRAP(%struct.TYPE_16__* %140, i32 %148, i32 %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %147
  %164 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %167

165:                                              ; preds = %147
  %166 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 9
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @svn_fs_bdb__open_changes_table(i32* %170, i32 %175, i32 %176)
  %178 = call i32 @BDB_WRAP(%struct.TYPE_16__* %160, i32 %168, i32 %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %167
  %184 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %187

185:                                              ; preds = %167
  %186 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @svn_fs_bdb__open_reps_table(i32* %190, i32 %195, i32 %196)
  %198 = call i32 @BDB_WRAP(%struct.TYPE_16__* %180, i32 %188, i32 %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %187
  %204 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %207

205:                                              ; preds = %187
  %206 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @svn_fs_bdb__open_strings_table(i32* %210, i32 %215, i32 %216)
  %218 = call i32 @BDB_WRAP(%struct.TYPE_16__* %200, i32 %208, i32 %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %207
  %224 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %227

225:                                              ; preds = %207
  %226 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @svn_fs_bdb__open_uuids_table(i32* %230, i32 %235, i32 %236)
  %238 = call i32 @BDB_WRAP(%struct.TYPE_16__* %220, i32 %228, i32 %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %227
  %244 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %247

245:                                              ; preds = %227
  %246 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 5
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @svn_fs_bdb__open_locks_table(i32* %250, i32 %255, i32 %256)
  %258 = call i32 @BDB_WRAP(%struct.TYPE_16__* %240, i32 %248, i32 %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %247
  %264 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %267

265:                                              ; preds = %247
  %266 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i32 [ %264, %263 ], [ %266, %265 ]
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %7, align 4
  %277 = call i32 @svn_fs_bdb__open_lock_tokens_table(i32* %270, i32 %275, i32 %276)
  %278 = call i32 @BDB_WRAP(%struct.TYPE_16__* %260, i32 %268, i32 %277)
  %279 = call i32 @SVN_ERR(i32 %278)
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT, align 4
  %282 = icmp sge i32 %280, %281
  br i1 %282, label %283, label %304

283:                                              ; preds = %267
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  br label %291

289:                                              ; preds = %283
  %290 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ]
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @svn_fs_bdb__open_node_origins_table(i32* %294, i32 %299, i32 %300)
  %302 = call i32 @BDB_WRAP(%struct.TYPE_16__* %284, i32 %292, i32 %301)
  %303 = call i32 @SVN_ERR(i32 %302)
  br label %304

304:                                              ; preds = %291, %267
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @SVN_FS_BASE__MIN_MISCELLANY_FORMAT, align 4
  %307 = icmp sge i32 %305, %306
  br i1 %307, label %308, label %329

308:                                              ; preds = %304
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %310 = load i32, i32* %7, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  br label %316

314:                                              ; preds = %308
  %315 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi i32 [ %313, %312 ], [ %315, %314 ]
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @svn_fs_bdb__open_miscellaneous_table(i32* %319, i32 %324, i32 %325)
  %327 = call i32 @BDB_WRAP(%struct.TYPE_16__* %309, i32 %317, i32 %326)
  %328 = call i32 @SVN_ERR(i32 %327)
  br label %329

329:                                              ; preds = %316, %304
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* @SVN_FS_BASE__MIN_REP_SHARING_FORMAT, align 4
  %332 = icmp sge i32 %330, %331
  br i1 %332, label %333, label %354

333:                                              ; preds = %329
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = load i32, i32* %7, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  br label %341

339:                                              ; preds = %333
  %340 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %338, %337 ], [ %340, %339 ]
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @svn_fs_bdb__open_checksum_reps_table(i32* %344, i32 %349, i32 %350)
  %352 = call i32 @BDB_WRAP(%struct.TYPE_16__* %334, i32 %342, i32 %351)
  %353 = call i32 @SVN_ERR(i32 %352)
  br label %354

354:                                              ; preds = %341, %329
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %355, %struct.TYPE_17__** %5, align 8
  br label %356

356:                                              ; preds = %354, %62, %52
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %357
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_18__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @bdb_write_config(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @svn_fs_bdb__open(%struct.TYPE_19__**, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i32, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_bdb__open_nodes_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_revisions_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_transactions_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_copies_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_changes_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_reps_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_strings_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_uuids_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_locks_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_lock_tokens_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_node_origins_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_miscellaneous_table(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__open_checksum_reps_table(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
