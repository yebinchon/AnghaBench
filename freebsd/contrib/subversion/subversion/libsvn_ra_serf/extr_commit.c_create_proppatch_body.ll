; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_proppatch_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_proppatch_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"D:propertyupdate\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:D\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xmlns:V\00", align 1
@SVN_DAV_PROP_NS_DAV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"xmlns:C\00", align 1
@SVN_DAV_PROP_NS_CUSTOM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_DAV_PROP_NS_SVN = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"D:set\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"D:prop\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"D:remove\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_proppatch_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_proppatch_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @serf_bucket_aggregate_create(i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @svn_ra_serf__add_xml_header_buckets(i32* %22, i32* %23)
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @SVN_DAV_PROP_NS_DAV, align 4
  %28 = load i32, i32* @SVN_DAV_PROP_NS_CUSTOM, align 4
  %29 = load i32, i32* @SVN_DAV_PROP_NS_SVN, align 4
  %30 = load i32, i32* @SVN_VA_NULL, align 4
  %31 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %25, i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @apr_hash_first(i32* %32, i32 %35)
  store i32* %36, i32** %14, align 8
  br label %37

37:                                               ; preds = %88, %5
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load i32*, i32** %14, align 8
  %42 = call %struct.TYPE_6__* @apr_hash_this_val(i32* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %15, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @svn_hash_gets(i64 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %52, %40
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @SVN_VA_NULL, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %66, i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @SVN_VA_NULL, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %72, i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %64, %61
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @write_prop_xml(%struct.TYPE_7__* %79, i32* %80, i32* %81, %struct.TYPE_6__* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %87

87:                                               ; preds = %78, %52, %47
  br label %88

88:                                               ; preds = %87
  %89 = load i32*, i32** %14, align 8
  %90 = call i32* @apr_hash_next(i32* %89)
  store i32* %90, i32** %14, align 8
  br label %37

91:                                               ; preds = %37
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %95, i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %98, i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i64, i64* @FALSE, align 8
  store i64 %102, i64* %13, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32* @apr_hash_first(i32* %103, i32 %106)
  store i32* %107, i32** %14, align 8
  br label %108

108:                                              ; preds = %159, %101
  %109 = load i32*, i32** %14, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %162

111:                                              ; preds = %108
  %112 = load i32*, i32** %14, align 8
  %113 = call %struct.TYPE_6__* @apr_hash_this_val(i32* %112)
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %16, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %158, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @svn_hash_gets(i64 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %123, %118
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %13, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* @SVN_VA_NULL, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %137, i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @SVN_VA_NULL, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %143, i32* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %135, %132
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @write_prop_xml(%struct.TYPE_7__* %150, i32* %151, i32* %152, %struct.TYPE_6__* %153, i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %158

158:                                              ; preds = %149, %123, %111
  br label %159

159:                                              ; preds = %158
  %160 = load i32*, i32** %14, align 8
  %161 = call i32* @apr_hash_next(i32* %160)
  store i32* %161, i32** %14, align 8
  br label %108

162:                                              ; preds = %108
  %163 = load i64, i64* %13, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32*, i32** %12, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %166, i32* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %169, i32* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %172

172:                                              ; preds = %165, %162
  %173 = load i32*, i32** %12, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %173, i32* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %176 = load i32*, i32** %12, align 8
  %177 = load i32**, i32*** %6, align 8
  store i32* %176, i32** %177, align 8
  %178 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %178
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_xml_header_buckets(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @svn_hash_gets(i64, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_prop_xml(%struct.TYPE_7__*, i32*, i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
