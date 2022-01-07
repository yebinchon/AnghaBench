; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_process_editor_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_process_editor_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__*, i64, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32* (i32, i32*)* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__*, i32, %struct.TYPE_19__* }

@update_delay_handler = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Missing update-report close tag\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_19__*, %struct.TYPE_18__*, i32*)* @process_editor_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_editor_report(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_16__* @apr_pcalloc(i32* %22, i32 32)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %11, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load i32, i32* @update_delay_handler, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = call i32* @open_connection_if_needed(%struct.TYPE_17__* %43, i32 0)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %129, %3
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %58, %53, %48
  %70 = phi i1 [ true, %58 ], [ true, %53 ], [ true, %48 ], [ %68, %63 ]
  br i1 %70, label %71, label %130

71:                                               ; preds = %69
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @svn_pool_clear(i32* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @svn_ra_serf__context_run(%struct.TYPE_17__* %74, i32* %10, i32* %75)
  store i32* %76, i32** %12, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %71
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @svn_error_clear(i32* %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32* @svn_ra_serf__server_error_create(%struct.TYPE_18__* %89, i32* %90)
  store i32* %91, i32** %12, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @SVN_ERR_ASSERT(i32 %94)
  br label %96

96:                                               ; preds = %86, %81, %71
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @SVN_ERR(i32* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32* @process_pending(%struct.TYPE_16__* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32* %106)
  br label %108

108:                                              ; preds = %103, %96
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %126, %108
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %118, i64 %120
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @serf_debug__closed_conn(i32 %124)
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %109

129:                                              ; preds = %109
  br label %48

130:                                              ; preds = %69
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @svn_pool_clear(i32* %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %130
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32* (i32, i32*)*, i32* (i32, i32*)** %141, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = call i32* %142(i32 %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32* %147)
  br label %153

149:                                              ; preds = %130
  %150 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %151 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %152 = call i32* @svn_error_create(i32 %150, i32* null, i32 %151)
  store i32* %152, i32** %4, align 8
  br label %157

153:                                              ; preds = %137
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @svn_pool_destroy(i32* %154)
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %4, align 8
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i32*, i32** %4, align 8
  ret i32* %158
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_16__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @open_connection_if_needed(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_ra_serf__context_run(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_ra_serf__server_error_create(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @process_pending(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @serf_debug__closed_conn(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
