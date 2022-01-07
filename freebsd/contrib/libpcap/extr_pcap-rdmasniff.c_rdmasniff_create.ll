; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pcap_rdmasniff*, i32 }
%struct.pcap_rdmasniff = type { i32, %struct.ibv_device* }
%struct.ibv_device = type { i8* }

@rdmasniff_activate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @rdmasniff_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcap_rdmasniff*, align 8
  %9 = alloca %struct.ibv_device**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = call %struct.ibv_device** @ibv_get_device_list(i32* %10)
  store %struct.ibv_device** %17, %struct.ibv_device*** %9, align 8
  %18 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %19 = icmp ne %struct.ibv_device** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %106

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @strtoul(i8* %33, i32* null, i32 10)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %11, align 8
  br label %44

43:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %37
  br label %46

45:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %44
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %99, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %52, i64 %54
  %56 = load %struct.ibv_device*, %struct.ibv_device** %55, align 8
  %57 = getelementptr inbounds %struct.ibv_device, %struct.ibv_device* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %51
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %64, i64 %66
  %68 = load %struct.ibv_device*, %struct.ibv_device** %67, align 8
  %69 = getelementptr inbounds %struct.ibv_device, %struct.ibv_device* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @strncmp(i8* %63, i8* %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %62
  %75 = load i32*, i32** %7, align 8
  store i32 1, i32* %75, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call %struct.TYPE_4__* @pcap_create_common(i8* %76, i32 16)
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %15, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i32, i32* @rdmasniff_activate, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %85, align 8
  store %struct.pcap_rdmasniff* %86, %struct.pcap_rdmasniff** %8, align 8
  %87 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %87, i64 %89
  %91 = load %struct.ibv_device*, %struct.ibv_device** %90, align 8
  %92 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %8, align 8
  %93 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %92, i32 0, i32 1
  store %struct.ibv_device* %91, %struct.ibv_device** %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %8, align 8
  %96 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %80, %74
  br label %102

98:                                               ; preds = %62, %51
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %47

102:                                              ; preds = %97, %47
  %103 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %104 = call i32 @ibv_free_device_list(%struct.ibv_device** %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %4, align 8
  br label %106

106:                                              ; preds = %102, %23
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %107
}

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @pcap_create_common(i8*, i32) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
