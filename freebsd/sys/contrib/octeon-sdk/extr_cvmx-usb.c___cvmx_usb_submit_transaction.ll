; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_submit_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-usb.c___cvmx_usb_submit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i8*, i32, i32*, i8*, i8* }

@MAX_PIPES = common dso_local global i32 0, align 4
@CVMX_USB_INVALID_PARAM = common dso_local global i32 0, align 4
@__CVMX_USB_PIPE_FLAGS_OPEN = common dso_local global i32 0, align 4
@CVMX_USB_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i64 0, align 8
@CVMX_USB_STAGE_SETUP = common dso_local global i32 0, align 4
@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64, i32, i8*, i32, i8*, i32, i32, i32*, i32, i8*)* @__cvmx_usb_submit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_usb_submit_transaction(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32* %9, i32 %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_12__*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %14, align 8
  store i32 %1, i32* %15, align 4
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i8* %11, i8** %25, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %33
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %28, align 8
  %35 = call i32 (...) @CVMX_USB_LOG_CALLED()
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %12
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @MAX_PIPES, align 4
  %41 = icmp sge i32 %39, %40
  br label %42

42:                                               ; preds = %38, %12
  %43 = phi i1 [ true, %12 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @cvmx_unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %49 = call i32 @CVMX_USB_RETURN(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @__CVMX_USB_PIPE_FLAGS_OPEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @cvmx_unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %62 = call i32 @CVMX_USB_RETURN(i32 %61)
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @cvmx_unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @CVMX_USB_INVALID_PARAM, align 4
  %74 = call i32 @CVMX_USB_RETURN(i32 %73)
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %77 = call %struct.TYPE_12__* @__cvmx_usb_alloc_transaction(%struct.TYPE_14__* %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %27, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @cvmx_unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @CVMX_USB_NO_MEMORY, align 4
  %86 = call i32 @CVMX_USB_RETURN(i32 %85)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 12
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %20, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 11
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %22, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %23, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 10
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* %24, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** %25, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CVMX_USB_TRANSFER_CONTROL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %87
  %126 = load i32, i32* @CVMX_USB_STAGE_SETUP, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  br label %133

129:                                              ; preds = %87
  %130 = load i32, i32* @CVMX_USB_STAGE_NON_CONTROL, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = icmp ne %struct.TYPE_12__* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %145, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 6
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %150, align 8
  br label %202

151:                                              ; preds = %133
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %151
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %162, %166
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %170, %173
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = srem i64 %174, %178
  %180 = sub nsw i64 %167, %179
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %159, %151
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 5
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %192 = call i32 @__cvmx_usb_remove_pipe(i32* %190, %struct.TYPE_13__* %191)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %195, %198
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %201 = call i32 @__cvmx_usb_append_pipe(i64 %199, %struct.TYPE_13__* %200)
  br label %202

202:                                              ; preds = %183, %140
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 4
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %205, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %208 = call i32 @__cvmx_usb_get_submit_handle(%struct.TYPE_14__* %206, %struct.TYPE_12__* %207)
  store i32 %208, i32* %26, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = icmp ne %struct.TYPE_12__* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %202
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %215 = call i32 @__cvmx_usb_schedule(%struct.TYPE_14__* %214, i32 0)
  br label %216

216:                                              ; preds = %213, %202
  %217 = load i32, i32* %26, align 4
  %218 = call i32 @CVMX_USB_RETURN(i32 %217)
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local i32 @CVMX_USB_LOG_CALLED(...) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @CVMX_USB_RETURN(i32) #1

declare dso_local %struct.TYPE_12__* @__cvmx_usb_alloc_transaction(%struct.TYPE_14__*) #1

declare dso_local i32 @__cvmx_usb_remove_pipe(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @__cvmx_usb_append_pipe(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @__cvmx_usb_get_submit_handle(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @__cvmx_usb_schedule(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
