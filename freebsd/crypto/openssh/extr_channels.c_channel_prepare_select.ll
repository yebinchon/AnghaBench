; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_prepare_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_prepare_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFDBITS = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"channel_prepare_select: max_fd (%d) is too large\00", align 1
@CHAN_PRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_prepare_select(%struct.ssh* %0, i32** %1, i32** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.ssh*, %struct.ssh** %7, align 8
  %17 = call i32 @channel_before_prepare_select(%struct.ssh* %16)
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ssh*, %struct.ssh** %7, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MAXIMUM(i32 %19, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @NFDBITS, align 4
  %29 = call i32 @howmany(i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %6
  %33 = load i32, i32* @SIZE_MAX, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %32, %6
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %49, %41
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32* @xreallocarray(i32* %56, i32 %57, i32 4)
  %59 = load i32**, i32*** %8, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32* @xreallocarray(i32* %61, i32 %62, i32 4)
  %64 = load i32**, i32*** %9, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %54, %49
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32**, i32*** %8, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @memset(i32* %71, i32 0, i32 %72)
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @memset(i32* %75, i32 0, i32 %76)
  %78 = load %struct.ssh*, %struct.ssh** %7, align 8
  %79 = call i32 @ssh_packet_is_rekeying(%struct.ssh* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %67
  %82 = load %struct.ssh*, %struct.ssh** %7, align 8
  %83 = load i32, i32* @CHAN_PRE, align 4
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i32**, i32*** %9, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @channel_handler(%struct.ssh* %82, i32 %83, i32* %85, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %81, %67
  ret void
}

declare dso_local i32 @channel_before_prepare_select(%struct.ssh*) #1

declare dso_local i32 @MAXIMUM(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32* @xreallocarray(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ssh_packet_is_rekeying(%struct.ssh*) #1

declare dso_local i32 @channel_handler(%struct.ssh*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
