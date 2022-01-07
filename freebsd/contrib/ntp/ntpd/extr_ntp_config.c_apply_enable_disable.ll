; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_apply_enable_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_apply_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"can not apply enable/disable token %d, unknown\00", align 1
@PROTO_AUTHENTICATE = common dso_local global i32 0, align 4
@PROTO_BROADCLIENT = common dso_local global i32 0, align 4
@PROTO_CAL = common dso_local global i32 0, align 4
@PROTO_KERNEL = common dso_local global i32 0, align 4
@PROTO_MONITOR = common dso_local global i32 0, align 4
@PROTO_MODE7 = common dso_local global i32 0, align 4
@PROTO_NTP = common dso_local global i32 0, align 4
@PROTO_PCEDIGEST = common dso_local global i32 0, align 4
@PROTO_FILEGEN = common dso_local global i32 0, align 4
@PROTO_UECRYPTO = common dso_local global i32 0, align 4
@PROTO_UECRYPTONAK = common dso_local global i32 0, align 4
@PROTO_UEDIGEST = common dso_local global i32 0, align 4
@bc_list = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @apply_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_enable_disable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_8__* @HEAD_PFIFO(i32* %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  br label %9

9:                                                ; preds = %71, %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %18 [
    i32 140, label %22
    i32 138, label %26
    i32 137, label %30
    i32 136, label %34
    i32 134, label %38
    i32 135, label %42
    i32 133, label %46
    i32 132, label %50
    i32 131, label %54
    i32 130, label %58
    i32 129, label %62
    i32 128, label %66
  ]

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @msyslog(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %70

22:                                               ; preds = %12
  %23 = load i32, i32* @PROTO_AUTHENTICATE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @proto_config(i32 %23, i32 %24, i32 0, i32* null)
  br label %70

26:                                               ; preds = %12
  %27 = load i32, i32* @PROTO_BROADCLIENT, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @proto_config(i32 %27, i32 %28, i32 0, i32* null)
  br label %70

30:                                               ; preds = %12
  %31 = load i32, i32* @PROTO_CAL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @proto_config(i32 %31, i32 %32, i32 0, i32* null)
  br label %70

34:                                               ; preds = %12
  %35 = load i32, i32* @PROTO_KERNEL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @proto_config(i32 %35, i32 %36, i32 0, i32* null)
  br label %70

38:                                               ; preds = %12
  %39 = load i32, i32* @PROTO_MONITOR, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @proto_config(i32 %39, i32 %40, i32 0, i32* null)
  br label %70

42:                                               ; preds = %12
  %43 = load i32, i32* @PROTO_MODE7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @proto_config(i32 %43, i32 %44, i32 0, i32* null)
  br label %70

46:                                               ; preds = %12
  %47 = load i32, i32* @PROTO_NTP, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @proto_config(i32 %47, i32 %48, i32 0, i32* null)
  br label %70

50:                                               ; preds = %12
  %51 = load i32, i32* @PROTO_PCEDIGEST, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @proto_config(i32 %51, i32 %52, i32 0, i32* null)
  br label %70

54:                                               ; preds = %12
  %55 = load i32, i32* @PROTO_FILEGEN, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @proto_config(i32 %55, i32 %56, i32 0, i32* null)
  br label %70

58:                                               ; preds = %12
  %59 = load i32, i32* @PROTO_UECRYPTO, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @proto_config(i32 %59, i32 %60, i32 0, i32* null)
  br label %70

62:                                               ; preds = %12
  %63 = load i32, i32* @PROTO_UECRYPTONAK, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @proto_config(i32 %63, i32 %64, i32 0, i32* null)
  br label %70

66:                                               ; preds = %12
  %67 = load i32, i32* @PROTO_UEDIGEST, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @proto_config(i32 %67, i32 %68, i32 0, i32* null)
  br label %70

70:                                               ; preds = %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %5, align 8
  br label %9

75:                                               ; preds = %9
  ret void
}

declare dso_local %struct.TYPE_8__* @HEAD_PFIFO(i32*) #1

declare dso_local i32 @msyslog(i32, i8*, i32) #1

declare dso_local i32 @proto_config(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
