; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_peer_channels_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_peer_channels_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i32, i32, i32 }
%struct.p2p_device = type { %struct.p2p_channels, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"P2P: Peer country\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Mismatching country (ours=%c%c peer's=%c%c)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid peer Channel List\00", align 1
@P2P_MAX_REG_CLASS_CHANNELS = common dso_local global i32 0, align 4
@P2P_MAX_REG_CLASSES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Own reg_classes %d peer reg_classes %d intersection reg_classes %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No common channels found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_peer_channels_check(%struct.p2p_data* %0, %struct.p2p_channels* %1, %struct.p2p_device* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca %struct.p2p_channels*, align 8
  %9 = alloca %struct.p2p_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.p2p_channels*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.p2p_channels, align 8
  %17 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %8, align 8
  store %struct.p2p_device* %2, %struct.p2p_device** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %19 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %18, i32 0, i32 0
  store %struct.p2p_channels* %19, %struct.p2p_channels** %14, align 8
  %20 = load %struct.p2p_channels*, %struct.p2p_channels** %14, align 8
  %21 = call i32 @os_memset(%struct.p2p_channels* %20, i32 0, i32 16)
  %22 = load i32*, i32** %10, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = icmp slt i64 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %179

34:                                               ; preds = %5
  %35 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %36 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @os_memcpy(i32 %37, i32* %38, i32 3)
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @wpa_hexdump_ascii(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %41, i32 3)
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %79

47:                                               ; preds = %34
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @os_memcmp(i32* %48, i32* %53, i32 2)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %47
  %57 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %58 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %59 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_info(%struct.p2p_data* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %71, i32 %74, i32 %77)
  store i32 -1, i32* %6, align 4
  br label %179

79:                                               ; preds = %47, %34
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32* %81, i32** %12, align 8
  br label %82

82:                                               ; preds = %152, %79
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = icmp sgt i64 %88, 2
  br i1 %89, label %90, label %153

90:                                               ; preds = %82
  %91 = load %struct.p2p_channels*, %struct.p2p_channels** %14, align 8
  %92 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %91, i32 0, i32 1
  %93 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %92, align 8
  %94 = load %struct.p2p_channels*, %struct.p2p_channels** %14, align 8
  %95 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %93, i64 %96
  store %struct.p2p_reg_class* %97, %struct.p2p_reg_class** %17, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %12, align 8
  %100 = load i32, i32* %98, align 4
  %101 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %17, align 8
  %102 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %12, align 8
  %105 = load i32, i32* %103, align 4
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = icmp sgt i64 %107, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %90
  %116 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %117 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_info(%struct.p2p_data* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %179

118:                                              ; preds = %90
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @P2P_MAX_REG_CLASS_CHANNELS, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @P2P_MAX_REG_CLASS_CHANNELS, align 4
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %15, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %17, align 8
  %129 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %17, align 8
  %131 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %17, align 8
  %135 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @os_memcpy(i32 %132, i32* %133, i32 %136)
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %12, align 8
  %142 = load %struct.p2p_channels*, %struct.p2p_channels** %14, align 8
  %143 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = load %struct.p2p_channels*, %struct.p2p_channels** %14, align 8
  %147 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @P2P_MAX_REG_CLASSES, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %126
  br label %153

152:                                              ; preds = %126
  br label %82

153:                                              ; preds = %151, %82
  %154 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %155 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %156 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %155, i32 0, i32 0
  %157 = call i32 @p2p_channels_intersect(%struct.p2p_channels* %154, %struct.p2p_channels* %156, %struct.p2p_channels* %16)
  %158 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %159 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %160 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %164 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %16, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @p2p_dbg(%struct.p2p_data* %158, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %167, i32 %170)
  %172 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %16, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %153
  %176 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %177 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_info(%struct.p2p_data* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %179

178:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %175, %115, %56, %33
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @os_memset(%struct.p2p_channels*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @p2p_info(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_channels_intersect(%struct.p2p_channels*, %struct.p2p_channels*, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
