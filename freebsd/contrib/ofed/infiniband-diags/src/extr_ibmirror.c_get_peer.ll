; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i64 }

@srcport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to resolve self portid\00", align 1
@buf = common dso_local global i32 0, align 4
@IB_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"get peer portinfo failed - unable to configure lossy\0A\00", align 1
@IB_PORT_LID_F = common dso_local global i32 0, align 4
@IB_PORT_LOCAL_PORT_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_peer(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32 @memcpy(%struct.TYPE_9__* %10, %struct.TYPE_9__* %14, i32 48)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @srcport, align 4
  %24 = call i64 @ib_resolve_self_via(%struct.TYPE_9__* %9, i32* %11, i32 0, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32 65535, i32* %34, align 8
  %35 = load i32, i32* @buf, align 4
  %36 = load i32, i32* @IB_ATTR_PORT_INFO, align 4
  %37 = load i32, i32* @srcport, align 4
  %38 = call i32 @smp_query_via(i32 %35, %struct.TYPE_9__* %10, i32 %36, i32 0, i32 0, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = call i32 @IBEXIT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* @buf, align 4
  %44 = load i32, i32* @IB_PORT_LID_F, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @mad_decode_field(i32 %43, i32 %44, i32* %45)
  %47 = load i32, i32* @buf, align 4
  %48 = load i32, i32* @IB_PORT_LOCAL_PORT_F, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @mad_decode_field(i32 %47, i32 %48, i32* %49)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

declare dso_local i64 @ib_resolve_self_via(%struct.TYPE_9__*, i32*, i32, i32) #2

declare dso_local i32 @IBEXIT(i8*) #2

declare dso_local i32 @smp_query_via(i32, %struct.TYPE_9__*, i32, i32, i32, i32) #2

declare dso_local i32 @mad_decode_field(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
