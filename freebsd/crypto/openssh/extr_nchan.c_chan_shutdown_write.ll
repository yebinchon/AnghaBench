; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_shutdown_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_shutdown_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@SSH_CHANNEL_LARVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"channel %d: close_write\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"channel %d: chan_shutdown_write: shutdown() failed for fd %d: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"channel %d: chan_shutdown_write: close() failed for fd %d: %.100s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_3__*)* @chan_shutdown_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_shutdown_write(%struct.ssh* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sshbuf_reset(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SSH_CHANNEL_LARVAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SHUT_WR, align 4
  %29 = call i64 @shutdown(i32 %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  br label %59

42:                                               ; preds = %15
  %43 = load %struct.ssh*, %struct.ssh** %3, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = call i64 @channel_close_fd(%struct.ssh* %43, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @logit(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %42
  br label %59

59:                                               ; preds = %14, %58, %41
  ret void
}

declare dso_local i32 @sshbuf_reset(i32) #1

declare dso_local i32 @debug2(i8*, i32, ...) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @channel_close_fd(%struct.ssh*, i32*) #1

declare dso_local i32 @logit(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
