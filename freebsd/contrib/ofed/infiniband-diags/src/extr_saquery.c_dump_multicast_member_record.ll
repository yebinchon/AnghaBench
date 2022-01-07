; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_multicast_member_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_multicast_member_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.sa_query_result = type { i32, i32 }
%struct.query_params = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@node_name_map = common dso_local global i32 0, align 4
@requested_name = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"\09\09PortGid.................%s (%s)\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [209 x i8] c"MCMemberRecord member dump:\0A\09\09MGID....................%s\0A\09\09Mlid....................0x%X\0A\09\09PortGid.................%s\0A\09\09ScopeState..............0x%X\0A\09\09ProxyJoin...............0x%X\0A\09\09NodeDescription.........%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.sa_query_result*, %struct.query_params*)* @dump_multicast_member_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_multicast_member_record(%struct.TYPE_16__* %0, %struct.sa_query_result* %1, %struct.query_params* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.sa_query_result*, align 8
  %6 = alloca %struct.query_params*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.sa_query_result* %1, %struct.sa_query_result** %5, align 8
  store %struct.query_params* %2, %struct.query_params** %6, align 8
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cl_ntoh16(i32 %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %26 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %68, %3
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.sa_query_result*, %struct.sa_query_result** %5, align 8
  %30 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.sa_query_result*, %struct.sa_query_result** %5, align 8
  %35 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.TYPE_15__* @sa_get_query_rec(i32 %36, i32 %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %13, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %33
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @node_name_map, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i8* @remap_node_name(i32 %56, i32 %60, i8* %65)
  store i8* %66, i8** %12, align 8
  br label %71

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %27

71:                                               ; preds = %55, %27
  %72 = load i64, i64* @requested_name, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i64, i64* @requested_name, align 8
  %76 = call i64 @strtol(i64 %75, i32* null, i32 0)
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, i32* @AF_INET6, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = trunc i64 %15 to i32
  %86 = call i8* @inet_ntop(i32 %80, i32 %84, i8* %17, i32 %85)
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %79, %74
  br label %117

90:                                               ; preds = %71
  %91 = load i32, i32* @AF_INET6, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = trunc i64 %15 to i32
  %97 = call i8* @inet_ntop(i32 %91, i32 %95, i8* %17, i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @cl_ntoh16(i32 %100)
  %102 = load i32, i32* @AF_INET6, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = trunc i64 %19 to i32
  %108 = call i8* @inet_ntop(i32 %102, i32 %106, i8* %20, i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %101, i8* %108, i32 %111, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %90, %89
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_ntoh16(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local %struct.TYPE_15__* @sa_get_query_rec(i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @remap_node_name(i32, i32, i8*) #2

declare dso_local i64 @strtol(i64, i32*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i8* @inet_ntop(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
