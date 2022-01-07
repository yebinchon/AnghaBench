; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry**, i32, i32 (%struct.rsn_pmksa_cache_entry*, i32)*, i32 }
%struct.rsn_pmksa_cache_entry = type { %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmksa_cache_free_entry(%struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache_entry* %1) #0 {
  %3 = alloca %struct.rsn_pmksa_cache*, align 8
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %5 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %6 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %3, align 8
  store %struct.rsn_pmksa_cache_entry* %1, %struct.rsn_pmksa_cache_entry** %4, align 8
  %8 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %9 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %13 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %12, i32 0, i32 3
  %14 = load i32 (%struct.rsn_pmksa_cache_entry*, i32)*, i32 (%struct.rsn_pmksa_cache_entry*, i32)** %13, align 8
  %15 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %16 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %17 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(%struct.rsn_pmksa_cache_entry* %15, i32 %18)
  %20 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PMKID_HASH(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %25 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %24, i32 0, i32 1
  %26 = load %struct.rsn_pmksa_cache_entry**, %struct.rsn_pmksa_cache_entry*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %26, i64 %28
  %30 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %29, align 8
  store %struct.rsn_pmksa_cache_entry* %30, %struct.rsn_pmksa_cache_entry** %5, align 8
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %6, align 8
  br label %31

31:                                               ; preds = %58, %2
  %32 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %33 = icmp ne %struct.rsn_pmksa_cache_entry* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %36 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %37 = icmp eq %struct.rsn_pmksa_cache_entry* %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %40 = icmp ne %struct.rsn_pmksa_cache_entry* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %43 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %42, i32 0, i32 1
  %44 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %43, align 8
  %45 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %46 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %45, i32 0, i32 1
  store %struct.rsn_pmksa_cache_entry* %44, %struct.rsn_pmksa_cache_entry** %46, align 8
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %49 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %48, i32 0, i32 1
  %50 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %49, align 8
  %51 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %52 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %51, i32 0, i32 1
  %53 = load %struct.rsn_pmksa_cache_entry**, %struct.rsn_pmksa_cache_entry*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %53, i64 %55
  store %struct.rsn_pmksa_cache_entry* %50, %struct.rsn_pmksa_cache_entry** %56, align 8
  br label %57

57:                                               ; preds = %47, %41
  br label %63

58:                                               ; preds = %34
  %59 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  store %struct.rsn_pmksa_cache_entry* %59, %struct.rsn_pmksa_cache_entry** %6, align 8
  %60 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %61 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %60, i32 0, i32 1
  %62 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %61, align 8
  store %struct.rsn_pmksa_cache_entry* %62, %struct.rsn_pmksa_cache_entry** %5, align 8
  br label %31

63:                                               ; preds = %57, %31
  %64 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %65 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %64, i32 0, i32 0
  %66 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %65, align 8
  store %struct.rsn_pmksa_cache_entry* %66, %struct.rsn_pmksa_cache_entry** %5, align 8
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %6, align 8
  br label %67

67:                                               ; preds = %90, %63
  %68 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %69 = icmp ne %struct.rsn_pmksa_cache_entry* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %72 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %73 = icmp eq %struct.rsn_pmksa_cache_entry* %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %76 = icmp ne %struct.rsn_pmksa_cache_entry* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %79 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %78, i32 0, i32 0
  %80 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %79, align 8
  %81 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %82 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %81, i32 0, i32 0
  store %struct.rsn_pmksa_cache_entry* %80, %struct.rsn_pmksa_cache_entry** %82, align 8
  br label %89

83:                                               ; preds = %74
  %84 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %85 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %84, i32 0, i32 0
  %86 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %85, align 8
  %87 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %3, align 8
  %88 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %87, i32 0, i32 0
  store %struct.rsn_pmksa_cache_entry* %86, %struct.rsn_pmksa_cache_entry** %88, align 8
  br label %89

89:                                               ; preds = %83, %77
  br label %95

90:                                               ; preds = %70
  %91 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  store %struct.rsn_pmksa_cache_entry* %91, %struct.rsn_pmksa_cache_entry** %6, align 8
  %92 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %93 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %92, i32 0, i32 0
  %94 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %93, align 8
  store %struct.rsn_pmksa_cache_entry* %94, %struct.rsn_pmksa_cache_entry** %5, align 8
  br label %67

95:                                               ; preds = %89, %67
  %96 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %97 = call i32 @_pmksa_cache_free_entry(%struct.rsn_pmksa_cache_entry* %96)
  ret void
}

declare dso_local i32 @PMKID_HASH(i32) #1

declare dso_local i32 @_pmksa_cache_free_entry(%struct.rsn_pmksa_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
