; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_to_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.channel_connect, i32, i32 }
%struct.channel_connect = type { i32 }
%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { %struct.permission_set }
%struct.permission_set = type { i64, i64, i64, %struct.permission*, %struct.permission* }
%struct.permission = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"Received request to connect to host %.100s port %d, but the request was denied.\00", align 1
@SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SSH_CHANNEL_CONNECTING = common dso_local global i32 0, align 4
@CHAN_TCP_WINDOW_DEFAULT = common dso_local global i32 0, align 4
@CHAN_TCP_PACKET_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @channel_connect_to_port(%struct.ssh* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32* %5, i8** %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.ssh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.ssh_channels*, align 8
  %17 = alloca %struct.permission_set*, align 8
  %18 = alloca %struct.channel_connect, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.permission*, align 8
  store %struct.ssh* %0, %struct.ssh** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %25 = load %struct.ssh*, %struct.ssh** %9, align 8
  %26 = getelementptr inbounds %struct.ssh, %struct.ssh* %25, i32 0, i32 0
  %27 = load %struct.ssh_channels*, %struct.ssh_channels** %26, align 8
  store %struct.ssh_channels* %27, %struct.ssh_channels** %16, align 8
  %28 = load %struct.ssh_channels*, %struct.ssh_channels** %16, align 8
  %29 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %28, i32 0, i32 0
  store %struct.permission_set* %29, %struct.permission_set** %17, align 8
  store i64 1, i64* %22, align 8
  %30 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %31 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %21, align 8
  %33 = load i64, i64* %21, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %7
  store i64 0, i64* %20, align 8
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i64, i64* %20, align 8
  %38 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %39 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %44 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %43, i32 0, i32 4
  %45 = load %struct.permission*, %struct.permission** %44, align 8
  %46 = load i64, i64* %20, align 8
  %47 = getelementptr inbounds %struct.permission, %struct.permission* %45, i64 %46
  store %struct.permission* %47, %struct.permission** %24, align 8
  %48 = load %struct.permission*, %struct.permission** %24, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @open_match(%struct.permission* %48, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i64 1, i64* %21, align 8
  br label %58

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %20, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %20, align 8
  br label %36

58:                                               ; preds = %53, %36
  br label %59

59:                                               ; preds = %58, %7
  %60 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %61 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  store i64 0, i64* %22, align 8
  store i64 0, i64* %20, align 8
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i64, i64* %20, align 8
  %67 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %68 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.permission_set*, %struct.permission_set** %17, align 8
  %73 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %72, i32 0, i32 3
  %74 = load %struct.permission*, %struct.permission** %73, align 8
  %75 = load i64, i64* %20, align 8
  %76 = getelementptr inbounds %struct.permission, %struct.permission* %74, i64 %75
  store %struct.permission* %76, %struct.permission** %24, align 8
  %77 = load %struct.permission*, %struct.permission** %24, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @open_match(%struct.permission* %77, i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i64 1, i64* %22, align 8
  br label %87

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %20, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %65

87:                                               ; preds = %82, %65
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i64, i64* %21, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i64, i64* %22, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @logit(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED, align 4
  %102 = load i32*, i32** %14, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %141

104:                                              ; preds = %91
  %105 = call i32 @memset(%struct.channel_connect* %18, i32 0, i32 4)
  %106 = load %struct.ssh*, %struct.ssh** %9, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @SOCK_STREAM, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i8**, i8*** %15, align 8
  %114 = call i32 @connect_to_helper(%struct.ssh* %106, i8* %107, i32 %108, i32 %109, i8* %110, i8* %111, %struct.channel_connect* %18, i32* %112, i8** %113)
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %23, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %104
  %118 = call i32 @channel_connect_ctx_free(%struct.channel_connect* %18)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %141

119:                                              ; preds = %104
  %120 = load %struct.ssh*, %struct.ssh** %9, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* @SSH_CHANNEL_CONNECTING, align 4
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* @CHAN_TCP_WINDOW_DEFAULT, align 4
  %126 = load i32, i32* @CHAN_TCP_PACKET_DEFAULT, align 4
  %127 = load i8*, i8** %13, align 8
  %128 = call %struct.TYPE_4__* @channel_new(%struct.ssh* %120, i8* %121, i32 %122, i32 %123, i32 %124, i32 -1, i32 %125, i32 %126, i32 0, i8* %127, i32 1)
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %19, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @xstrdup(i8* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = bitcast %struct.channel_connect* %137 to i8*
  %139 = bitcast %struct.channel_connect* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 4, i1 false)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %140, %struct.TYPE_4__** %8, align 8
  br label %141

141:                                              ; preds = %119, %117, %103
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %142
}

declare dso_local i64 @open_match(%struct.permission*, i8*, i32) #1

declare dso_local i32 @logit(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.channel_connect*, i32, i32) #1

declare dso_local i32 @connect_to_helper(%struct.ssh*, i8*, i32, i32, i8*, i8*, %struct.channel_connect*, i32*, i8**) #1

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
