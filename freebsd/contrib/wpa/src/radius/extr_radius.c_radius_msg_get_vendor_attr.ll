; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_vendor_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_vendor_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }
%struct.radius_attr_vendor = type { i64, i64 }

@RADIUS_ATTR_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.radius_msg*, i64, i64, i64*)* @radius_msg_get_vendor_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @radius_msg_get_vendor_attr(%struct.radius_msg* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.radius_attr_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.radius_attr_vendor*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %19 = icmp eq %struct.radius_msg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %128

21:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %124, %21
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %25 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %127

28:                                               ; preds = %22
  %29 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %29, i64 %30)
  store %struct.radius_attr_hdr* %31, %struct.radius_attr_hdr** %14, align 8
  %32 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %33 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RADIUS_ATTR_VENDOR_SPECIFIC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %39 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %28
  br label %124

44:                                               ; preds = %37
  %45 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %46 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 16
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %124

53:                                               ; preds = %44
  %54 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %55 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %54, i64 1
  %56 = bitcast %struct.radius_attr_hdr* %55 to i64*
  store i64* %56, i64** %11, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @os_memcpy(i64* %16, i64* %57, i32 4)
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 4
  store i64* %60, i64** %11, align 8
  %61 = load i64, i64* %15, align 8
  %62 = sub i64 %61, 4
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i64 @ntohl(i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %124

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i64, i64* %15, align 8
  %71 = icmp uge i64 %70, 16
  br i1 %71, label %72, label %123

72:                                               ; preds = %69
  %73 = load i64*, i64** %11, align 8
  %74 = bitcast i64* %73 to %struct.radius_attr_vendor*
  store %struct.radius_attr_vendor* %74, %struct.radius_attr_vendor** %17, align 8
  %75 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %76 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %72
  %81 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %82 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %83, 16
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %72
  br label %123

86:                                               ; preds = %80
  %87 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %88 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %94 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 %95
  store i64* %97, i64** %11, align 8
  %98 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %99 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %15, align 8
  br label %69

103:                                              ; preds = %86
  %104 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %17, align 8
  %105 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, 16
  store i64 %107, i64* %13, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 16
  %110 = load i64, i64* %13, align 8
  %111 = call i64* @os_memdup(i64* %109, i64 %110)
  store i64* %111, i64** %10, align 8
  %112 = load i64*, i64** %10, align 8
  %113 = icmp eq i64* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  store i64* null, i64** %5, align 8
  br label %128

115:                                              ; preds = %103
  %116 = load i64*, i64** %9, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i64*, i64** %10, align 8
  store i64* %122, i64** %5, align 8
  br label %128

123:                                              ; preds = %85, %69
  br label %124

124:                                              ; preds = %123, %67, %52, %43
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %12, align 8
  br label %22

127:                                              ; preds = %22
  store i64* null, i64** %5, align 8
  br label %128

128:                                              ; preds = %127, %121, %114, %20
  %129 = load i64*, i64** %5, align 8
  ret i64* %129
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64* @os_memdup(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
