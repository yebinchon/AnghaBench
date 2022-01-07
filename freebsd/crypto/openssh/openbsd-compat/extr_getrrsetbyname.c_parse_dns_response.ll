; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_parse_dns_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_parse_dns_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_response = type { i32*, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@HFIXEDSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_response* (i32*, i32)* @parse_dns_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_response* @parse_dns_response(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.dns_response*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns_response*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.dns_response* @calloc(i32 1, i32 48)
  store %struct.dns_response* %8, %struct.dns_response** %6, align 8
  %9 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %10 = icmp eq %struct.dns_response* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %15 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %14, i32 0, i32 1
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @HFIXEDSZ, align 4
  %18 = call i32 @memcpy(%struct.TYPE_2__* %15, i32* %16, i32 %17)
  %19 = load i32, i32* @HFIXEDSZ, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %7, align 8
  %23 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %24 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ntohs(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %30 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %33 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @ntohs(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %39 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %42 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @ntohs(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %48 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %51 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohs(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %57 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %60 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %12
  %65 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %66 = call i32 @free_dns_response(%struct.dns_response* %65)
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

67:                                               ; preds = %12
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %71 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @parse_dns_qsection(i32* %68, i32 %69, i32** %7, i32 %73)
  %75 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %76 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %78 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %67
  %83 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %84 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %89 = call i32 @free_dns_response(%struct.dns_response* %88)
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

90:                                               ; preds = %82, %67
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %94 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @parse_dns_rrsection(i32* %91, i32 %92, i32** %7, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %100 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %102 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %90
  %107 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %108 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %113 = call i32 @free_dns_response(%struct.dns_response* %112)
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

114:                                              ; preds = %106, %90
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %118 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @parse_dns_rrsection(i32* %115, i32 %116, i32** %7, i32 %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %124 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %126 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %114
  %131 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %132 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %137 = call i32 @free_dns_response(%struct.dns_response* %136)
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

138:                                              ; preds = %130, %114
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %142 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @parse_dns_rrsection(i32* %139, i32 %140, i32** %7, i32 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %148 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %147, i32 0, i32 0
  store i32* %146, i32** %148, align 8
  %149 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %150 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %138
  %155 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %156 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  %161 = call i32 @free_dns_response(%struct.dns_response* %160)
  store %struct.dns_response* null, %struct.dns_response** %3, align 8
  br label %164

162:                                              ; preds = %154, %138
  %163 = load %struct.dns_response*, %struct.dns_response** %6, align 8
  store %struct.dns_response* %163, %struct.dns_response** %3, align 8
  br label %164

164:                                              ; preds = %162, %159, %135, %111, %87, %64, %11
  %165 = load %struct.dns_response*, %struct.dns_response** %3, align 8
  ret %struct.dns_response* %165
}

declare dso_local %struct.dns_response* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @free_dns_response(%struct.dns_response*) #1

declare dso_local i32* @parse_dns_qsection(i32*, i32, i32**, i32) #1

declare dso_local i8* @parse_dns_rrsection(i32*, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
