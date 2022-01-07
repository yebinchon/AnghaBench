; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_add_opt_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_add_opt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pf_opt_tbl = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pf_rule_addr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.node_host = type { %struct.TYPE_7__, i32 }
%struct.node_tinit = type { i32* }

@add_opt_table.tablenum = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@PFRB_ADDRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@PF_OPT_TABLE_PREFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"creating table <%s>\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to add host\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@entries = common dso_local global i32 0, align 4
@TABLE_THRESHOLD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"table <%s> now faster than skip steps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_opt_table(%struct.pfctl* %0, %struct.pf_opt_tbl** %1, i32 %2, %struct.pf_rule_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfctl*, align 8
  %7 = alloca %struct.pf_opt_tbl**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pf_rule_addr*, align 8
  %10 = alloca %struct.node_host, align 4
  %11 = alloca %struct.node_tinit*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %6, align 8
  store %struct.pf_opt_tbl** %1, %struct.pf_opt_tbl*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pf_rule_addr* %3, %struct.pf_rule_addr** %9, align 8
  %12 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %13 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %12, align 8
  %14 = icmp eq %struct.pf_opt_tbl* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %4
  %16 = call i8* @calloc(i32 1, i32 24)
  %17 = bitcast i8* %16 to %struct.pf_opt_tbl*
  %18 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  store %struct.pf_opt_tbl* %17, %struct.pf_opt_tbl** %18, align 8
  %19 = icmp eq %struct.pf_opt_tbl* %17, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = call i8* @calloc(i32 1, i32 4)
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  %23 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %24 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %23, align 8
  %25 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %24, i32 0, i32 3
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %25, align 8
  %26 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %15
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* @PFRB_ADDRS, align 4
  %31 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %32 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %31, align 8
  %33 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %37 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %36, align 8
  %38 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %37, i32 0, i32 2
  %39 = call i32 @SIMPLEQ_INIT(i32* %38)
  %40 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %41 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %40, align 8
  %42 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** @PF_OPT_TABLE_PREFIX, align 8
  %45 = load i32, i32* @add_opt_table.tablenum, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @add_opt_table.tablenum, align 4
  %47 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %48 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %49 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %48, align 8
  %50 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %29, %4
  %54 = call i32 @memset(%struct.node_host* %10, i32 0, i32 12)
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.node_host, %struct.node_host* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.node_host, %struct.node_host* %10, i32 0, i32 0
  %58 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %9, align 8
  %59 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_7__* %57 to i8*
  %61 = bitcast %struct.TYPE_7__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %63 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %62, align 8
  %64 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i64 @append_addr_host(%struct.TYPE_8__* %65, %struct.node_host* %10, i32 0, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %120

70:                                               ; preds = %53
  %71 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %72 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = call i8* @calloc(i32 1, i32 8)
  %79 = bitcast i8* %78 to %struct.node_tinit*
  store %struct.node_tinit* %79, %struct.node_tinit** %11, align 8
  %80 = icmp eq %struct.node_tinit* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = call i32* @malloc(i32 4)
  %85 = load %struct.node_tinit*, %struct.node_tinit** %11, align 8
  %86 = getelementptr inbounds %struct.node_tinit, %struct.node_tinit* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = icmp eq i32* %84, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load %struct.node_tinit*, %struct.node_tinit** %11, align 8
  %92 = getelementptr inbounds %struct.node_tinit, %struct.node_tinit* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @memcpy(i32* %93, %struct.node_host* %10, i32 4)
  %95 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %96 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %95, align 8
  %97 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %96, i32 0, i32 2
  %98 = load %struct.node_tinit*, %struct.node_tinit** %11, align 8
  %99 = load i32, i32* @entries, align 4
  %100 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %97, %struct.node_tinit* %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %70
  %102 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %103 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %102, align 8
  %104 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %108 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %107, align 8
  %109 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TABLE_THRESHOLD, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load %struct.pf_opt_tbl**, %struct.pf_opt_tbl*** %7, align 8
  %115 = load %struct.pf_opt_tbl*, %struct.pf_opt_tbl** %114, align 8
  %116 = getelementptr inbounds %struct.pf_opt_tbl, %struct.pf_opt_tbl* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, ...) @DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %101
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %68
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @SIMPLEQ_INIT(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @DEBUG(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.node_host*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @append_addr_host(%struct.TYPE_8__*, %struct.node_host*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.node_host*, i32) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.node_tinit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
