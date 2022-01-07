; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_basic_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_basic_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { %struct.TYPE_6__, i64, i32, i32, i32, i64, %struct.ieee802_1x_kay* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ieee802_1x_kay = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.ieee802_1x_mka_basic_body = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MKA_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, %struct.wpabuf*)* @ieee802_1x_mka_encode_basic_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_encode_basic_body(%struct.ieee802_1x_mka_participant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.ieee802_1x_mka_basic_body*, align 8
  %6 = alloca %struct.ieee802_1x_kay*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %9 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %8, i32 0, i32 6
  %10 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %9, align 8
  store %struct.ieee802_1x_kay* %10, %struct.ieee802_1x_kay** %6, align 8
  store i32 44, i32* %7, align 4
  %11 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %12 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MKA_ALIGN_LENGTH(i32 %18)
  %20 = call %struct.ieee802_1x_mka_basic_body* @wpabuf_put(%struct.wpabuf* %17, i32 %19)
  store %struct.ieee802_1x_mka_basic_body* %20, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %21 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %22 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %25 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %27 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %30 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %32 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %37 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %40 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %43 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %46 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %49 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %54 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %57 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @MKA_HDR_LEN, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_basic_body* %58, i64 %62)
  %64 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %65 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %69 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @os_memcpy(i32 %67, i32 %71, i32 4)
  %73 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %74 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %78 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %81 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %84 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @os_memcpy(i32 %82, i32 %85, i32 4)
  %87 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %88 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %92 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %94 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @host_to_be32(i64 %95)
  %97 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %98 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %100 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %6, align 8
  %103 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @os_memcpy(i32 %101, i32 %104, i32 4)
  %106 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %107 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %110 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %114 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @os_memcpy(i32 %108, i32 %112, i32 %116)
  %118 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %5, align 8
  %119 = call i32 @ieee802_1x_mka_dump_basic_body(%struct.ieee802_1x_mka_basic_body* %118)
  ret i32 0
}

declare dso_local %struct.ieee802_1x_mka_basic_body* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @MKA_ALIGN_LENGTH(i32) #1

declare dso_local i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_basic_body*, i64) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @host_to_be32(i64) #1

declare dso_local i32 @ieee802_1x_mka_dump_basic_body(%struct.ieee802_1x_mka_basic_body*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
