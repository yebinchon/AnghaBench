; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_copy_decompress_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_copy_decompress_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.rrset_parse = type { i32, i32, i32, i32, i32, i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32 }
%struct.packed_rrset_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_copy_decompress_rrset(i32* %0, %struct.msg_parse* %1, %struct.rrset_parse* %2, %struct.regional* %3, %struct.ub_packed_rrset_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msg_parse*, align 8
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %8, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %9, align 8
  store %struct.regional* %3, %struct.regional** %10, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %11, align 8
  %13 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %14 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %20 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.regional*, %struct.regional** %10, align 8
  %26 = icmp ne %struct.regional* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.regional*, %struct.regional** %10, align 8
  %29 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %30 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @regional_alloc(%struct.regional* %28, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  br label %46

37:                                               ; preds = %5
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %39 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %44 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32* %42, i32** %45, align 8
  br label %46

46:                                               ; preds = %37, %27
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %48 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %104

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %56 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %60 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dname_pkt_copy(i32* %54, i32* %58, i32 %61)
  %63 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %64 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %71 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %74 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %78 = load %struct.regional*, %struct.regional** %10, align 8
  %79 = call i32 @parse_create_rrset(i32* %76, %struct.rrset_parse* %77, %struct.packed_rrset_data** %12, %struct.regional* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %104

82:                                               ; preds = %53
  %83 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %84 = bitcast %struct.packed_rrset_data* %83 to i8*
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %86 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %89 = bitcast %struct.ub_packed_rrset_key* %88 to i8*
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %91 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %94 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %100 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %101 = call i32 @get_rrset_trust(%struct.msg_parse* %99, %struct.rrset_parse* %100)
  %102 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %103 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %82, %81, %52
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @parse_create_rrset(i32*, %struct.rrset_parse*, %struct.packed_rrset_data**, %struct.regional*) #1

declare dso_local i32 @get_rrset_trust(%struct.msg_parse*, %struct.rrset_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
