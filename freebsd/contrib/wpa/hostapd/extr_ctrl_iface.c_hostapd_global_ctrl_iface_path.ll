; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hapd_interfaces*)* @hostapd_global_ctrl_iface_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hostapd_global_ctrl_iface_path(%struct.hapd_interfaces* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hapd_interfaces*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %3, align 8
  %6 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %7 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %13 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_strlen(i32* %14)
  %16 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %17 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @os_strlen(i32* %18)
  %20 = add nsw i32 %15, %19
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i8* @os_malloc(i64 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %43

28:                                               ; preds = %11
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %32 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %35 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @os_snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %33, i32* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %28, %27, %10
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i32 @os_strlen(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
