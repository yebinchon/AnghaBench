; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_sizeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32, i32, i32*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packed_rrset_sizeof(%struct.packed_rrset_data* %0) #0 {
  %2 = alloca %struct.packed_rrset_data*, align 8
  %3 = alloca i64, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %2, align 8
  %4 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %5 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %10 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %9, i32 0, i32 3
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %13 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %16 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %11, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %25 = bitcast %struct.packed_rrset_data* %24 to i32*
  %26 = ptrtoint i32* %23 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %31 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %32, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %29, %44
  store i64 %45, i64* %3, align 8
  br label %82

46:                                               ; preds = %1
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %48 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @log_assert(i32 %51)
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %57 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %65 = bitcast %struct.packed_rrset_data* %64 to i32*
  %66 = ptrtoint i32* %63 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %71 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %74 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %69, %80
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %46, %8
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
