; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_add_acl_maclist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_add_acl_maclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_acl_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MAC list reallocation failed\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_add_acl_maclist(%struct.mac_acl_entry** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac_acl_entry**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mac_acl_entry*, align 8
  store %struct.mac_acl_entry** %0, %struct.mac_acl_entry*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %12 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = call %struct.mac_acl_entry* @os_realloc_array(%struct.mac_acl_entry* %12, i32 %15, i32 12)
  store %struct.mac_acl_entry* %16, %struct.mac_acl_entry** %10, align 8
  %17 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %10, align 8
  %18 = icmp ne %struct.mac_acl_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %69

22:                                               ; preds = %4
  %23 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %10, align 8
  %24 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  store %struct.mac_acl_entry* %23, %struct.mac_acl_entry** %24, align 8
  %25 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %26 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %26, i64 %29
  %31 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @os_memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %37 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %37, i64 %40
  %42 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %41, i32 0, i32 0
  %43 = call i32 @os_memset(%struct.TYPE_2__* %42, i32 0, i32 8)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %46 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %46, i64 %49
  %51 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %44, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %59 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %59, i64 %62
  %64 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %57, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %22, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.mac_acl_entry* @os_realloc_array(%struct.mac_acl_entry*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
