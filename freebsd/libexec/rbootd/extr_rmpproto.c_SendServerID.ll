; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendServerID.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendServerID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.rmp_packet }
%struct.rmp_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32, i32 }

@RMP_BOOT_REPL = common dso_local global i32 0, align 4
@RMP_E_OKAY = common dso_local global i32 0, align 4
@RMP_VERSION = common dso_local global i32 0, align 4
@MyHost = common dso_local global i8* null, align 8
@RMP_HOSTLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendServerID(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.rmp_packet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store %struct.rmp_packet* %8, %struct.rmp_packet** %3, align 8
  %9 = load i32, i32* @RMP_BOOT_REPL, align 4
  %10 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %11 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @RMP_E_OKAY, align 4
  %14 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %15 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  store i32 %13, i32* %16, align 4
  %17 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %18 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ZEROWORD(i32 %20)
  %22 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %23 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @RMP_VERSION, align 4
  %26 = call i32 @htons(i32 %25)
  %27 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %28 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %31 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64* %32, i64** %6, align 8
  %33 = load i8*, i8** @MyHost, align 8
  store i8* %33, i8** %4, align 8
  %34 = load %struct.rmp_packet*, %struct.rmp_packet** %3, align 8
  %35 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %5, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %61, %1
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RMP_HOSTLEN, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  br label %65

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %56, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %55
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %39

65:                                               ; preds = %54, %39
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @RMPBOOTSIZE(i64 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = call i32 @SendPacket(%struct.TYPE_6__* %71)
  ret i32 %72
}

declare dso_local i32 @ZEROWORD(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @RMPBOOTSIZE(i64) #1

declare dso_local i32 @SendPacket(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
