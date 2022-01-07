; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_send_local_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_send_local_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__**, %struct.TYPE_5__**, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.ibv_gid = type { i32 }

@MSG_SIZE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't read sgid of index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Couldn't get SRQ num\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ADDR_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@MSG_FORMAT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't send local address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @send_local_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_local_dest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [33 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %union.ibv_gid, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MSG_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 0), align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 7), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 6), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 0), align 8
  %22 = call i64 @ibv_query_gid(i32 %19, i32 %20, i64 %21, %union.ibv_gid* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 0), align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

28:                                               ; preds = %18
  br label %31

29:                                               ; preds = %2
  %30 = call i32 @memset(%union.ibv_gid* %10, i32 0, i32 4)
  br label %31

31:                                               ; preds = %29, %28
  %32 = call i32 (...) @lrand48()
  %33 = and i32 %32, 16777215
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 1), align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 5), align 4
  %40 = call i64 @ibv_get_srq_num(i32 %39, i32* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

45:                                               ; preds = %31
  %46 = load i32, i32* @AF_INET6, align 4
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %48 = call i32 @inet_ntop(i32 %46, %union.ibv_gid* %10, i8* %47, i32 33)
  %49 = load i8*, i8** @ADDR_FORMAT, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 4), align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 3), align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 2), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 1), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %73 = call i32 @printf(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %57, i32 %64, i32 %70, i32 %71, i8* %72)
  %74 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %75 = call i32 @gid_to_wire_gid(%union.ibv_gid* %10, i8* %74)
  %76 = load i8*, i8** @MSG_FORMAT, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 4), align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 3), align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 2), align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 1), align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %100 = call i32 @sprintf(i8* %15, i8* %76, i32 %77, i32 %84, i32 %91, i32 %97, i32 %98, i8* %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MSG_SIZE, align 4
  %103 = call i32 @write(i32 %101, i8* %15, i32 %102)
  %104 = load i32, i32* @MSG_SIZE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %45
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

109:                                              ; preds = %45
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %106, %42, %24
  %111 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ibv_query_gid(i32, i32, i64, %union.ibv_gid*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @memset(%union.ibv_gid*, i32, i32) #2

declare dso_local i32 @lrand48(...) #2

declare dso_local i64 @ibv_get_srq_num(i32, i32*) #2

declare dso_local i32 @inet_ntop(i32, %union.ibv_gid*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @gid_to_wire_gid(%union.ibv_gid*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
