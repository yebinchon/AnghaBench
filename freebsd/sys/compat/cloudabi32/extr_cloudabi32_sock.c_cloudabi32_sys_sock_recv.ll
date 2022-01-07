; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_sock.c_cloudabi32_sys_sock_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_sock.c_cloudabi32_sys_sock_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi32_sys_sock_recv_args = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.iovec = type { i32, i8* }

@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_SOCKET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi32_sys_sock_recv(%struct.thread* %0, %struct.cloudabi32_sys_sock_recv_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi32_sys_sock_recv_args*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi32_sys_sock_recv_args* %1, %struct.cloudabi32_sys_sock_recv_args** %5, align 8
  %15 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.cloudabi32_sys_sock_recv_args*, %struct.cloudabi32_sys_sock_recv_args** %5, align 8
  %17 = getelementptr inbounds %struct.cloudabi32_sys_sock_recv_args, %struct.cloudabi32_sys_sock_recv_args* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32 @copyin(%struct.TYPE_8__* %18, %struct.TYPE_8__* %6, i32 32)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %3, align 4
  br label %108

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UIO_MAXIOV, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @M_SOCKET, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call %struct.iovec* @mallocarray(i64 %33, i32 16, i32 %34, i32 %35)
  store %struct.iovec* %36, %struct.iovec** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @TO_PTR(i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %72, %31
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = call i32 @copyin(%struct.TYPE_8__* %49, %struct.TYPE_8__* %8, i32 32)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.iovec*, %struct.iovec** %9, align 8
  %55 = load i32, i32* @M_SOCKET, align 4
  %56 = call i32 @free(%struct.iovec* %54, i32 %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %3, align 4
  br label %108

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @TO_PTR(i32 %60)
  %62 = load %struct.iovec*, %struct.iovec** %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 %63
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iovec*, %struct.iovec** %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %11, align 8
  br label %41

75:                                               ; preds = %41
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.cloudabi32_sys_sock_recv_args*, %struct.cloudabi32_sys_sock_recv_args** %5, align 8
  %78 = getelementptr inbounds %struct.cloudabi32_sys_sock_recv_args, %struct.cloudabi32_sys_sock_recv_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iovec*, %struct.iovec** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @TO_PTR(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %91 = call i32 @cloudabi_sock_recv(%struct.thread* %76, i32 %79, %struct.iovec* %80, i64 %82, i8* %85, i32 %87, i32 %89, i64* %12, i64* %13, i32* %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.iovec*, %struct.iovec** %9, align 8
  %93 = load i32, i32* @M_SOCKET, align 4
  %94 = call i32 @free(%struct.iovec* %92, i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %3, align 4
  br label %108

99:                                               ; preds = %75
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = load %struct.cloudabi32_sys_sock_recv_args*, %struct.cloudabi32_sys_sock_recv_args** %5, align 8
  %105 = getelementptr inbounds %struct.cloudabi32_sys_sock_recv_args, %struct.cloudabi32_sys_sock_recv_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @copyout(%struct.TYPE_7__* %7, i32 %106, i32 24)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %99, %97, %53, %29, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @copyin(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

declare dso_local %struct.iovec* @mallocarray(i64, i32, i32, i32) #2

declare dso_local i8* @TO_PTR(i32) #2

declare dso_local i32 @free(%struct.iovec*, i32) #2

declare dso_local i32 @cloudabi_sock_recv(%struct.thread*, i32, %struct.iovec*, i64, i8*, i32, i32, i64*, i64*, i32*) #2

declare dso_local i32 @copyout(%struct.TYPE_7__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
