; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_sock.c_cloudabi64_sys_sock_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_sock.c_cloudabi64_sys_sock_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi64_sys_sock_send_args = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.iovec = type { i32, i8* }

@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_SOCKET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi64_sys_sock_send(%struct.thread* %0, %struct.cloudabi64_sys_sock_send_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi64_sys_sock_send_args*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi64_sys_sock_send_args* %1, %struct.cloudabi64_sys_sock_send_args** %5, align 8
  %14 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %5, align 8
  %16 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 @copyin(%struct.TYPE_8__* %17, %struct.TYPE_8__* %6, i32 32)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %3, align 4
  br label %102

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIO_MAXIOV, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @M_SOCKET, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call %struct.iovec* @mallocarray(i64 %32, i32 16, i32 %33, i32 %34)
  store %struct.iovec* %35, %struct.iovec** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @TO_PTR(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %10, align 8
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %71, %30
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = call i32 @copyin(%struct.TYPE_8__* %48, %struct.TYPE_8__* %8, i32 32)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.iovec*, %struct.iovec** %9, align 8
  %54 = load i32, i32* @M_SOCKET, align 4
  %55 = call i32 @free(%struct.iovec* %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @TO_PTR(i32 %59)
  %61 = load %struct.iovec*, %struct.iovec** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i64 %62
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.iovec*, %struct.iovec** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i64 %68
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  br label %71

71:                                               ; preds = %57
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %40

74:                                               ; preds = %40
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %5, align 8
  %77 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iovec*, %struct.iovec** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @TO_PTR(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cloudabi_sock_send(%struct.thread* %75, i32 %78, %struct.iovec* %79, i64 %81, i8* %84, i32 %86, i64* %11)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.iovec*, %struct.iovec** %9, align 8
  %89 = load i32, i32* @M_SOCKET, align 4
  %90 = call i32 @free(%struct.iovec* %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %74
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %102

95:                                               ; preds = %74
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  %98 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %5, align 8
  %99 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @copyout(%struct.TYPE_7__* %7, i32 %100, i32 8)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %93, %52, %28, %21
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @copyin(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

declare dso_local %struct.iovec* @mallocarray(i64, i32, i32, i32) #2

declare dso_local i8* @TO_PTR(i32) #2

declare dso_local i32 @free(%struct.iovec*, i32) #2

declare dso_local i32 @cloudabi_sock_send(%struct.thread*, i32, %struct.iovec*, i64, i8*, i32, i64*) #2

declare dso_local i32 @copyout(%struct.TYPE_7__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
