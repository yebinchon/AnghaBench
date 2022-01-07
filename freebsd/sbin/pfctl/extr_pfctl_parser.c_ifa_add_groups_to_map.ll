; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_add_groups_to_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_add_groups_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifgroupreq = type { i32, %struct.ifg_req*, i32 }
%struct.ifg_req = type { i8* }
%struct.TYPE_4__ = type { i8*, i32* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SIOCGIFGROUP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@FIND = common dso_local global i32 0, align 4
@isgroup_map = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@SIOCGIFGMEMB = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"interface group query response map insert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ifa_add_groups_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifa_add_groups_to_map(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifgroupreq, align 8
  %6 = alloca %struct.ifg_req*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ifgroupreq, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i32 (...) @get_query_socket()
  store i32 %11, i32* %3, align 4
  %12 = call i32 @memset(%struct.ifgroupreq* %5, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @IFNAMSIZ, align 4
  %17 = call i32 @strlcpy(i32 %14, i8* %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SIOCGIFGROUP, align 4
  %20 = ptrtoint %struct.ifgroupreq* %5 to i32
  %21 = call i64 @ioctl(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @calloc(i32 %31, i32 8)
  %33 = inttoptr i64 %32 to %struct.ifg_req*
  %34 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  store %struct.ifg_req* %33, %struct.ifg_req** %34, align 8
  %35 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %36 = load %struct.ifg_req*, %struct.ifg_req** %35, align 8
  %37 = icmp eq %struct.ifg_req* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SIOCGIFGROUP, align 4
  %43 = ptrtoint %struct.ifgroupreq* %5 to i32
  %44 = call i64 @ioctl(i32 %41, i32 %42, i32 %43)
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %50 = load %struct.ifg_req*, %struct.ifg_req** %49, align 8
  store %struct.ifg_req* %50, %struct.ifg_req** %6, align 8
  br label %51

51:                                               ; preds = %128, %48
  %52 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %53 = icmp ne %struct.ifg_req* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %131

60:                                               ; preds = %58
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  %65 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %66 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %60
  %71 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %72 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @FIND, align 4
  %76 = bitcast %struct.TYPE_4__* %7 to { i8*, i32* }*
  %77 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %76, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @hsearch_r(i8* %78, i32* %80, i32 %75, %struct.TYPE_4__** %8, i32* @isgroup_map)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %70
  %84 = call i32* @malloc(i32 4)
  store i32* %84, i32** %9, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 @bzero(%struct.ifgroupreq* %10, i32 24)
  %90 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %10, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %93 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlcpy(i32 %91, i8* %94, i32 4)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @SIOCGIFGMEMB, align 4
  %98 = ptrtoint %struct.ifgroupreq* %10 to i32
  %99 = call i64 @ioctl(i32 %96, i32 %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %107

105:                                              ; preds = %88
  %106 = load i32*, i32** %9, align 8
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %109 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @strdup(i8* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* %113, i32** %114, align 8
  %115 = load i32, i32* @ENTER, align 4
  %116 = bitcast %struct.TYPE_4__* %7 to { i8*, i32* }*
  %117 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %116, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @hsearch_r(i8* %118, i32* %120, i32 %115, %struct.TYPE_4__** %8, i32* @isgroup_map)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = call i32 @err(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %107
  br label %126

126:                                              ; preds = %125, %70
  br label %127

127:                                              ; preds = %126, %60
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %130 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %129, i32 1
  store %struct.ifg_req* %130, %struct.ifg_req** %6, align 8
  br label %51

131:                                              ; preds = %58
  %132 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %133 = load %struct.ifg_req*, %struct.ifg_req** %132, align 8
  %134 = call i32 @free(%struct.ifg_req* %133)
  ret void
}

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i32 @memset(%struct.ifgroupreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @hsearch_r(i8*, i32*, i32, %struct.TYPE_4__**, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.ifgroupreq*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.ifg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
