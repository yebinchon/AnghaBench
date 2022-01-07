; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_alloc_rrset_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_alloc_rrset_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.ub_packed_rrset_key* }
%struct.alloc_cache = type { i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_info_alloc_rrset_keys(%struct.reply_info* %0, %struct.alloc_cache* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.alloc_cache*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %83, %3
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %12 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %9
  %16 = load %struct.regional*, %struct.regional** %7, align 8
  %17 = icmp ne %struct.regional* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load %struct.regional*, %struct.regional** %7, align 8
  %20 = call i64 @regional_alloc(%struct.regional* %19, i32 16)
  %21 = inttoptr i64 %20 to %struct.ub_packed_rrset_key*
  %22 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 1
  %24 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, i64 %25
  store %struct.ub_packed_rrset_key* %21, %struct.ub_packed_rrset_key** %26, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 1
  %29 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, i64 %30
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %31, align 8
  %33 = icmp ne %struct.ub_packed_rrset_key* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %18
  %35 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 1
  %37 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %37, i64 %38
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %39, align 8
  %41 = call i32 @memset(%struct.ub_packed_rrset_key* %40, i32 0, i32 16)
  %42 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %43 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %42, i32 0, i32 1
  %44 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %44, i64 %45
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %46, align 8
  %48 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %49 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %48, i32 0, i32 1
  %50 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %50, i64 %51
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %52, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %47, %struct.ub_packed_rrset_key** %55, align 8
  br label %56

56:                                               ; preds = %34, %18
  br label %65

57:                                               ; preds = %15
  %58 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %59 = call %struct.ub_packed_rrset_key* @alloc_special_obtain(%struct.alloc_cache* %58)
  %60 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %61 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %60, i32 0, i32 1
  %62 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %62, i64 %63
  store %struct.ub_packed_rrset_key* %59, %struct.ub_packed_rrset_key** %64, align 8
  br label %65

65:                                               ; preds = %57, %56
  %66 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %67 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %66, i32 0, i32 1
  %68 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %68, i64 %69
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %70, align 8
  %72 = icmp ne %struct.ub_packed_rrset_key* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %87

74:                                               ; preds = %65
  %75 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %76 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %75, i32 0, i32 1
  %77 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %77, i64 %78
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %79, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %9

86:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @alloc_special_obtain(%struct.alloc_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
