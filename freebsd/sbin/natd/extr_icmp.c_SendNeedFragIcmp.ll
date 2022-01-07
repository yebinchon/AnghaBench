; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_icmp.c_SendNeedFragIcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_icmp.c_SendNeedFragIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i64, i32, i32, i32, %struct.in_addr, %struct.in_addr, i64, i32 }
%struct.in_addr = type { i32 }
%struct.icmp = type { i64, %struct.ip, i8*, i64, i32, i32 }
%struct.sockaddr_in = type { i64, %struct.in_addr, i32 }
%struct.sockaddr = type { i32 }

@IP_MAXPACKET = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_UNREACH_NEEDFRAG = common dso_local global i32 0, align 4
@ICMP_MINLEN = common dso_local global i32 0, align 4
@mla = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot send ICMP message.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendNeedFragIcmp(i32 %0, %struct.ip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca %struct.icmp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.in_addr, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ip* %1, %struct.ip** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @IP_MAXPACKET, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.ip*, %struct.ip** %6, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohs(i32 %25)
  %27 = load i32, i32* @IP_MF, align 4
  %28 = load i32, i32* @IP_DF, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %148

34:                                               ; preds = %3
  %35 = load %struct.ip*, %struct.ip** %6, align 8
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPPROTO_ICMP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %148

41:                                               ; preds = %34
  %42 = bitcast i8* %22 to %struct.ip*
  store %struct.ip* %42, %struct.ip** %10, align 8
  %43 = getelementptr inbounds i8, i8* %22, i64 48
  %44 = bitcast i8* %43 to %struct.icmp*
  store %struct.icmp* %44, %struct.icmp** %11, align 8
  %45 = load i32, i32* @ICMP_UNREACH, align 4
  %46 = load %struct.icmp*, %struct.icmp** %11, align 8
  %47 = getelementptr inbounds %struct.icmp, %struct.icmp* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ICMP_UNREACH_NEEDFRAG, align 4
  %49 = load %struct.icmp*, %struct.icmp** %11, align 8
  %50 = getelementptr inbounds %struct.icmp, %struct.icmp* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.icmp*, %struct.icmp** %11, align 8
  %52 = getelementptr inbounds %struct.icmp, %struct.icmp* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.icmp*, %struct.icmp** %11, align 8
  %54 = getelementptr inbounds %struct.icmp, %struct.icmp* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @htons(i32 %55)
  %57 = load %struct.icmp*, %struct.icmp** %11, align 8
  %58 = getelementptr inbounds %struct.icmp, %struct.icmp* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ip*, %struct.ip** %6, align 8
  %60 = getelementptr inbounds %struct.ip, %struct.ip* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 2
  store i32 %62, i32* %14, align 4
  %63 = load %struct.ip*, %struct.ip** %6, align 8
  %64 = getelementptr inbounds %struct.ip, %struct.ip* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 8
  br i1 %69, label %70, label %71

70:                                               ; preds = %41
  store i32 8, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* @ICMP_MINLEN, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.icmp*, %struct.icmp** %11, align 8
  %79 = getelementptr inbounds %struct.icmp, %struct.icmp* %78, i32 0, i32 1
  %80 = load %struct.ip*, %struct.ip** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @memcpy(%struct.ip* %79, %struct.ip* %80, i32 %81)
  %83 = load i32, i32* @mla, align 4
  %84 = load %struct.icmp*, %struct.icmp** %11, align 8
  %85 = bitcast %struct.icmp* %84 to i32*
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @LibAliasInternetChecksum(i32 %83, i32* %85, i32 %86)
  %88 = load %struct.icmp*, %struct.icmp** %11, align 8
  %89 = getelementptr inbounds %struct.icmp, %struct.icmp* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ip*, %struct.ip** %10, align 8
  %91 = load %struct.ip*, %struct.ip** %6, align 8
  %92 = call i32 @memcpy(%struct.ip* %90, %struct.ip* %91, i32 48)
  %93 = load %struct.ip*, %struct.ip** %10, align 8
  %94 = getelementptr inbounds %struct.ip, %struct.ip* %93, i32 0, i32 3
  store i32 4, i32* %94, align 8
  %95 = load %struct.ip*, %struct.ip** %10, align 8
  %96 = getelementptr inbounds %struct.ip, %struct.ip* %95, i32 0, i32 1
  store i32 5, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 48, %98
  %100 = trunc i64 %99 to i32
  %101 = call i8* @htons(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.ip*, %struct.ip** %10, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* @IPPROTO_ICMP, align 8
  %106 = load %struct.ip*, %struct.ip** %10, align 8
  %107 = getelementptr inbounds %struct.ip, %struct.ip* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ip*, %struct.ip** %10, align 8
  %109 = getelementptr inbounds %struct.ip, %struct.ip* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load %struct.ip*, %struct.ip** %10, align 8
  %111 = getelementptr inbounds %struct.ip, %struct.ip* %110, i32 0, i32 4
  %112 = bitcast %struct.in_addr* %17 to i8*
  %113 = bitcast %struct.in_addr* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  %114 = load %struct.ip*, %struct.ip** %10, align 8
  %115 = getelementptr inbounds %struct.ip, %struct.ip* %114, i32 0, i32 4
  %116 = load %struct.ip*, %struct.ip** %10, align 8
  %117 = getelementptr inbounds %struct.ip, %struct.ip* %116, i32 0, i32 5
  %118 = bitcast %struct.in_addr* %115 to i8*
  %119 = bitcast %struct.in_addr* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 8 %119, i64 4, i1 false)
  %120 = load %struct.ip*, %struct.ip** %10, align 8
  %121 = getelementptr inbounds %struct.ip, %struct.ip* %120, i32 0, i32 5
  %122 = bitcast %struct.in_addr* %121 to i8*
  %123 = bitcast %struct.in_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i32, i32* @mla, align 4
  %125 = load %struct.ip*, %struct.ip** %10, align 8
  %126 = bitcast %struct.ip* %125 to i8*
  %127 = load i32, i32* @IP_MAXPACKET, align 4
  %128 = call i32 @LibAliasIn(i32 %124, i8* %126, i32 %127)
  %129 = load i32, i32* @AF_INET, align 4
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 2
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 1
  %132 = load %struct.ip*, %struct.ip** %10, align 8
  %133 = getelementptr inbounds %struct.ip, %struct.ip* %132, i32 0, i32 4
  %134 = bitcast %struct.in_addr* %131 to i8*
  %135 = bitcast %struct.in_addr* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 4 %135, i64 4, i1 false)
  %136 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.icmp*, %struct.icmp** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  %141 = call i32 @sendto(i32 %137, %struct.icmp* %138, i32 %139, i32 0, %struct.sockaddr* %140, i32 16)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %71
  %146 = call i32 @Warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %71
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %148

148:                                              ; preds = %147, %40, %33
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntohs(i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @memcpy(%struct.ip*, %struct.ip*, i32) #2

declare dso_local i64 @LibAliasInternetChecksum(i32, i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @LibAliasIn(i32, i8*, i32) #2

declare dso_local i32 @sendto(i32, %struct.icmp*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @Warn(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
