; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_radiotap.c_ieee80211_radiotap_iterator_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_radiotap.c_ieee80211_radiotap_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_radiotap_iterator = type { i32, i32, i32, i64, i64, i32*, i32*, %struct.ieee80211_radiotap_header*, i32*, i64, i32*, %struct.ieee80211_radiotap_vendor_namespaces*, i32*, i64, i32*, i64 }
%struct.ieee80211_radiotap_header = type { i32, i32, i64 }
%struct.ieee80211_radiotap_vendor_namespaces = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@radiotap_ns = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_header* %1, i32 %2, %struct.ieee80211_radiotap_vendor_namespaces* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_radiotap_iterator*, align 8
  %7 = alloca %struct.ieee80211_radiotap_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_radiotap_vendor_namespaces*, align 8
  store %struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_iterator** %6, align 8
  store %struct.ieee80211_radiotap_header* %1, %struct.ieee80211_radiotap_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_radiotap_vendor_namespaces* %3, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %147

15:                                               ; preds = %4
  %16 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %147

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %25, i32 0, i32 1
  %27 = call i32 @get_unaligned_le16(i32* %26)
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %147

32:                                               ; preds = %23
  %33 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %34 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %34, i32 0, i32 7
  store %struct.ieee80211_radiotap_header* %33, %struct.ieee80211_radiotap_header** %35, align 8
  %36 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %36, i32 0, i32 1
  %38 = call i32 @get_unaligned_le16(i32* %37)
  %39 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %41, i32 0, i32 15
  store i64 0, i64* %42, align 8
  %43 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %43, i32 0, i32 0
  %45 = call i32 @get_unaligned_le32(i32* %44)
  %46 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %49 = bitcast %struct.ieee80211_radiotap_header* %48 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  %51 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %53, i32 0, i32 14
  store i32* null, i32** %54, align 8
  %55 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %57, i32 0, i32 0
  %59 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %59, i32 0, i32 12
  store i32* %58, i32** %60, align 8
  %61 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %61, i32 0, i32 12
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %62, align 8
  %65 = load %struct.ieee80211_radiotap_vendor_namespaces*, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %66 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %66, i32 0, i32 11
  store %struct.ieee80211_radiotap_vendor_namespaces* %65, %struct.ieee80211_radiotap_vendor_namespaces** %67, align 8
  %68 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %68, i32 0, i32 10
  store i32* @radiotap_ns, i32** %69, align 8
  %70 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %137

79:                                               ; preds = %32
  %80 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = ptrtoint i32* %82 to i64
  %84 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %84, i32 0, i32 7
  %86 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %85, align 8
  %87 = ptrtoint %struct.ieee80211_radiotap_header* %86 to i64
  %88 = sub i64 %83, %87
  %89 = add i64 %88, 4
  %90 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %147

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %131, %98
  %100 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @get_unaligned_le32(i32* %102)
  %104 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %99
  %109 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  store i32* %112, i32** %110, align 8
  %113 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = ptrtoint i32* %115 to i64
  %117 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %117, i32 0, i32 7
  %119 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %118, align 8
  %120 = ptrtoint %struct.ieee80211_radiotap_header* %119 to i64
  %121 = sub i64 %116, %120
  %122 = add i64 %121, 4
  %123 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %108
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %147

131:                                              ; preds = %108
  br label %99

132:                                              ; preds = %99
  %133 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %134 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32* %136, i32** %134, align 8
  br label %137

137:                                              ; preds = %132, %32
  %138 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %142 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %141, i32 0, i32 6
  store i32* %140, i32** %142, align 8
  %143 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %146 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %137, %128, %95, %29, %20, %12
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
