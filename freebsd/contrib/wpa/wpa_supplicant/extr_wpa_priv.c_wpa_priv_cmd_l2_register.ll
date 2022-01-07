; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, i32**, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, %struct.wpa_priv_interface* }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid l2_register length %lu\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Refused l2_packet connection for ethertype 0x%x\00", align 1
@WPA_PRIV_MAX_L2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"No free l2_packet connection found\00", align 1
@wpa_priv_l2_rx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed to initialize l2_packet instance for protocol %d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to get own address from l2_packet\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"L2 registration[idx=%d]: res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32, i8*, i64)* @wpa_priv_cmd_l2_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_l2_register(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_priv_interface*, align 8
  %7 = alloca %struct.sockaddr_un*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %6, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 8
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 1, i32* %17, align 4
  br label %173

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @wpa_priv_allowed_l2_proto(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 1, i32* %17, align 4
  br label %173

41:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %42

60:                                               ; preds = %55, %42
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %173

67:                                               ; preds = %60
  %68 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %69 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @os_memcpy(i32* %73, %struct.sockaddr_un* %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %79 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 8
  %92 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %93 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %94 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store %struct.wpa_priv_interface* %92, %struct.wpa_priv_interface** %99, align 8
  %100 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @wpa_priv_l2_rx, align 4
  %105 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %106 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @l2_packet_init(i32 %102, i32* null, i32 %103, i32 %104, %struct.TYPE_2__* %110, i32 %113)
  %115 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %116 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* %114, i32** %120, align 8
  %121 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %122 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %67
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  store i32 1, i32* %17, align 4
  br label %173

133:                                              ; preds = %67
  %134 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %135 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = call i64 @l2_packet_get_own_addr(i32* %140, i32* %23)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %133
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %146 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @l2_packet_deinit(i32* %152)
  %154 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %155 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  store i32* null, i32** %159, align 8
  store i32 1, i32* %17, align 4
  br label %173

160:                                              ; preds = %133
  %161 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %162 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ETH_ALEN, align 4
  %165 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %166 = bitcast %struct.sockaddr_un* %165 to %struct.sockaddr*
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @sendto(i32 %163, i32* %23, i32 %164, i32 0, %struct.sockaddr* %166, i32 %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %171)
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %160, %143, %129, %64, %37, %26
  %174 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %17, align 4
  switch i32 %175, label %177 [
    i32 0, label %176
    i32 1, label %176
  ]

176:                                              ; preds = %173, %173
  ret void

177:                                              ; preds = %173
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @wpa_priv_allowed_l2_proto(i32) #2

declare dso_local i32 @os_memcpy(i32*, %struct.sockaddr_un*, i32) #2

declare dso_local i32* @l2_packet_init(i32, i32*, i32, i32, %struct.TYPE_2__*, i32) #2

declare dso_local i64 @l2_packet_get_own_addr(i32*, i32*) #2

declare dso_local i32 @l2_packet_deinit(i32*) #2

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
