; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_adjust_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_adjust_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_env = type { i64 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@MIN_TTL = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"rrset TTL larger than original and minimum TTL, adjusting TTL downwards to minimum ttl\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"rrset TTL larger than original TTL, adjusting TTL downwards to original ttl\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"rrset TTL larger than sig expiration ttl, adjusting TTL downwards\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_env*, i64, %struct.ub_packed_rrset_key*, i32*, i32*, i32*)* @adjust_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_ttl(%struct.val_env* %0, i64 %1, %struct.ub_packed_rrset_key* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.val_env* %0, %struct.val_env** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %23, %struct.packed_rrset_data** %13, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @memmove(i64* %14, i32* %24, i32 8)
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @memmove(i64* %16, i32* %26, i32 8)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @memmove(i64* %17, i32* %28, i32 8)
  %30 = load i64, i64* %16, align 8
  %31 = call i64 @ntohl(i64 %30)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i64 @ntohl(i64 %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @ntohl(i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.val_env*, %struct.val_env** %7, align 8
  %37 = getelementptr inbounds %struct.val_env, %struct.val_env* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.val_env*, %struct.val_env** %7, align 8
  %42 = getelementptr inbounds %struct.val_env, %struct.val_env* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %18, align 8
  br label %46

44:                                               ; preds = %6
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %18, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %18, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* @MIN_TTL, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %55 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MIN_TTL, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @VERB_QUERY, align 4
  %61 = call i32 @verbose(i32 %60, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %62 = load i64, i64* @MIN_TTL, align 8
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %64 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %82

65:                                               ; preds = %53, %46
  %66 = load i64, i64* @MIN_TTL, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %71 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @VERB_QUERY, align 4
  %77 = call i32 @verbose(i32 %76, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %80 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %69, %65
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i64, i64* %15, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %87 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* @VERB_ALGO, align 4
  %93 = call i32 @verbose(i32 %92, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %85, %82
  ret void
}

declare dso_local i32 @memmove(i64*, i32*, i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
