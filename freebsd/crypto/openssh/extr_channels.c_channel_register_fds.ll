; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_register_fds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_register_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"channel %d: rfd %d isatty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32)* @channel_register_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_register_fds(%struct.ssh* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ssh*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ssh_channels*, align 8
  store %struct.ssh* %0, %struct.ssh** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.ssh*, %struct.ssh** %9, align 8
  %19 = getelementptr inbounds %struct.ssh, %struct.ssh* %18, i32 0, i32 0
  %20 = load %struct.ssh_channels*, %struct.ssh_channels** %19, align 8
  store %struct.ssh_channels* %20, %struct.ssh_channels** %17, align 8
  %21 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %22 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @MAXIMUM(i8* %23, i32 %24)
  %26 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %27 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %29 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i8* @MAXIMUM(i8* %30, i32 %31)
  %33 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %34 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %36 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i8* @MAXIMUM(i8* %37, i32 %38)
  %40 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  %41 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @F_SETFD, align 4
  %47 = load i32, i32* @FD_CLOEXEC, align 4
  %48 = call i32 @fcntl(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %8
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @F_SETFD, align 4
  %59 = load i32, i32* @FD_CLOEXEC, align 4
  %60 = call i32 @fcntl(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %52, %49
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @F_SETFD, align 4
  %75 = load i32, i32* @FD_CLOEXEC, align 4
  %76 = call i32 @fcntl(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %68, %64, %61
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ -1, %89 ]
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = icmp ne i32 %100, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %90
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %90
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @set_nonblock(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @set_nonblock(i32 %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @set_nonblock(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %112
  ret void
}

declare dso_local i8* @MAXIMUM(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @debug2(i8*, i32, i32) #1

declare dso_local i32 @set_nonblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
