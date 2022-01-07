; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_rdynamic_connect_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_rdynamic_connect_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_4__ = type { %struct.channel_connect, i32, i32, i32 }
%struct.channel_connect = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SSH_CHANNEL_RDYNAMIC_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.TYPE_4__*)* @rdynamic_connect_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdynamic_connect_finish(%struct.ssh* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.channel_connect, align 4
  %6 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @memset(%struct.channel_connect* %5, i32 0, i32 4)
  %8 = load %struct.ssh*, %struct.ssh** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @connect_to_helper(%struct.ssh* %8, i32 %11, i32 %14, i32 %15, i32* null, i32* null, %struct.channel_connect* %5, i32* null, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @channel_connect_ctx_free(%struct.channel_connect* %5)
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @SSH_CHANNEL_RDYNAMIC_FINISH, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = bitcast %struct.channel_connect* %26 to i8*
  %28 = bitcast %struct.channel_connect* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.ssh*, %struct.ssh** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @channel_register_fds(%struct.ssh* %29, %struct.TYPE_4__* %30, i32 %31, i32 %32, i32 -1, i32 0, i32 1, i32 0)
  br label %34

34:                                               ; preds = %21, %19
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.channel_connect*, i32, i32) #1

declare dso_local i32 @connect_to_helper(%struct.ssh*, i32, i32, i32, i32*, i32*, %struct.channel_connect*, i32*, i32*) #1

declare dso_local i32 @channel_connect_ctx_free(%struct.channel_connect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @channel_register_fds(%struct.ssh*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
