; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_server = type { i32 }
%struct.wpabuf = type opaque
%struct.gas_server_handler = type { %struct.wpabuf* (i8*, i32*, i32*, i64)*, void (i8*, %struct.wpabuf*, i32)*, i32, %struct.gas_server*, i8*, i32, i32 }

@MAX_ADV_PROTO_ID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gas_server_register(%struct.gas_server* %0, i32* %1, i32 %2, %struct.wpabuf* (i8*, i32*, i32*, i64)* %3, void (i8*, %struct.wpabuf*, i32)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gas_server*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf* (i8*, i32*, i32*, i64)*, align 8
  %12 = alloca void (i8*, %struct.wpabuf*, i32)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gas_server_handler*, align 8
  store %struct.gas_server* %0, %struct.gas_server** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.wpabuf* (i8*, i32*, i32*, i64)* %3, %struct.wpabuf* (i8*, i32*, i32*, i64)** %11, align 8
  store void (i8*, %struct.wpabuf*, i32)* %4, void (i8*, %struct.wpabuf*, i32)** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.gas_server*, %struct.gas_server** %8, align 8
  %16 = icmp ne %struct.gas_server* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MAX_ADV_PROTO_ID_LEN, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %6
  store i32 -1, i32* %7, align 4
  br label %54

22:                                               ; preds = %17
  %23 = call %struct.gas_server_handler* @os_zalloc(i32 48)
  store %struct.gas_server_handler* %23, %struct.gas_server_handler** %14, align 8
  %24 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %25 = icmp ne %struct.gas_server_handler* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %54

27:                                               ; preds = %22
  %28 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %29 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @os_memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %36 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.wpabuf* (i8*, i32*, i32*, i64)*, %struct.wpabuf* (i8*, i32*, i32*, i64)** %11, align 8
  %38 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %39 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %38, i32 0, i32 0
  store %struct.wpabuf* (i8*, i32*, i32*, i64)* %37, %struct.wpabuf* (i8*, i32*, i32*, i64)** %39, align 8
  %40 = load void (i8*, %struct.wpabuf*, i32)*, void (i8*, %struct.wpabuf*, i32)** %12, align 8
  %41 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %42 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %41, i32 0, i32 1
  store void (i8*, %struct.wpabuf*, i32)* %40, void (i8*, %struct.wpabuf*, i32)** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %45 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.gas_server*, %struct.gas_server** %8, align 8
  %47 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %48 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %47, i32 0, i32 3
  store %struct.gas_server* %46, %struct.gas_server** %48, align 8
  %49 = load %struct.gas_server*, %struct.gas_server** %8, align 8
  %50 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %49, i32 0, i32 0
  %51 = load %struct.gas_server_handler*, %struct.gas_server_handler** %14, align 8
  %52 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %51, i32 0, i32 2
  %53 = call i32 @dl_list_add(i32* %50, i32* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %27, %26, %21
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.gas_server_handler* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
