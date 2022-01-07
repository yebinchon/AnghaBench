; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_svn_ra_serf__change_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_svn_ra_serf__change_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i8*, i8*, i32, i32*, i32* }
%struct.TYPE_24__ = type { i8*, i32* }

@FALSE = common dso_local global i64 0, align 8
@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_25__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s/%ld\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_PRECONDITION_FAILED = common dso_local global i64 0, align 8
@SVN_ERR_FS_PROP_BASEVALUE_MISMATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @svn_ra_serf__change_rev_prop(%struct.TYPE_22__* %0, i32 %1, i8* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %14, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %18, align 8
  %28 = load i32**, i32*** %11, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30, %6
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %35 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_ra_serf__has_capability(%struct.TYPE_22__* %34, i64* %18, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32**, i32*** %11, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %18, align 8
  %44 = call i32 @SVN_ERR_ASSERT(i64 %43)
  br label %65

45:                                               ; preds = %39
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %18, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_ra_serf__rev_prop(%struct.TYPE_22__* %52, i32 %53, i8* %54, i32** %21, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %21, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %7, align 8
  br label %183

62:                                               ; preds = %51
  %63 = load i32*, i32** %21, align 8
  store i32* %63, i32** %17, align 8
  store i32** %17, i32*** %11, align 8
  br label %64

64:                                               ; preds = %62, %48, %45
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %67 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_23__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i8* @apr_psprintf(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  store i8* %75, i8** %16, align 8
  br label %88

76:                                               ; preds = %65
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @svn_ra_serf__discover_vcc(i8** %22, %struct.TYPE_23__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @svn_ra_serf__fetch_dav_prop(i8** %16, %struct.TYPE_23__* %81, i8* %82, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %76, %69
  %89 = load i32*, i32** %13, align 8
  %90 = call %struct.TYPE_26__* @apr_pcalloc(i32* %89, i32 48)
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %15, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 4
  store i32* null, i32** %95, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i8* @apr_hash_make(i32* %99)
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32**, i32*** %11, align 8
  %107 = icmp ne i32** %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %88
  %109 = load i32*, i32** %13, align 8
  %110 = call %struct.TYPE_24__* @apr_palloc(i32* %109, i32 16)
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %19, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i32**, i32*** %11, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i8* @apr_hash_make(i32* %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %129 = call i32 @svn_hash_sets(i8* %124, i8* %127, %struct.TYPE_24__* %128)
  br label %130

130:                                              ; preds = %108, %88
  %131 = load i32*, i32** %13, align 8
  %132 = call %struct.TYPE_24__* @apr_palloc(i32* %131, i32 16)
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %19, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %146 = call i32 @svn_hash_sets(i8* %141, i8* %144, %struct.TYPE_24__* %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = call %struct.TYPE_25__* @proppatch_resource(%struct.TYPE_23__* %147, %struct.TYPE_26__* %148, i32* %149)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %20, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %152 = icmp ne %struct.TYPE_25__* %151, null
  br i1 %152, label %153, label %180

153:                                              ; preds = %130
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SVN_ERR_RA_DAV_PRECONDITION_FAILED, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %153
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %160, %struct.TYPE_25__** %23, align 8
  br label %161

161:                                              ; preds = %172, %159
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %163 = icmp ne %struct.TYPE_25__* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SVN_ERR_RA_DAV_PRECONDITION_FAILED, align 8
  %169 = icmp eq i64 %167, %168
  br label %170

170:                                              ; preds = %164, %161
  %171 = phi i1 [ false, %161 ], [ %169, %164 ]
  br i1 %171, label %172, label %179

172:                                              ; preds = %170
  %173 = load i64, i64* @SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  store %struct.TYPE_25__* %178, %struct.TYPE_25__** %23, align 8
  br label %161

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %153, %130
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %182 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %181)
  store %struct.TYPE_25__* %182, %struct.TYPE_25__** %7, align 8
  br label %183

183:                                              ; preds = %180, %60
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  ret %struct.TYPE_25__* %184
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__has_capability(%struct.TYPE_22__*, i64*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i64) #1

declare dso_local i32 @svn_ra_serf__rev_prop(%struct.TYPE_22__*, i32, i8*, i32**, i32*) #1

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_23__*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @svn_ra_serf__discover_vcc(i8**, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_ra_serf__fetch_dav_prop(i8**, %struct.TYPE_23__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_24__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i8*, i8*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @proppatch_resource(%struct.TYPE_23__*, %struct.TYPE_26__*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
