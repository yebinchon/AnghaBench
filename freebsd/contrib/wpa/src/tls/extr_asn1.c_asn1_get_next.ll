; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_asn1.c_asn1_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_hdr = type { i32, i32, i32, i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ASN.1: No room for Identifier\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ASN.1: Identifier underflow\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ASN.1: Extended tag data: 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ASN.1: No room for Length\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ASN.1: Reserved length value 0xff used\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ASN.1: Too long length field\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ASN.1: Length underflow\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ASN.1: Contents underflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_get_next(i32* %0, i64 %1, %struct.asn1_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.asn1_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.asn1_hdr* %2, %struct.asn1_hdr** %7, align 8
  %11 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %12 = call i32 @os_memset(%struct.asn1_hdr* %11, i32 0, i32 32)
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp uge i32* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 6
  %33 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 31
  %49 = icmp eq i32 %48, 31
  br i1 %49, label %50, label %81

50:                                               ; preds = %23
  %51 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %76, %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp uge i32* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  %63 = load i32, i32* %61, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @MSG_MSGDUMP, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 7
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 127
  %73 = or i32 %70, %72
  %74 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 128
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %53, label %80

80:                                               ; preds = %76
  br label %88

81:                                               ; preds = %23
  %82 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 31
  %86 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %80
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = icmp uge i32* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %8, align 8
  %98 = load i32, i32* %96, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 128
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 127
  store i32 %110, i32* %10, align 4
  %111 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %112 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %111, i32 0, i32 4
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %130, %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = icmp uge i32* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

130:                                              ; preds = %123
  %131 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %132 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = shl i32 %133, 8
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %8, align 8
  %137 = load i32, i32* %135, align 4
  %138 = or i32 %134, %137
  %139 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %140 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  br label %119

141:                                              ; preds = %119
  br label %146

142:                                              ; preds = %95
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %145 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %141
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = icmp ult i32* %147, %148
  br i1 %149, label %162, label %150

150:                                              ; preds = %146
  %151 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %152 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = icmp ugt i32 %153, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %150, %146
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %174

165:                                              ; preds = %150
  %166 = load i32*, i32** %8, align 8
  %167 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %168 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %167, i32 0, i32 5
  store i32* %166, i32** %168, align 8
  %169 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %170 = call i64 @asn1_valid_der(%struct.asn1_hdr* %169)
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 0, i32 -1
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %165, %162, %127, %115, %105, %92, %57, %20
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @os_memset(%struct.asn1_hdr*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @asn1_valid_der(%struct.asn1_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
