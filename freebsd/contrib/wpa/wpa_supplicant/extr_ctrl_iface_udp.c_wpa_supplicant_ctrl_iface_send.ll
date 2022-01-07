; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ctrl_dst = type { i32, i32, i32, %struct.TYPE_2__, %struct.wpa_ctrl_dst* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"IFACE=%s <%d>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CTRL_IFACE monitor send %s:%d\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"sendto(CTRL_IFACE monitor): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i8*, i32, %struct.wpa_ctrl_dst**, i32, i8*, i64)* @wpa_supplicant_ctrl_iface_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant* %0, i8* %1, i32 %2, %struct.wpa_ctrl_dst** %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpa_ctrl_dst**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpa_ctrl_dst*, align 8
  %16 = alloca %struct.wpa_ctrl_dst*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.wpa_ctrl_dst** %3, %struct.wpa_ctrl_dst*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %21 = load %struct.wpa_ctrl_dst**, %struct.wpa_ctrl_dst*** %11, align 8
  %22 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %21, align 8
  store %struct.wpa_ctrl_dst* %22, %struct.wpa_ctrl_dst** %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %27 = icmp eq %struct.wpa_ctrl_dst* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %7
  br label %136

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %33, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  br label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %38, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %43 = call i32 @os_strlen(i8* %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @os_malloc(i32 %48)
  store i8* %49, i8** %19, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %136

53:                                               ; preds = %41
  %54 = load i8*, i8** %19, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @os_memcpy(i8* %54, i8* %55, i64 %57)
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @os_memcpy(i8* %62, i8* %63, i64 %64)
  store i32 0, i32* %18, align 4
  br label %66

66:                                               ; preds = %129, %53
  %67 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %68 = icmp ne %struct.wpa_ctrl_dst* %67, null
  br i1 %68, label %69, label %133

69:                                               ; preds = %66
  %70 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %71 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %70, i32 0, i32 4
  %72 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %71, align 8
  store %struct.wpa_ctrl_dst* %72, %struct.wpa_ctrl_dst** %16, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %75 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %129

78:                                               ; preds = %69
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %81 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @inet_ntoa(i32 %83)
  %85 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %86 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohs(i32 %88)
  %90 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %19, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %99 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %98, i32 0, i32 3
  %100 = bitcast %struct.TYPE_2__* %99 to %struct.sockaddr*
  %101 = call i64 @sendto(i32 %91, i8* %92, i32 %97, i32 0, %struct.sockaddr* %100, i32 16)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %78
  %104 = load i32, i32* @MSG_ERROR, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @strerror(i32 %105)
  %107 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %109 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %113 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 10
  br i1 %115, label %116, label %124

116:                                              ; preds = %103
  %117 = load %struct.wpa_ctrl_dst**, %struct.wpa_ctrl_dst*** %11, align 8
  %118 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %119 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %118, i32 0, i32 3
  %120 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %121 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wpa_supplicant_ctrl_iface_detach(%struct.wpa_ctrl_dst** %117, %struct.TYPE_2__* %119, i32 %122)
  br label %124

124:                                              ; preds = %116, %103
  br label %128

125:                                              ; preds = %78
  %126 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %15, align 8
  %127 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %69
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  %132 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %16, align 8
  store %struct.wpa_ctrl_dst* %132, %struct.wpa_ctrl_dst** %15, align 8
  br label %66

133:                                              ; preds = %66
  %134 = load i8*, i8** %19, align 8
  %135 = call i32 @os_free(i8* %134)
  br label %136

136:                                              ; preds = %133, %52, %28
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_detach(%struct.wpa_ctrl_dst**, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
