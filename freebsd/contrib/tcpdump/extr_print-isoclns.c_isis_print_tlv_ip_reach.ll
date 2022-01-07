; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_tlv_ip_reach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_tlv_ip_reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isis_tlv_ip_reach = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"short IPv4 Reachability (%d vs %lu)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%sIPv4 prefix: %s mask %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%sIPv4 prefix: %15s/%u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c", Distribution: %s, Metric: %u, %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s  Delay Metric: %u, %s\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s  Expense Metric: %u, %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s  Error Metric: %u, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @isis_print_tlv_ip_reach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_tlv_ip_reach(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.isis_tlv_ip_reach*, align 8
  %12 = alloca %struct.isis_tlv_ip_reach, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.isis_tlv_ip_reach*
  store %struct.isis_tlv_ip_reach* %14, %struct.isis_tlv_ip_reach** %11, align 8
  br label %15

15:                                               ; preds = %168, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %175

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ND_PRINT(i32* inttoptr (i64 24 to i32*))
  store i32 0, i32* %5, align 4
  br label %176

26:                                               ; preds = %18
  %27 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %28 = bitcast %struct.isis_tlv_ip_reach* %12 to i8*
  %29 = bitcast %struct.isis_tlv_ip_reach* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 24, i1 false)
  %30 = call i32 @ND_TTEST(%struct.isis_tlv_ip_reach* byval(%struct.isis_tlv_ip_reach) align 8 %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %176

33:                                               ; preds = %26
  %34 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %35 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXTRACT_32BITS(i32 %36)
  %38 = call i32 @mask2plen(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %46 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ipaddr_string(i32* %44, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %51 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ipaddr_string(i32* %49, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @ND_PRINT(i32* %55)
  br label %69

57:                                               ; preds = %33
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %62 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ipaddr_string(i32* %60, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  br label %69

69:                                               ; preds = %57, %41
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %72 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ISIS_LSP_TLV_METRIC_UPDOWN(i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %79 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %80 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %82)
  %84 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %85 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %92 = bitcast i8* %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  %94 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %95 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %69
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %104 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %106)
  %108 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %109 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %116 = bitcast i8* %115 to i32*
  %117 = call i32 @ND_PRINT(i32* %116)
  br label %118

118:                                              ; preds = %100, %69
  %119 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %120 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %118
  %126 = load i32*, i32** %6, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %129 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %131)
  %133 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %134 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %136)
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %141 = bitcast i8* %140 to i32*
  %142 = call i32 @ND_PRINT(i32* %141)
  br label %143

143:                                              ; preds = %125, %118
  %144 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %145 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %168, label %150

150:                                              ; preds = %143
  %151 = load i32*, i32** %6, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %154 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %156)
  %158 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %159 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %161)
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %166 = bitcast i8* %165 to i32*
  %167 = call i32 @ND_PRINT(i32* %166)
  br label %168

168:                                              ; preds = %150, %143
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 24
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %9, align 4
  %173 = load %struct.isis_tlv_ip_reach*, %struct.isis_tlv_ip_reach** %11, align 8
  %174 = getelementptr inbounds %struct.isis_tlv_ip_reach, %struct.isis_tlv_ip_reach* %173, i32 1
  store %struct.isis_tlv_ip_reach* %174, %struct.isis_tlv_ip_reach** %11, align 8
  br label %15

175:                                              ; preds = %15
  store i32 1, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %32, %22
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST(%struct.isis_tlv_ip_reach* byval(%struct.isis_tlv_ip_reach) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mask2plen(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32) #1

declare dso_local i64 @ISIS_LSP_TLV_METRIC_UPDOWN(i32) #1

declare dso_local i32 @ISIS_LSP_TLV_METRIC_VALUE(i32) #1

declare dso_local i64 @ISIS_LSP_TLV_METRIC_IE(i32) #1

declare dso_local i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
