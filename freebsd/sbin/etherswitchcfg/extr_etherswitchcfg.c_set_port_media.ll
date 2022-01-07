; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IFMEDIAREQ_NULISTENTRIES = common dso_local global i32 0, align 4
@IOETHERSWITCHGETPORT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETPORT)\00", align 1
@IFM_IMASK = common dso_local global i32 0, align 4
@IOETHERSWITCHSETPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHSETPORT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @set_port_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_media(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %77

20:                                               ; preds = %3
  %21 = call i32 @bzero(%struct.TYPE_8__* %8, i32 24)
  %22 = load %struct.cfg*, %struct.cfg** %5, align 8
  %23 = getelementptr inbounds %struct.cfg, %struct.cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32* %16, i32** %27, align 8
  %28 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cfg*, %struct.cfg** %5, align 8
  %32 = getelementptr inbounds %struct.cfg, %struct.cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IOETHERSWITCHGETPORT, align 4
  %35 = call i64 @ioctl(i32 %33, i32 %34, %struct.TYPE_8__* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EX_OSERR, align 4
  %39 = call i32 @err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %20
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %77

46:                                               ; preds = %40
  %47 = getelementptr inbounds i32, i32* %16, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = call i32 @IFM_TYPE(i32 %48)
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @get_media_subtype(i32 %49, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFM_IMASK, align 4
  %58 = and i32 %56, %57
  %59 = getelementptr inbounds i32, i32* %16, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = call i32 @IFM_TYPE(i32 %60)
  %62 = or i32 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cfg*, %struct.cfg** %5, align 8
  %68 = getelementptr inbounds %struct.cfg, %struct.cfg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IOETHERSWITCHSETPORT, align 4
  %71 = call i64 @ioctl(i32 %69, i32 %70, %struct.TYPE_8__* %8)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %46
  %74 = load i32, i32* @EX_OSERR, align 4
  %75 = call i32 @err(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %46
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %45, %19
  %78 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @get_media_subtype(i32, i8*) #2

declare dso_local i32 @IFM_TYPE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
