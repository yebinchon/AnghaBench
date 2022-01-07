; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_dist_sak_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_dist_sak_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_dist_sak_body = type { i64, i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Distributed SAK parameter set\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\09Distributed AN........: %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\09Confidentiality Offset: %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09Body Length...........: %zu\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\09Key Number............: %d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\09AES Key Wrap of SAK...:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802_1x_mka_dist_sak_body*)* @ieee802_1x_mka_dump_dist_sak_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_mka_dump_dist_sak_body(%struct.ieee802_1x_mka_dist_sak_body* %0) #0 {
  %2 = alloca %struct.ieee802_1x_mka_dist_sak_body*, align 8
  %3 = alloca i64, align 8
  store %struct.ieee802_1x_mka_dist_sak_body* %0, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %4 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %5 = icmp eq %struct.ieee802_1x_mka_dist_sak_body* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %40

7:                                                ; preds = %1
  %8 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %9 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_dist_sak_body* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %14 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  br label %40

28:                                               ; preds = %7
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %31 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be_to_host32(i32 %32)
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %2, align 8
  %37 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpa_hexdump(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 24)
  br label %40

40:                                               ; preds = %28, %27, %6
  ret void
}

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_dist_sak_body*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @be_to_host32(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
