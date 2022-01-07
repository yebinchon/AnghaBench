; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_vc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_vc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_rendezvous = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, %struct.cf_rendezvous*, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i64, i64 }
%struct.__rpc_sockinfo = type { i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"svc_vc_create: out of memory\00", align 1
@__svc_maxrec = common dso_local global i32 0, align 4
@_null_auth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"svc_vc_create: could not retrieve local addr\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"svc_vc_create: no mem for local addr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cf_rendezvous* @svc_vc_create(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cf_rendezvous*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cf_rendezvous*, align 8
  %9 = alloca %struct.cf_rendezvous*, align 8
  %10 = alloca %struct.__rpc_sockinfo, align 4
  %11 = alloca %struct.sockaddr_storage, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.cf_rendezvous* null, %struct.cf_rendezvous** %8, align 8
  store %struct.cf_rendezvous* null, %struct.cf_rendezvous** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__rpc_fd2sockinfo(i32 %13, %struct.__rpc_sockinfo* %10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.cf_rendezvous* null, %struct.cf_rendezvous** %4, align 8
  br label %122

17:                                               ; preds = %3
  %18 = call i8* @mem_alloc(i64 80)
  %19 = bitcast i8* %18 to %struct.cf_rendezvous*
  store %struct.cf_rendezvous* %19, %struct.cf_rendezvous** %9, align 8
  %20 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %21 = icmp eq %struct.cf_rendezvous* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %109

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @__rpc_get_t_size(i32 %26, i32 %28, i32 %30)
  %32 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %33 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @__rpc_get_t_size(i32 %35, i32 %37, i32 %39)
  %41 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %42 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @__svc_maxrec, align 4
  %44 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %45 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = call %struct.cf_rendezvous* (...) @svc_xprt_alloc()
  store %struct.cf_rendezvous* %46, %struct.cf_rendezvous** %8, align 8
  %47 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %48 = icmp eq %struct.cf_rendezvous* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %109

51:                                               ; preds = %24
  %52 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %53 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %54 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %53, i32 0, i32 5
  store %struct.cf_rendezvous* %52, %struct.cf_rendezvous** %54, align 8
  %55 = load i32, i32* @_null_auth, align 4
  %56 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %57 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %59 = call i32 @svc_vc_rendezvous_ops(%struct.cf_rendezvous* %58)
  %60 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %61 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %60, i32 0, i32 3
  store i64 -1, i64* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %64 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 8, i32* %12, align 4
  %65 = load i32, i32* %5, align 4
  %66 = bitcast %struct.sockaddr_storage* %11 to i8*
  %67 = bitcast i8* %66 to %struct.sockaddr*
  %68 = call i64 @_getsockname(i32 %65, %struct.sockaddr* %67, i32* %12)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %109

72:                                               ; preds = %51
  %73 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %76 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %79 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i64 %74, i64* %80, align 8
  %81 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @mem_alloc(i64 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %86 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  %88 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %89 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %72
  %94 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %109

95:                                               ; preds = %72
  %96 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %97 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @memcpy(i32* %99, %struct.sockaddr_storage* %11, i64 %101)
  %103 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %104 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 8, i32* %105, align 4
  %106 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %107 = call i32 @xprt_register(%struct.cf_rendezvous* %106)
  %108 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  store %struct.cf_rendezvous* %108, %struct.cf_rendezvous** %4, align 8
  br label %122

109:                                              ; preds = %93, %70, %49, %22
  %110 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %111 = icmp ne %struct.cf_rendezvous* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %114 = call i32 @mem_free(%struct.cf_rendezvous* %113, i32 80)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %117 = icmp ne %struct.cf_rendezvous* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %9, align 8
  %120 = call i32 @mem_free(%struct.cf_rendezvous* %119, i32 80)
  br label %121

121:                                              ; preds = %118, %115
  store %struct.cf_rendezvous* null, %struct.cf_rendezvous** %4, align 8
  br label %122

122:                                              ; preds = %121, %95, %16
  %123 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %4, align 8
  ret %struct.cf_rendezvous* %123
}

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i8* @mem_alloc(i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @__rpc_get_t_size(i32, i32, i32) #1

declare dso_local %struct.cf_rendezvous* @svc_xprt_alloc(...) #1

declare dso_local i32 @svc_vc_rendezvous_ops(%struct.cf_rendezvous*) #1

declare dso_local i64 @_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i64) #1

declare dso_local i32 @xprt_register(%struct.cf_rendezvous*) #1

declare dso_local i32 @mem_free(%struct.cf_rendezvous*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
