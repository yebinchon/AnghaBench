; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.edns_data = type { i32, i32, i64, i32, i32, i64 }

@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@serviced_query_UDP_EDNS_FRAG = common dso_local global i64 0, align 8
@EDNS_FRAG_SIZE_IP6 = common dso_local global i64 0, align 8
@EDNS_ADVERTISED_SIZE = common dso_local global i64 0, align 8
@EDNS_FRAG_SIZE_IP4 = common dso_local global i64 0, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serviced_query*, i32*, i32)* @serviced_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serviced_encode(%struct.serviced_query* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.serviced_query*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.edns_data, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %9 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %8, i32 0, i32 7
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %16 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %21 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %20, i32 0, i32 7
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %26 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %29 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @serviced_perturb_qname(i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %19, %14, %3
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sldns_buffer_clear(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @sldns_buffer_write_u16(i32* %35, i32 0)
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %39 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %42 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sldns_buffer_write(i32* %37, i32 %40, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @sldns_buffer_flip(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %122

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %53 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %55 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %59 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %49
  %64 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %65 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %64, i32 0, i32 3
  %66 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %67 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @addr_is_ip6(i32* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load i64, i64* @EDNS_FRAG_SIZE_IP6, align 8
  %73 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* @EDNS_FRAG_SIZE_IP6, align 8
  %77 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  br label %81

78:                                               ; preds = %71
  %79 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %80 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %93

82:                                               ; preds = %63
  %83 = load i64, i64* @EDNS_FRAG_SIZE_IP4, align 8
  %84 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* @EDNS_FRAG_SIZE_IP4, align 8
  %88 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  br label %92

89:                                               ; preds = %82
  %90 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %91 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %81
  br label %97

94:                                               ; preds = %49
  %95 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %96 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %100 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @EDNS_DO, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EDNS_DO, align 4
  %107 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %97
  %109 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %110 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BIT_CD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @sldns_buffer_begin(i32* %116)
  %118 = call i32 @LDNS_CD_SET(i32 %117)
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @attach_edns_record(i32* %120, %struct.edns_data* %7)
  br label %122

122:                                              ; preds = %119, %32
  ret void
}

declare dso_local i32 @serviced_perturb_qname(i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32, i32) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i64 @addr_is_ip6(i32*, i32) #1

declare dso_local i32 @LDNS_CD_SET(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @attach_edns_record(i32*, %struct.edns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
