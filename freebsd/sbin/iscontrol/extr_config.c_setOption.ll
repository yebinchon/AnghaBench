; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_config.c_setOption.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_config.c_setOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@authMethod = common dso_local global i32 0, align 4
@chapDigest = common dso_local global i32 0, align 4
@chapIName = common dso_local global i32 0, align 4
@chapSecret = common dso_local global i32 0, align 4
@dataDigest = common dso_local global i32 0, align 4
@dataPDUInOrder = common dso_local global i32 0, align 4
@dataSequenceInOrder = common dso_local global i32 0, align 4
@defaultTime2Retain = common dso_local global i32 0, align 4
@defaultTime2Wait = common dso_local global i32 0, align 4
@errorRecoveryLevel = common dso_local global i32 0, align 4
@firstBurstLength = common dso_local global i32 0, align 4
@headerDigest = common dso_local global i32 0, align 4
@immediateData = common dso_local global i32 0, align 4
@initialR2T = common dso_local global i32 0, align 4
@initiatorAlias = common dso_local global i32 0, align 4
@initiatorName = common dso_local global i32 0, align 4
@iqn = common dso_local global i32 0, align 4
@maxBurstLength = common dso_local global i32 0, align 4
@maxConnections = common dso_local global i32 0, align 4
@maxOutstandingR2T = common dso_local global i32 0, align 4
@maxRecvDataSegmentLength = common dso_local global i32 0, align 4
@maxXmitDataSegmentLength = common dso_local global i32 0, align 4
@maxluns = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@sockbufsize = common dso_local global i32 0, align 4
@tags = common dso_local global i32 0, align 4
@targetAddress = common dso_local global i32 0, align 4
@targetAlias = common dso_local global i32 0, align 4
@targetName = common dso_local global i32 0, align 4
@targetPortalGroupTag = common dso_local global i32 0, align 4
@tgtChapName = common dso_local global i32 0, align 4
@tgtChapSecret = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @setOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setOption(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %8 [
  ]

8:                                                ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
