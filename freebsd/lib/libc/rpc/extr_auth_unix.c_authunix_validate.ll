; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.opaque_auth = type { i64, i32, i32 }
%struct.audata = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 }

@AUTH_SHORT = common dso_local global i64 0, align 8
@XDR_DECODE = common dso_local global i32 0, align 4
@XDR_FREE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.opaque_auth*)* @authunix_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authunix_validate(%struct.TYPE_10__* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.opaque_auth*, align 8
  %5 = alloca %struct.audata*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.opaque_auth*, %struct.opaque_auth** %4, align 8
  %12 = icmp ne %struct.opaque_auth* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.opaque_auth*, %struct.opaque_auth** %4, align 8
  %16 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AUTH_SHORT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_10__* %21)
  store %struct.audata* %22, %struct.audata** %5, align 8
  %23 = load %struct.opaque_auth*, %struct.opaque_auth** %4, align 8
  %24 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.opaque_auth*, %struct.opaque_auth** %4, align 8
  %27 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XDR_DECODE, align 4
  %30 = call i32 @xdrmem_create(%struct.TYPE_9__* %6, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.audata*, %struct.audata** %5, align 8
  %32 = getelementptr inbounds %struct.audata, %struct.audata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %20
  %37 = load %struct.audata*, %struct.audata** %5, align 8
  %38 = getelementptr inbounds %struct.audata, %struct.audata* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.audata*, %struct.audata** %5, align 8
  %42 = getelementptr inbounds %struct.audata, %struct.audata* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mem_free(i32* %40, i32 %44)
  %46 = load %struct.audata*, %struct.audata** %5, align 8
  %47 = getelementptr inbounds %struct.audata, %struct.audata* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %36, %20
  %50 = load %struct.audata*, %struct.audata** %5, align 8
  %51 = getelementptr inbounds %struct.audata, %struct.audata* %50, i32 0, i32 1
  %52 = call i64 @xdr_opaque_auth(%struct.TYPE_9__* %6, %struct.TYPE_11__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.audata*, %struct.audata** %5, align 8
  %58 = getelementptr inbounds %struct.audata, %struct.audata* %57, i32 0, i32 1
  %59 = bitcast %struct.TYPE_11__* %56 to i8*
  %60 = bitcast %struct.TYPE_11__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %76

61:                                               ; preds = %49
  %62 = load i32, i32* @XDR_FREE, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.audata*, %struct.audata** %5, align 8
  %65 = getelementptr inbounds %struct.audata, %struct.audata* %64, i32 0, i32 1
  %66 = call i64 @xdr_opaque_auth(%struct.TYPE_9__* %6, %struct.TYPE_11__* %65)
  %67 = load %struct.audata*, %struct.audata** %5, align 8
  %68 = getelementptr inbounds %struct.audata, %struct.audata* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.audata*, %struct.audata** %5, align 8
  %73 = getelementptr inbounds %struct.audata, %struct.audata* %72, i32 0, i32 0
  %74 = bitcast %struct.TYPE_11__* %71 to i8*
  %75 = bitcast %struct.TYPE_11__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %61, %54
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @marshal_new_auth(%struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %76, %2
  %80 = load i32, i32* @TRUE, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_10__*) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @mem_free(i32*, i32) #1

declare dso_local i64 @xdr_opaque_auth(%struct.TYPE_9__*, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @marshal_new_auth(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
