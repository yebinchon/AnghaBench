; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_radius_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_radius_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_radius_server = type { i32, i32, i32 }

@hostapd_config_read_radius_addr.server_index = internal global i32 1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_radius_server**, i32*, i8*, i32, %struct.hostapd_radius_server**)* @hostapd_config_read_radius_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_read_radius_addr(%struct.hostapd_radius_server** %0, i32* %1, i8* %2, i32 %3, %struct.hostapd_radius_server** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_radius_server**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostapd_radius_server**, align 8
  %12 = alloca %struct.hostapd_radius_server*, align 8
  %13 = alloca i32, align 4
  store %struct.hostapd_radius_server** %0, %struct.hostapd_radius_server*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.hostapd_radius_server** %4, %struct.hostapd_radius_server*** %11, align 8
  %14 = load %struct.hostapd_radius_server**, %struct.hostapd_radius_server*** %7, align 8
  %15 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = call %struct.hostapd_radius_server* @os_realloc_array(%struct.hostapd_radius_server* %15, i32 %18, i32 12)
  store %struct.hostapd_radius_server* %19, %struct.hostapd_radius_server** %12, align 8
  %20 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %21 = icmp eq %struct.hostapd_radius_server* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %50

23:                                               ; preds = %5
  %24 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %25 = load %struct.hostapd_radius_server**, %struct.hostapd_radius_server*** %7, align 8
  store %struct.hostapd_radius_server* %24, %struct.hostapd_radius_server** %25, align 8
  %26 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %26, i64 %29
  store %struct.hostapd_radius_server* %30, %struct.hostapd_radius_server** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %35 = load %struct.hostapd_radius_server**, %struct.hostapd_radius_server*** %11, align 8
  store %struct.hostapd_radius_server* %34, %struct.hostapd_radius_server** %35, align 8
  %36 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %37 = call i32 @os_memset(%struct.hostapd_radius_server* %36, i32 0, i32 12)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %40 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %43 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %42, i32 0, i32 2
  %44 = call i32 @hostapd_parse_ip_addr(i8* %41, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @hostapd_config_read_radius_addr.server_index, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @hostapd_config_read_radius_addr.server_index, align 4
  %47 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  %48 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %23, %22
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.hostapd_radius_server* @os_realloc_array(%struct.hostapd_radius_server*, i32, i32) #1

declare dso_local i32 @os_memset(%struct.hostapd_radius_server*, i32, i32) #1

declare dso_local i32 @hostapd_parse_ip_addr(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
