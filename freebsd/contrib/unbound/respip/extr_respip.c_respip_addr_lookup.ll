; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_addr_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_addr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resp_addr = type opaque
%struct.reply_info = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rbtree_type = type { i32 }
%struct.sockaddr_storage = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resp_addr* (%struct.reply_info*, %struct.rbtree_type*, i64*)* @respip_addr_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resp_addr* @respip_addr_lookup(%struct.reply_info* %0, %struct.rbtree_type* %1, i64* %2) #0 {
  %4 = alloca %struct.resp_addr*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.rbtree_type*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.resp_addr*, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.rbtree_type* %1, %struct.rbtree_type** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %79, %3
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %15
  %22 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ntohs(i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %79

40:                                               ; preds = %35, %21
  %41 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %42 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %48, align 8
  store %struct.packed_rrset_data* %49, %struct.packed_rrset_data** %13, align 8
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %75, %40
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @rdata2sockaddr(%struct.packed_rrset_data* %57, i64 %58, i64 %59, %struct.sockaddr_storage* %10, i32* %11)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.rbtree_type*, %struct.rbtree_type** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @addr_tree_lookup(%struct.rbtree_type* %64, %struct.sockaddr_storage* %10, i32 %65)
  %67 = inttoptr i64 %66 to %struct.resp_addr*
  store %struct.resp_addr* %67, %struct.resp_addr** %9, align 8
  %68 = load %struct.resp_addr*, %struct.resp_addr** %9, align 8
  %69 = icmp ne %struct.resp_addr* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  %73 = load %struct.resp_addr*, %struct.resp_addr** %9, align 8
  store %struct.resp_addr* %73, %struct.resp_addr** %4, align 8
  br label %83

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %50

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %15

82:                                               ; preds = %15
  store %struct.resp_addr* null, %struct.resp_addr** %4, align 8
  br label %83

83:                                               ; preds = %82, %70
  %84 = load %struct.resp_addr*, %struct.resp_addr** %4, align 8
  ret %struct.resp_addr* %84
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @rdata2sockaddr(%struct.packed_rrset_data*, i64, i64, %struct.sockaddr_storage*, i32*) #1

declare dso_local i64 @addr_tree_lookup(%struct.rbtree_type*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
