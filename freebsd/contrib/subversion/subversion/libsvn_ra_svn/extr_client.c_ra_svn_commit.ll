; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32* }
%struct.TYPE_16__ = type { i8*, i32, i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }

@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@SVN_RA_SVN_CAP_COMMIT_REVPROPS = common dso_local global i32 0, align 4
@SVN_ERR_BAD_PROPERTY_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"ra_svn does not support not specifying a log message with pre-1.5 servers; consider passing an empty one, or upgrading the server\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"Server doesn't support setting arbitrary revision properties during commit\00", align 1
@SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS = common dso_local global i32 0, align 4
@SVN_PROP_TXN_CLIENT_COMPAT_VERSION = common dso_local global i32 0, align 4
@SVN_VER_NUMBER = common dso_local global i8* null, align 8
@SVN_PROP_TXN_USER_AGENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"w(c(!\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"!)b(!\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"!))\00", align 1
@ra_svn_end_commit = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32**, i8**, i32*, i32, i8*, i32*, i32, i32*)* @ra_svn_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_commit(%struct.TYPE_15__* %0, i32** %1, i8** %2, i32* %3, i32 %4, i8* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i8** %2, i8*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %20, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %38 = call %struct.TYPE_13__* @svn_hash_gets(i32* %36, i32 %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %25, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %40 = icmp eq %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %9
  %42 = load i32*, i32** %21, align 8
  %43 = load i32, i32* @SVN_RA_SVN_CAP_COMMIT_REVPROPS, align 4
  %44 = call i64 @svn_ra_svn_has_capability(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0))
  %49 = call i32* @svn_error_createf(i32 %47, i32* null, i32 %48)
  store i32* %49, i32** %10, align 8
  br label %184

50:                                               ; preds = %41, %9
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %52 = icmp eq %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %19, align 8
  %55 = call %struct.TYPE_13__* @svn_string_create(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %25, align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @apr_hash_count(i32* %58)
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** %21, align 8
  %63 = load i32, i32* @SVN_RA_SVN_CAP_COMMIT_REVPROPS, align 4
  %64 = call i64 @svn_ra_svn_has_capability(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32* @svn_error_create(i32 %67, i32* null, i32 %68)
  store i32* %69, i32** %10, align 8
  br label %184

70:                                               ; preds = %61, %57
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* @SVN_RA_SVN_CAP_COMMIT_REVPROPS, align 4
  %73 = call i64 @svn_ra_svn_has_capability(i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* @SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS, align 4
  %78 = call i64 @svn_ra_svn_has_capability(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* @SVN_PROP_TXN_CLIENT_COMPAT_VERSION, align 4
  %83 = load i8*, i8** @SVN_VER_NUMBER, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call %struct.TYPE_13__* @svn_string_create(i8* %83, i32* %84)
  %86 = call i32 @svn_hash_sets(i32* %81, i32 %82, %struct.TYPE_13__* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* @SVN_PROP_TXN_USER_AGENT, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call %struct.TYPE_13__* @svn_string_create(i8* %91, i32* %92)
  %94 = call i32 @svn_hash_sets(i32* %87, i32 %88, %struct.TYPE_13__* %93)
  br label %95

95:                                               ; preds = %80, %75, %70
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @ensure_exact_server_parent(%struct.TYPE_15__* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** %21, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %100, i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i32*, i32** %17, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %137

109:                                              ; preds = %95
  %110 = load i32*, i32** %19, align 8
  %111 = call i32* @svn_pool_create(i32* %110)
  store i32* %111, i32** %24, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = call i32* @apr_hash_first(i32* %112, i32* %113)
  store i32* %114, i32** %23, align 8
  br label %115

115:                                              ; preds = %131, %109
  %116 = load i32*, i32** %23, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i32*, i32** %24, align 8
  %120 = call i32 @svn_pool_clear(i32* %119)
  %121 = load i32*, i32** %23, align 8
  %122 = call i32 @apr_hash_this(i32* %121, i8** %26, i32* null, i8** %27)
  %123 = load i8*, i8** %26, align 8
  store i8* %123, i8** %28, align 8
  %124 = load i8*, i8** %27, align 8
  store i8* %124, i8** %29, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = load i32*, i32** %24, align 8
  %127 = load i8*, i8** %28, align 8
  %128 = load i8*, i8** %29, align 8
  %129 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %125, i32* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %127, i8* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %118
  %132 = load i32*, i32** %23, align 8
  %133 = call i32* @apr_hash_next(i32* %132)
  store i32* %133, i32** %23, align 8
  br label %115

134:                                              ; preds = %115
  %135 = load i32*, i32** %24, align 8
  %136 = call i32 @svn_pool_destroy(i32* %135)
  br label %137

137:                                              ; preds = %134, %95
  %138 = load i32*, i32** %21, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %138, i32* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i32*, i32** %21, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @svn_ra_svn__write_proplist(i32* %143, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %21, align 8
  %149 = load i32*, i32** %19, align 8
  %150 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %148, i32* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = call i32 @handle_auth_request(%struct.TYPE_14__* %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  %156 = load i32*, i32** %21, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = call i32 @svn_ra_svn__read_cmd_response(i32* %156, i32* %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load i32*, i32** %19, align 8
  %161 = call %struct.TYPE_16__* @apr_palloc(i32* %160, i32 40)
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %22, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 4
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %164, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  store i32* null, i32** %169, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i32**, i32*** %12, align 8
  %177 = load i8**, i8*** %13, align 8
  %178 = load i32*, i32** %21, align 8
  %179 = load i32*, i32** %19, align 8
  %180 = load i32, i32* @ra_svn_end_commit, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %182 = call i32 @svn_ra_svn_get_editor(i32** %176, i8** %177, i32* %178, i32* %179, i32 %180, %struct.TYPE_16__* %181)
  %183 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %183, i32** %10, align 8
  br label %184

184:                                              ; preds = %137, %66, %46
  %185 = load i32*, i32** %10, align 8
  ret i32* %185
}

declare dso_local %struct.TYPE_13__* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @svn_ra_svn_has_capability(i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_13__* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_exact_server_parent(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_ra_svn__write_proplist(i32*, i32*, i32*) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_ra_svn_get_editor(i32**, i8**, i32*, i32*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
