; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_check_workarounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_check_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"hs20-osu-client.workarounds\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Workarounds enabled: 0x%lx\00", align 1
@WORKAROUND_OCSP_OPTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*)* @check_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_workarounds(%struct.hs20_osu_client* %0) #0 {
  %2 = alloca %struct.hs20_osu_client*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32* @fopen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @fgets(i8* %11, i32 100, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %17 = call i64 @strtoul(i8* %16, i32* null, i32 16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fclose(i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %2, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %2, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @WORKAROUND_OCSP_OPTIONAL, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %2, align 8
  %39 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @http_ocsp_set(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %37, %23
  br label %43

43:                                               ; preds = %9, %42, %18
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @http_ocsp_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
