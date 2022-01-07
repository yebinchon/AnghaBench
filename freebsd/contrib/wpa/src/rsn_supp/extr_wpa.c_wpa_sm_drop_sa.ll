; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_drop_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_drop_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32*, i64, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPA: Clear old PMK and PTK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_drop_sa(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %3, i32 0, i32 16
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_dbg(i32 %7, i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %10, i32 0, i32 15
  store i64 0, i64* %11, align 8
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  %14 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 12
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @os_memset(i32* %18, i32 0, i32 8)
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 11
  %22 = call i32 @os_memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 10
  %25 = call i32 @os_memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 9
  %28 = call i32 @os_memset(i32* %27, i32 0, i32 4)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 8
  %31 = call i32 @os_memset(i32* %30, i32 0, i32 4)
  ret void
}

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
