; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_init.c_do_presets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_init.c_do_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64 }

@FAILURE = common dso_local global i32 0, align 4
@NO_EQUIVALENT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@OPTPROC_PRESETTING = common dso_local global i32 0, align 4
@ENV_ALL = common dso_local global i32 0, align 4
@ENV_IMM = common dso_local global i32 0, align 4
@ENV_NON_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @do_presets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_presets(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = call i32 @immediate_opts(%struct.TYPE_8__* %5)
  %7 = call i32 @SUCCESSFUL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @FAILURE, align 4
  store i32 %10, i32* %2, align 4
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NO_EQUIVALENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @DISABLED_OPT(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @SUCCESS, align 4
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %18, %11
  %41 = load i32, i32* @OPTPROC_PRESETTING, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = load i32, i32* @ENV_ALL, align 4
  %53 = call i32 @env_presets(%struct.TYPE_8__* %51, i32 %52)
  br label %71

54:                                               ; preds = %40
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i32, i32* @ENV_IMM, align 4
  %57 = call i32 @env_presets(%struct.TYPE_8__* %55, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @DISABLED_OPT(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = call i32 @intern_file_load(%struct.TYPE_8__* %65)
  br label %67

67:                                               ; preds = %64, %60, %54
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = load i32, i32* @ENV_NON_IMM, align 4
  %70 = call i32 @env_presets(%struct.TYPE_8__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %50
  %72 = load i32, i32* @OPTPROC_PRESETTING, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @SUCCESS, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %37, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @SUCCESSFUL(i32) #1

declare dso_local i32 @immediate_opts(%struct.TYPE_8__*) #1

declare dso_local i64 @DISABLED_OPT(i32*) #1

declare dso_local i32 @env_presets(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @intern_file_load(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
