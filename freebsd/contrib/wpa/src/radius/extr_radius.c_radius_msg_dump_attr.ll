; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_dump_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_dump_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_attr_hdr = type { i32, i32 }
%struct.radius_attr_type = type { i8*, i32 }
%struct.in_addr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"   Attribute %d (%s) length=%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"?Unknown?\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"      Value: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"      Value: %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"      Invalid IP address length %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"      Value: %u\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"      Invalid INT32 length %d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_attr_hdr*)* @radius_msg_dump_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_msg_dump_attr(%struct.radius_attr_hdr* %0) #0 {
  %2 = alloca %struct.radius_attr_hdr*, align 8
  %3 = alloca %struct.radius_attr_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca %struct.in_addr, align 4
  store %struct.radius_attr_hdr* %0, %struct.radius_attr_hdr** %2, align 8
  %8 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %9 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.radius_attr_type* @radius_get_attr_type(i32 %10)
  store %struct.radius_attr_type* %11, %struct.radius_attr_type** %3, align 8
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %14 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.radius_attr_type*, %struct.radius_attr_type** %3, align 8
  %17 = icmp ne %struct.radius_attr_type* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.radius_attr_type*, %struct.radius_attr_type** %3, align 8
  %20 = getelementptr inbounds %struct.radius_attr_type, %struct.radius_attr_type* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %26 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %24, i32 %27)
  %29 = load %struct.radius_attr_type*, %struct.radius_attr_type** %3, align 8
  %30 = icmp eq %struct.radius_attr_type* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %33 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %23
  br label %97

38:                                               ; preds = %31
  %39 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %40 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %2, align 8
  %46 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %45, i64 1
  %47 = bitcast %struct.radius_attr_hdr* %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = load %struct.radius_attr_type*, %struct.radius_attr_type** %3, align 8
  %49 = getelementptr inbounds %struct.radius_attr_type, %struct.radius_attr_type* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %96 [
    i32 129, label %51
    i32 131, label %59
    i32 133, label %75
    i32 128, label %75
    i32 132, label %83
  ]

51:                                               ; preds = %38
  %52 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @printf_encode(i8* %52, i32 1000, i8* %53, i32 %54)
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %97

59:                                               ; preds = %38
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @os_memcpy(%struct.in_addr* %7, i8* %63, i32 4)
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @inet_ntoa(i32 %67)
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %59
  %71 = load i32, i32* @MSG_INFO, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %62
  br label %97

75:                                               ; preds = %38, %38
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @wpa_snprintf_hex(i8* %76, i32 1000, i8* %77, i32 %78)
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %97

83:                                               ; preds = %38
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @WPA_GET_BE32(i8* %88)
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %97

96:                                               ; preds = %38
  br label %97

97:                                               ; preds = %37, %96, %95, %75, %74, %51
  ret void
}

declare dso_local %struct.radius_attr_type* @radius_get_attr_type(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @printf_encode(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(%struct.in_addr*, i8*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i8*, i32) #1

declare dso_local i32 @WPA_GET_BE32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
