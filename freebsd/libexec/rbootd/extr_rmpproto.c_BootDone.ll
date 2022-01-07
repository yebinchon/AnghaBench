; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_BootDone.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_BootDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.rmp_packet }
%struct.rmp_packet = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BootDone: no existing connection (%s)\00", align 1
@RMP_BOOT_REPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"BootDone: bad session id (%s)\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: boot complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BootDone(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.rmp_packet*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call %struct.TYPE_13__* @FindConn(%struct.TYPE_13__* %6)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %4, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i32 @EnetStr(%struct.TYPE_13__* %11)
  %13 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.rmp_packet* %16, %struct.rmp_packet** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ntohs(i32 %21)
  %23 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %24 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RMP_BOOT_REPL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %30 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  br label %40

34:                                               ; preds = %14
  %35 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %36 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ntohs(i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i64 [ %33, %28 ], [ %39, %34 ]
  %42 = icmp ne i64 %22, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = call i32 @EnetStr(%struct.TYPE_13__* %45)
  %47 = call i32 @syslog(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %2, align 4
  br label %55

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @RemoveConn(%struct.TYPE_13__* %49)
  %51 = load i32, i32* @LOG_INFO, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @EnetStr(%struct.TYPE_13__* %52)
  %54 = call i32 @syslog(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %43, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_13__* @FindConn(%struct.TYPE_13__*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @EnetStr(%struct.TYPE_13__*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @RemoveConn(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
