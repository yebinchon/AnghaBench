; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_report_t = type { %struct.TYPE_4__*, %struct.replay_node_t*, i32, i32, i32, i32, i32, i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i64*, i8**)* }
%struct.replay_node_t = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@REPLAY_REPORT = common dso_local global i32 0, align 4
@REPLAY_APPLY_TEXTDELTA = common dso_local global i32 0, align 4
@SVN_ERR_XML_MALFORMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@svn_delta_noop_window_handler = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*)* @replay_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_opened(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.revision_report_t*, align 8
  %13 = alloca %struct.replay_node_t*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.revision_report_t*
  store %struct.revision_report_t* %19, %struct.revision_report_t** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @REPLAY_REPORT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %5
  %24 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %25 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %24, i32 0, i32 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %30 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %29, i32 0, i32 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %23
  %36 = phi i1 [ true, %23 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %40 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @svn_ra_serf__keep_only_regular_props(i32 %41, i32* %42)
  %44 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %45 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %44, i32 0, i32 7
  %46 = load i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)*, i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)** %45, align 8
  %47 = icmp ne i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %35
  %49 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %50 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %49, i32 0, i32 7
  %51 = load i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)*, i32 (i32, i32, %struct.TYPE_4__**, i32*, i32, i32)** %50, align 8
  %52 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %53 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %56 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %59 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %58, i32 0, i32 0
  %60 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %61 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %60, i32 0, i32 4
  %62 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %63 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %66 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %51(i32 %54, i32 %57, %struct.TYPE_4__** %59, i32* %61, i32 %64, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %48, %35
  br label %133

71:                                               ; preds = %5
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @REPLAY_APPLY_TEXTDELTA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %132

75:                                               ; preds = %71
  %76 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %77 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %76, i32 0, i32 1
  %78 = load %struct.replay_node_t*, %struct.replay_node_t** %77, align 8
  store %struct.replay_node_t* %78, %struct.replay_node_t** %13, align 8
  %79 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %80 = icmp ne %struct.replay_node_t* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %83 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %88 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81, %75
  %92 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %93 = call i32* @svn_error_create(i32 %92, i32* null, i32* null)
  store i32* %93, i32** %6, align 8
  br label %135

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @REPLAY_APPLY_TEXTDELTA, align 4
  %97 = call i32* @svn_ra_serf__xml_gather_since(i32* %95, i32 %96)
  store i32* %97, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i8* @svn_hash_gets(i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %99, i8** %15, align 8
  %100 = load %struct.revision_report_t*, %struct.revision_report_t** %12, align 8
  %101 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (i32, i8*, i32, i64*, i8**)*, i32 (i32, i8*, i32, i64*, i8**)** %103, align 8
  %105 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %106 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %110 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %104(i32 %107, i8* %108, i32 %111, i64* %16, i8** %17)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* @svn_delta_noop_window_handler, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %94
  %118 = load i64, i64* %16, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %122 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @svn_txdelta_parse_svndiff(i64 %118, i8* %119, i32 %120, i32 %123)
  %125 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %126 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @svn_base64_decode(i32 %124, i32 %127)
  %129 = load %struct.replay_node_t*, %struct.replay_node_t** %13, align 8
  %130 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %117, %94
  br label %132

132:                                              ; preds = %131, %71
  br label %133

133:                                              ; preds = %132, %70
  %134 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %134, i32** %6, align 8
  br label %135

135:                                              ; preds = %133, %91
  %136 = load i32*, i32** %6, align 8
  ret i32* %136
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_ra_serf__keep_only_regular_props(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__xml_gather_since(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i64 @svn_base64_decode(i32, i32) #1

declare dso_local i32 @svn_txdelta_parse_svndiff(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
