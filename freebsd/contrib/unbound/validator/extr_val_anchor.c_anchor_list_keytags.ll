; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_list_keytags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_list_keytags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@keytag_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @anchor_list_keytags(%struct.trust_anchor* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %13 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %114

22:                                               ; preds = %16, %3
  %23 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %29 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %34 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %39, %struct.packed_rrset_data** %10, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %61, %32
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %61

51:                                               ; preds = %46
  %52 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %53 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ds_get_keytag(%struct.TYPE_7__* %54, i64 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %50
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %27, %22
  %66 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %67 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %65
  %71 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %72 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %108

75:                                               ; preds = %70
  %76 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %77 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %82, %struct.packed_rrset_data** %11, align 8
  store i64 0, i64* %8, align 8
  br label %83

83:                                               ; preds = %104, %75
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %86 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %104

94:                                               ; preds = %89
  %95 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %96 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @dnskey_calc_keytag(%struct.TYPE_8__* %97, i64 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %9, align 8
  %103 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %93
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %83

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107, %70, %65
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @keytag_compare, align 4
  %112 = call i32 @qsort(i32* %109, i64 %110, i32 4, i32 %111)
  %113 = load i64, i64* %9, align 8
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %108, %21
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local i32 @ds_get_keytag(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @dnskey_calc_keytag(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
