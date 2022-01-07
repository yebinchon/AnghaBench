; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_connect_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_connect_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.channel_connect, i32 }
%struct.channel_connect = type { i32 }
%struct.ssh = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SSH_CHANNEL_CONNECTING = common dso_local global i32 0, align 4
@CHAN_TCP_WINDOW_DEFAULT = common dso_local global i32 0, align 4
@CHAN_TCP_PACKET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.ssh*, i8*, i32, i8*, i8*)* @connect_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @connect_to(%struct.ssh* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.channel_connect, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = call i32 @memset(%struct.channel_connect* %12, i32 0, i32 4)
  %16 = load %struct.ssh*, %struct.ssh** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @connect_to_helper(%struct.ssh* %16, i8* %17, i32 %18, i32 %19, i8* %20, i8* %21, %struct.channel_connect* %12, i32* null, i32* null)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = call i32 @channel_connect_ctx_free(%struct.channel_connect* %12)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %49

27:                                               ; preds = %5
  %28 = load %struct.ssh*, %struct.ssh** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @SSH_CHANNEL_CONNECTING, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @CHAN_TCP_WINDOW_DEFAULT, align 4
  %34 = load i32, i32* @CHAN_TCP_PACKET_DEFAULT, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call %struct.TYPE_4__* @channel_new(%struct.ssh* %28, i8* %29, i32 %30, i32 %31, i32 %32, i32 -1, i32 %33, i32 %34, i32 0, i8* %35, i32 1)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @xstrdup(i8* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = bitcast %struct.channel_connect* %45 to i8*
  %47 = bitcast %struct.channel_connect* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %6, align 8
  br label %49

49:                                               ; preds = %27, %25
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %50
}

declare dso_local i32 @memset(%struct.channel_connect*, i32, i32) #1

declare dso_local i32 @connect_to_helper(%struct.ssh*, i8*, i32, i32, i8*, i8*, %struct.channel_connect*, i32*, i32*) #1

declare dso_local i32 @channel_connect_ctx_free(%struct.channel_connect*) #1

declare dso_local %struct.TYPE_4__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
