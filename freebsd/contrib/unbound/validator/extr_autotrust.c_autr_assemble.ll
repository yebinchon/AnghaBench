; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_4__*, i8*, i8*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key* }
%struct.TYPE_4__ = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@assemble_iterate_ds = common dso_local global i32 0, align 4
@assemble_iterate_dnskey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trust_anchor*)* @autr_assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autr_assemble(%struct.trust_anchor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trust_anchor*, align 8
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %3, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %5, align 8
  %6 = load i32, i32* @assemble_iterate_ds, align 4
  %7 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %8 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @assemble_iterate_hasfirst(i32 %6, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @assemble_iterate_ds, align 4
  %16 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %17 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ub_packed_rrset_key* @ub_packed_rrset_heap_key(i32 %15, i32 %20)
  store %struct.ub_packed_rrset_key* %21, %struct.ub_packed_rrset_key** %4, align 8
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %23 = icmp ne %struct.ub_packed_rrset_key* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %80

25:                                               ; preds = %14
  %26 = load i32, i32* @assemble_iterate_ds, align 4
  %27 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %28 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @packed_rrset_heap_data(i32 %26, i32 %31)
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %37 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %80

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* @assemble_iterate_dnskey, align 4
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %46 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @assemble_iterate_hasfirst(i32 %44, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %43
  %53 = load i32, i32* @assemble_iterate_dnskey, align 4
  %54 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %55 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.ub_packed_rrset_key* @ub_packed_rrset_heap_key(i32 %53, i32 %58)
  store %struct.ub_packed_rrset_key* %59, %struct.ub_packed_rrset_key** %5, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %61 = icmp ne %struct.ub_packed_rrset_key* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %80

63:                                               ; preds = %52
  %64 = load i32, i32* @assemble_iterate_dnskey, align 4
  %65 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %66 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @packed_rrset_heap_data(i32 %64, i32 %69)
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %72 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %62, %41, %24
  %81 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %82 = call i32 @autr_rrset_delete(%struct.ub_packed_rrset_key* %81)
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %84 = call i32 @autr_rrset_delete(%struct.ub_packed_rrset_key* %83)
  store i32 0, i32* %2, align 4
  br label %119

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %43
  %87 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %88 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %87, i32 0, i32 4
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %88, align 8
  %90 = call i32 @autr_rrset_delete(%struct.ub_packed_rrset_key* %89)
  %91 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %92 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %91, i32 0, i32 3
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %92, align 8
  %94 = call i32 @autr_rrset_delete(%struct.ub_packed_rrset_key* %93)
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %96 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %97 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %96, i32 0, i32 4
  store %struct.ub_packed_rrset_key* %95, %struct.ub_packed_rrset_key** %97, align 8
  %98 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %100 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %99, i32 0, i32 3
  store %struct.ub_packed_rrset_key* %98, %struct.ub_packed_rrset_key** %100, align 8
  %101 = load i32, i32* @assemble_iterate_ds, align 4
  %102 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %103 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @assemble_iterate_count(i32 %101, i32 %106)
  %108 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %109 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @assemble_iterate_dnskey, align 4
  %111 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %112 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @assemble_iterate_count(i32 %110, i32 %115)
  %117 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %118 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %86, %80
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @assemble_iterate_hasfirst(i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @ub_packed_rrset_heap_key(i32, i32) #1

declare dso_local i8* @packed_rrset_heap_data(i32, i32) #1

declare dso_local i32 @autr_rrset_delete(%struct.ub_packed_rrset_key*) #1

declare dso_local i8* @assemble_iterate_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
