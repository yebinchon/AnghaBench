; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_to_rai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_to_rai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i64, i32, i32, i64, i8*, i32, i32, i8*, i64 }
%struct.addrinfo = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.sockaddr_ib = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@IBV_QPT_RC = common dso_local global i64 0, align 8
@IBV_QPT_UD = common dso_local global i64 0, align 8
@RDMA_PS_TCP = common dso_local global i64 0, align 8
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@RAI_PASSIVE = common dso_local global i32 0, align 4
@RAI_FAMILY = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i64 0, align 8
@RAI_NUMERICHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.addrinfo*)* @ucma_convert_to_rai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_convert_to_rai(%struct.rdma_addrinfo* %0, %struct.rdma_addrinfo* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.rdma_addrinfo*, align 8
  %5 = alloca %struct.rdma_addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.rdma_addrinfo* %0, %struct.rdma_addrinfo** %4, align 8
  store %struct.rdma_addrinfo* %1, %struct.rdma_addrinfo** %5, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %8 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %9 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %16, i32 0, i32 9
  store i64 %15, i64* %17, align 8
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %18
  %23 = load i64, i64* @IBV_QPT_RC, align 8
  %24 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %24, i32 0, i32 9
  store i64 %23, i64* %25, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i64, i64* @IBV_QPT_UD, align 8
  %28 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %29 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %28, i32 0, i32 9
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %18, %26, %22
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %33 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %38 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %41 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %54 [
    i32 131, label %46
    i32 130, label %50
  ]

46:                                               ; preds = %42
  %47 = load i64, i64* @RDMA_PS_TCP, align 8
  %48 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  br label %54

50:                                               ; preds = %42
  %51 = load i64, i64* @RDMA_PS_UDP, align 8
  %52 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %53 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %50, %46
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AI_PASSIVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %55
  %63 = load i32, i32* @RAI_PASSIVE, align 4
  %64 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %65 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @strdup(i64 %73)
  %75 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %76 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %79 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RAI_FAMILY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %77
  %85 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %86 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_IB, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %92 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RAI_NUMERICHOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load i64, i64* @AF_IB, align 8
  %99 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %100 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %102 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %105 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %104, i32 0, i32 7
  %106 = bitcast i32* %105 to %struct.sockaddr_ib**
  %107 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %108 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %107, i32 0, i32 6
  %109 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.sockaddr_in6*
  %113 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ucma_convert_in6(i64 %103, %struct.sockaddr_ib** %106, i32* %108, %struct.sockaddr_in6* %112, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %134

117:                                              ; preds = %90, %84, %77
  %118 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %122 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %124 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %123, i32 0, i32 7
  %125 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %126 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %125, i32 0, i32 6
  %127 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ucma_copy_addr(i32* %124, i32* %126, i64 %129, i32 %132)
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %117, %97
  br label %205

135:                                              ; preds = %55
  %136 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %142 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @strdup(i64 %143)
  %145 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %146 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %149 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RAI_FAMILY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %187

154:                                              ; preds = %147
  %155 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %156 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AF_IB, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %187

160:                                              ; preds = %154
  %161 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %162 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @RAI_NUMERICHOST, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %160
  %168 = load i64, i64* @AF_IB, align 8
  %169 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %170 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %172 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %175 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %174, i32 0, i32 3
  %176 = bitcast i32* %175 to %struct.sockaddr_ib**
  %177 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %178 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %177, i32 0, i32 2
  %179 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %180 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to %struct.sockaddr_in6*
  %183 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %184 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ucma_convert_in6(i64 %173, %struct.sockaddr_ib** %176, i32* %178, %struct.sockaddr_in6* %182, i32 %185)
  store i32 %186, i32* %7, align 4
  br label %204

187:                                              ; preds = %160, %154, %147
  %188 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %189 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %192 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %194 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %193, i32 0, i32 3
  %195 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %196 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %195, i32 0, i32 2
  %197 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %198 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %201 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @ucma_copy_addr(i32* %194, i32* %196, i64 %199, i32 %202)
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %187, %167
  br label %205

205:                                              ; preds = %204, %134
  %206 = load i32, i32* %7, align 4
  ret i32 %206
}

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @ucma_convert_in6(i64, %struct.sockaddr_ib**, i32*, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @ucma_copy_addr(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
