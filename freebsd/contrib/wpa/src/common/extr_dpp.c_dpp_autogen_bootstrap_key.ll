; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_autogen_bootstrap_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_autogen_bootstrap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info*, %struct.TYPE_4__* }
%struct.dpp_bootstrap_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DPP_BOOTSTRAP_QR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DPP:K:%s;;\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"DPP: Auto-generated own bootstrapping key info: URI %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*)* @dpp_autogen_bootstrap_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_autogen_bootstrap_key(%struct.dpp_authentication* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpp_authentication*, align 8
  %4 = alloca %struct.dpp_bootstrap_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %8 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %7, i32 0, i32 0
  %9 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %8, align 8
  %10 = icmp ne %struct.dpp_bootstrap_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = call %struct.dpp_bootstrap_info* @os_zalloc(i32 8)
  store %struct.dpp_bootstrap_info* %13, %struct.dpp_bootstrap_info** %4, align 8
  %14 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %15 = icmp ne %struct.dpp_bootstrap_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %74

17:                                               ; preds = %12
  %18 = load i32, i32* @DPP_BOOTSTRAP_QR_CODE, align 4
  %19 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %20 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %22 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %23 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @dpp_keygen(%struct.dpp_bootstrap_info* %21, i32 %28, i32* null, i32 0)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %69

33:                                               ; preds = %17
  store i64 4, i64* %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @os_strlen(i8* %34)
  %36 = add nsw i64 4, %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = call i32 @os_malloc(i64 %40)
  %42 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %43 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %45 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %69

49:                                               ; preds = %33
  %50 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %51 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @os_snprintf(i32 %52, i64 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %59 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %63 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %64 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %63, i32 0, i32 0
  store %struct.dpp_bootstrap_info* %62, %struct.dpp_bootstrap_info** %64, align 8
  %65 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %66 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %65, i32 0, i32 1
  store %struct.dpp_bootstrap_info* %62, %struct.dpp_bootstrap_info** %66, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @os_free(i8* %67)
  store i32 0, i32* %2, align 4
  br label %74

69:                                               ; preds = %48, %32
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @os_free(i8* %70)
  %72 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %73 = call i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info* %72)
  store i32 -1, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %49, %16, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dpp_bootstrap_info* @os_zalloc(i32) #1

declare dso_local i8* @dpp_keygen(%struct.dpp_bootstrap_info*, i32, i32*, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
