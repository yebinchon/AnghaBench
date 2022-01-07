; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_lookup_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_lookup_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64 }
%struct.usb_attach_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64 }

@USB_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_LO = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_HI = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_PROTOCOL = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device_id* (%struct.usb_device_id*, %struct.usb_attach_arg*)* @usb_linux_lookup_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device_id* @usb_linux_lookup_id(%struct.usb_device_id* %0, %struct.usb_attach_arg* %1) #0 {
  %3 = alloca %struct.usb_device_id*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  store %struct.usb_device_id* %0, %struct.usb_device_id** %4, align 8
  store %struct.usb_attach_arg* %1, %struct.usb_attach_arg** %5, align 8
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %7 = icmp eq %struct.usb_device_id* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %216

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %212, %9
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %215

15:                                               ; preds = %10
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %212

32:                                               ; preds = %22, %15
  %33 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @USB_DEVICE_ID_MATCH_PRODUCT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %41 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %44 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %212

49:                                               ; preds = %39, %32
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %51 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_LO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %61 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %212

66:                                               ; preds = %56, %49
  %67 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %68 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_HI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %75 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %78 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %212

83:                                               ; preds = %73, %66
  %84 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %85 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_CLASS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %92 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %95 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %212

100:                                              ; preds = %90, %83
  %101 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %102 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_SUBCLASS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %109 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %112 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %212

117:                                              ; preds = %107, %100
  %118 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %119 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_PROTOCOL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %126 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %129 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %212

134:                                              ; preds = %124, %117
  %135 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %136 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 255
  br i1 %139, label %140, label %159

140:                                              ; preds = %134
  %141 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %142 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %140
  %148 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %149 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %152 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %150, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %212

159:                                              ; preds = %147, %140, %134
  %160 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %161 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %168 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %171 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %212

176:                                              ; preds = %166, %159
  %177 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %178 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %185 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %184, i32 0, i32 9
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %188 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %186, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %212

193:                                              ; preds = %183, %176
  %194 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %195 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %193
  %201 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %202 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %201, i32 0, i32 10
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %205 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %203, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %212

210:                                              ; preds = %200, %193
  %211 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  store %struct.usb_device_id* %211, %struct.usb_device_id** %3, align 8
  br label %217

212:                                              ; preds = %209, %192, %175, %158, %133, %116, %99, %82, %65, %48, %31
  %213 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %214 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %213, i32 1
  store %struct.usb_device_id* %214, %struct.usb_device_id** %4, align 8
  br label %10

215:                                              ; preds = %10
  br label %216

216:                                              ; preds = %215, %8
  store %struct.usb_device_id* null, %struct.usb_device_id** %3, align 8
  br label %217

217:                                              ; preds = %216, %210
  %218 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  ret %struct.usb_device_id* %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
