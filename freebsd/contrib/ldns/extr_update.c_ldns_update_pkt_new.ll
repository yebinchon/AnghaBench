; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_pkt_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_pkt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@LDNS_RR_CLASS_IN = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_PACKET_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ldns_update_pkt_new(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %82

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @LDNS_RR_CLASS_IN, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @LDNS_RD, align 4
  %29 = call %struct.TYPE_11__* @ldns_pkt_query_new(i32* %25, i32 %26, i64 %27, i32 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %12, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %82

33:                                               ; preds = %24
  store i32* null, i32** %7, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = load i32, i32* @LDNS_PACKET_UPDATE, align 4
  %36 = call i32 @ldns_pkt_set_opcode(%struct.TYPE_11__* %34, i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ldns_rr_list_deep_free(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @ldns_rr_list_clone(i32* %42)
  %44 = call i32 @ldns_pkt_set_authority(%struct.TYPE_11__* %41, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ldns_rr_list_rr_count(i32* %46)
  %48 = call i32 @ldns_update_set_upcount(%struct.TYPE_11__* %45, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %33
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ldns_rr_list_deep_free(i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ldns_rr_list_clone(i32* %57)
  %59 = call i32 @ldns_pkt_set_answer(%struct.TYPE_11__* %56, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @ldns_rr_list_rr_count(i32* %61)
  %63 = call i32 @ldns_update_set_prcount(%struct.TYPE_11__* %60, i32 %62)
  br label %64

64:                                               ; preds = %51, %33
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ldns_rr_list_deep_free(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @ldns_rr_list_clone(i32* %73)
  %75 = call i32 @ldns_pkt_set_additional(%struct.TYPE_11__* %72, i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @ldns_rr_list_rr_count(i32* %77)
  %79 = call i32 @ldns_update_set_adcount(%struct.TYPE_11__* %76, i32 %78)
  br label %80

80:                                               ; preds = %67, %64
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %6, align 8
  br label %82

82:                                               ; preds = %80, %32, %18
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %83
}

declare dso_local %struct.TYPE_11__* @ldns_pkt_query_new(i32*, i32, i64, i32) #1

declare dso_local i32 @ldns_pkt_set_opcode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32) #1

declare dso_local i32 @ldns_pkt_set_authority(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_rr_list_clone(i32*) #1

declare dso_local i32 @ldns_update_set_upcount(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_pkt_set_answer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_update_set_prcount(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_pkt_set_additional(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ldns_update_set_adcount(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
