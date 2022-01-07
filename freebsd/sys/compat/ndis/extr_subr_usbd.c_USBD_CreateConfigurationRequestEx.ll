; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_CreateConfigurationRequestEx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_CreateConfigurationRequestEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.usbd_urb = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usbd_interface_list_entry = type { %struct.TYPE_6__*, %struct.usbd_interface_information* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.usbd_interface_information = type { i32, i32, %struct.usbd_pipe_information*, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.usbd_pipe_information = type { i32 }
%struct.usbd_urb_select_configuration = type { %struct.usbd_interface_information, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NonPagedPool = common dso_local global i32 0, align 4
@URB_FUNCTION_SELECT_CONFIGURATION = common dso_local global i32 0, align 4
@USBD_DEFAULT_MAXIMUM_TRANSFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.usbd_urb* (%struct.TYPE_7__*, %struct.usbd_interface_list_entry*)* @USBD_CreateConfigurationRequestEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.usbd_urb* @USBD_CreateConfigurationRequestEx(%struct.TYPE_7__* %0, %struct.usbd_interface_list_entry* %1) #0 {
  %3 = alloca %union.usbd_urb*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.usbd_interface_list_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbd_interface_information*, align 8
  %10 = alloca %struct.usbd_pipe_information*, align 8
  %11 = alloca %struct.usbd_urb_select_configuration*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.usbd_interface_list_entry* %1, %struct.usbd_interface_list_entry** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.usbd_interface_list_entry*, %struct.usbd_interface_list_entry** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 48
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = add i64 %30, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 24
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @NonPagedPool, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.usbd_urb_select_configuration* @ExAllocatePoolWithTag(i32 %45, i32 %46, i32 0)
  store %struct.usbd_urb_select_configuration* %47, %struct.usbd_urb_select_configuration** %11, align 8
  %48 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %49 = icmp eq %struct.usbd_urb_select_configuration* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store %union.usbd_urb* null, %union.usbd_urb** %3, align 8
  br label %174

51:                                               ; preds = %40
  %52 = load i32, i32* @URB_FUNCTION_SELECT_CONFIGURATION, align 4
  %53 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %54 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %58 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %62 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %61, i32 0, i32 2
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %65 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %64, i32 0, i32 1
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %67 = getelementptr inbounds %struct.usbd_urb_select_configuration, %struct.usbd_urb_select_configuration* %66, i32 0, i32 0
  store %struct.usbd_interface_information* %67, %struct.usbd_interface_information** %9, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %168, %51
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %171

74:                                               ; preds = %68
  %75 = load %struct.usbd_interface_list_entry*, %struct.usbd_interface_list_entry** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp eq %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %171

83:                                               ; preds = %74
  %84 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %85 = load %struct.usbd_interface_list_entry*, %struct.usbd_interface_list_entry** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %85, i64 %87
  %89 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %88, i32 0, i32 1
  store %struct.usbd_interface_information* %84, %struct.usbd_interface_information** %89, align 8
  %90 = load %struct.usbd_interface_list_entry*, %struct.usbd_interface_list_entry** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %90, i64 %92
  %94 = getelementptr inbounds %struct.usbd_interface_list_entry, %struct.usbd_interface_list_entry* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %12, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = add i64 48, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %105 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %110 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %115 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %120 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %125 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %130 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %132 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %133 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %132, i32 0, i32 3
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %138 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %140 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %139, i32 0, i32 2
  %141 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %140, align 8
  %142 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %141, i64 0
  store %struct.usbd_pipe_information* %142, %struct.usbd_pipe_information** %10, align 8
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %156, %83
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %146 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load i32, i32* @USBD_DEFAULT_MAXIMUM_TRANSFER_SIZE, align 4
  %151 = load %struct.usbd_pipe_information*, %struct.usbd_pipe_information** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %151, i64 %153
  %155 = getelementptr inbounds %struct.usbd_pipe_information, %struct.usbd_pipe_information* %154, i32 0, i32 0
  store i32 %150, i32* %155, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %143

159:                                              ; preds = %143
  %160 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %161 = bitcast %struct.usbd_interface_information* %160 to i8*
  %162 = load %struct.usbd_interface_information*, %struct.usbd_interface_information** %9, align 8
  %163 = getelementptr inbounds %struct.usbd_interface_information, %struct.usbd_interface_information* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %161, i64 %165
  %167 = bitcast i8* %166 to %struct.usbd_interface_information*
  store %struct.usbd_interface_information* %167, %struct.usbd_interface_information** %9, align 8
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %68

171:                                              ; preds = %82, %68
  %172 = load %struct.usbd_urb_select_configuration*, %struct.usbd_urb_select_configuration** %11, align 8
  %173 = bitcast %struct.usbd_urb_select_configuration* %172 to %union.usbd_urb*
  store %union.usbd_urb* %173, %union.usbd_urb** %3, align 8
  br label %174

174:                                              ; preds = %171, %50
  %175 = load %union.usbd_urb*, %union.usbd_urb** %3, align 8
  ret %union.usbd_urb* %175
}

declare dso_local %struct.usbd_urb_select_configuration* @ExAllocatePoolWithTag(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
