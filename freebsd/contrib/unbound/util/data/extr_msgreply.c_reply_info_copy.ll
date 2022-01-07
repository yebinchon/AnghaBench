; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.alloc_cache = type { i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reply_info* @reply_info_copy(%struct.reply_info* %0, %struct.alloc_cache* %1, %struct.regional* %2) #0 {
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.alloc_cache*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.reply_info*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %9 = load %struct.regional*, %struct.regional** %7, align 8
  %10 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %11 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %38 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.reply_info* @construct_reply_info_base(%struct.regional* %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  store %struct.reply_info* %40, %struct.reply_info** %8, align 8
  %41 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %42 = icmp ne %struct.reply_info* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %3
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %74

44:                                               ; preds = %3
  %45 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %46 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %47 = load %struct.regional*, %struct.regional** %7, align 8
  %48 = call i32 @reply_info_alloc_rrset_keys(%struct.reply_info* %45, %struct.alloc_cache* %46, %struct.regional* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.regional*, %struct.regional** %7, align 8
  %52 = icmp ne %struct.regional* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %55 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %56 = call i32 @reply_info_parsedelete(%struct.reply_info* %54, %struct.alloc_cache* %55)
  br label %57

57:                                               ; preds = %53, %50
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %74

58:                                               ; preds = %44
  %59 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %60 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %61 = load %struct.regional*, %struct.regional** %7, align 8
  %62 = call i32 @repinfo_copy_rrsets(%struct.reply_info* %59, %struct.reply_info* %60, %struct.regional* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load %struct.regional*, %struct.regional** %7, align 8
  %66 = icmp ne %struct.regional* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %69 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %70 = call i32 @reply_info_parsedelete(%struct.reply_info* %68, %struct.alloc_cache* %69)
  br label %71

71:                                               ; preds = %67, %64
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %74

72:                                               ; preds = %58
  %73 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  store %struct.reply_info* %73, %struct.reply_info** %4, align 8
  br label %74

74:                                               ; preds = %72, %71, %57, %43
  %75 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  ret %struct.reply_info* %75
}

declare dso_local %struct.reply_info* @construct_reply_info_base(%struct.regional*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reply_info_alloc_rrset_keys(%struct.reply_info*, %struct.alloc_cache*, %struct.regional*) #1

declare dso_local i32 @reply_info_parsedelete(%struct.reply_info*, %struct.alloc_cache*) #1

declare dso_local i32 @repinfo_copy_rrsets(%struct.reply_info*, %struct.reply_info*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
