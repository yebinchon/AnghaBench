; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"(?c)rl\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_RA_SVN_STRING = common dso_local global i64 0, align 8
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Non-string as part of file contents\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i8*, i32, i32*, i32*, i32**, i32*)* @ra_svn_get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_get_file(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %16, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %17, align 8
  store i32* null, i32** %20, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i8* @reparent_path(%struct.TYPE_14__* %31, i8* %32, i32* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32**, i32*** %14, align 8
  %40 = icmp ne i32** %39, null
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @svn_ra_svn__write_cmd_get_file(i32* %35, i32* %36, i8* %37, i32 %38, i32 %41, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @handle_auth_request(%struct.TYPE_12__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %17, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__read_cmd_response(i32* %51, i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, i32* %11, i32** %18)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %7
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %7
  %61 = load i32**, i32*** %14, align 8
  %62 = icmp ne i32** %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** %18, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32**, i32*** %14, align 8
  %67 = call i32 @svn_ra_svn__parse_proplist(i32* %64, i32* %65, i32** %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %8, align 8
  br label %171

74:                                               ; preds = %69
  %75 = load i8*, i8** %19, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @svn_checksum_md5, align 4
  %79 = load i8*, i8** %19, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @svn_checksum_parse_hex(i32** %20, i32 %78, i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32, i32* @svn_checksum_md5, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call i32* @svn_checksum_ctx_create(i32 %83, i32* %84)
  store i32* %85, i32** %21, align 8
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i32*, i32** %15, align 8
  %88 = call i32* @svn_pool_create(i32* %87)
  store i32* %88, i32** %22, align 8
  br label %89

89:                                               ; preds = %86, %130
  %90 = load i32*, i32** %22, align 8
  %91 = call i32 @svn_pool_clear(i32* %90)
  %92 = load i32*, i32** %17, align 8
  %93 = load i32*, i32** %22, align 8
  %94 = call i32 @svn_ra_svn__read_item(i32* %92, i32* %93, %struct.TYPE_13__** %23)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SVN_RA_SVN_STRING, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %103 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32* @svn_error_create(i32 %102, i32* null, i32 %103)
  store i32* %104, i32** %8, align 8
  br label %171

105:                                              ; preds = %89
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %143

113:                                              ; preds = %105
  %114 = load i32*, i32** %20, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load i32*, i32** %21, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @svn_checksum_update(i32* %117, i32 %122, i64 %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %130

130:                                              ; preds = %116, %113
  %131 = load i32*, i32** %12, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = call i32 @svn_stream_write(i32* %131, i32 %136, i64* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %89

143:                                              ; preds = %112
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @svn_pool_destroy(i32* %144)
  %146 = load i32*, i32** %17, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__read_cmd_response(i32* %146, i32* %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i32*, i32** %20, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %169

152:                                              ; preds = %143
  %153 = load i32*, i32** %21, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @svn_checksum_final(i32** %24, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i32*, i32** %24, align 8
  %158 = load i32*, i32** %20, align 8
  %159 = call i32 @svn_checksum_match(i32* %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %152
  %162 = load i32*, i32** %20, align 8
  %163 = load i32*, i32** %24, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i8*, i8** %10, align 8
  %167 = call i32* @svn_checksum_mismatch_err(i32* %162, i32* %163, i32* %164, i32 %165, i8* %166)
  store i32* %167, i32** %8, align 8
  br label %171

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %143
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %170, i32** %8, align 8
  br label %171

171:                                              ; preds = %169, %161, %101, %72
  %172 = load i32*, i32** %8, align 8
  ret i32* %172
}

declare dso_local i8* @reparent_path(%struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_get_file(i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*, ...) #1

declare dso_local i32 @svn_ra_svn__parse_proplist(i32*, i32*, i32**) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_ra_svn__read_item(i32*, i32*, %struct.TYPE_13__**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_checksum_update(i32*, i32, i64) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i64*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_checksum_final(i32**, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
