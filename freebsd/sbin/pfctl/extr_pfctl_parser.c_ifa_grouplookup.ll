; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_grouplookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_grouplookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.node_host* }
%struct.ifg_req = type { i32 }
%struct.ifgroupreq = type { i32, %struct.ifg_req*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@SIOCGIFGMEMB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SIOCGIFGMEMB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @ifa_grouplookup(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.node_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifg_req*, align 8
  %7 = alloca %struct.ifgroupreq, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node_host*, align 8
  %11 = alloca %struct.node_host*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node_host* null, %struct.node_host** %11, align 8
  %12 = call i32 (...) @get_query_socket()
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @is_a_group(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.node_host* null, %struct.node_host** %3, align 8
  br label %89

18:                                               ; preds = %2
  %19 = call i32 @bzero(%struct.ifgroupreq* %7, i32 24)
  %20 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %7, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.ifg_req* @calloc(i32 1, i32 %26)
  %28 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %7, i32 0, i32 1
  store %struct.ifg_req* %27, %struct.ifg_req** %28, align 8
  %29 = icmp eq %struct.ifg_req* %27, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SIOCGIFGMEMB, align 4
  %35 = ptrtoint %struct.ifgroupreq* %7 to i32
  %36 = call i32 @ioctl(i32 %33, i32 %34, i32 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %7, i32 0, i32 1
  %42 = load %struct.ifg_req*, %struct.ifg_req** %41, align 8
  store %struct.ifg_req* %42, %struct.ifg_req** %6, align 8
  br label %43

43:                                               ; preds = %81, %40
  %44 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %45 = icmp ne %struct.ifg_req* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %84

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %58 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.node_host* @ifa_lookup(i32 %59, i32 %60)
  store %struct.node_host* %61, %struct.node_host** %10, align 8
  %62 = icmp eq %struct.node_host* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %81

64:                                               ; preds = %52
  %65 = load %struct.node_host*, %struct.node_host** %11, align 8
  %66 = icmp eq %struct.node_host* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load %struct.node_host*, %struct.node_host** %10, align 8
  store %struct.node_host* %68, %struct.node_host** %11, align 8
  br label %80

69:                                               ; preds = %64
  %70 = load %struct.node_host*, %struct.node_host** %10, align 8
  %71 = load %struct.node_host*, %struct.node_host** %11, align 8
  %72 = getelementptr inbounds %struct.node_host, %struct.node_host* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store %struct.node_host* %70, %struct.node_host** %74, align 8
  %75 = load %struct.node_host*, %struct.node_host** %10, align 8
  %76 = getelementptr inbounds %struct.node_host, %struct.node_host* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.node_host*, %struct.node_host** %11, align 8
  %79 = getelementptr inbounds %struct.node_host, %struct.node_host* %78, i32 0, i32 0
  store %struct.TYPE_2__* %77, %struct.TYPE_2__** %79, align 8
  br label %80

80:                                               ; preds = %69, %67
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %83 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %82, i32 1
  store %struct.ifg_req* %83, %struct.ifg_req** %6, align 8
  br label %43

84:                                               ; preds = %50
  %85 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %7, i32 0, i32 1
  %86 = load %struct.ifg_req*, %struct.ifg_req** %85, align 8
  %87 = call i32 @free(%struct.ifg_req* %86)
  %88 = load %struct.node_host*, %struct.node_host** %11, align 8
  store %struct.node_host* %88, %struct.node_host** %3, align 8
  br label %89

89:                                               ; preds = %84, %17
  %90 = load %struct.node_host*, %struct.node_host** %3, align 8
  ret %struct.node_host* %90
}

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i32 @is_a_group(i8*) #1

declare dso_local i32 @bzero(%struct.ifgroupreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.ifg_req* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local %struct.node_host* @ifa_lookup(i32, i32) #1

declare dso_local i32 @free(%struct.ifg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
