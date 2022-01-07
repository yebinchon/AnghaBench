; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_copy_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_copy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.lruhash_entry = type { i32*, i32* }
%struct.query_info = type { i32, i32* }
%struct.reply_info = type { i32, i32*, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { i32 }

@RR_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, %struct.lruhash_entry*, %struct.query_info**, %struct.reply_info**)* @copy_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_msg(%struct.regional* %0, %struct.lruhash_entry* %1, %struct.query_info** %2, %struct.reply_info** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.lruhash_entry*, align 8
  %8 = alloca %struct.query_info**, align 8
  %9 = alloca %struct.reply_info**, align 8
  %10 = alloca %struct.reply_info*, align 8
  store %struct.regional* %0, %struct.regional** %6, align 8
  store %struct.lruhash_entry* %1, %struct.lruhash_entry** %7, align 8
  store %struct.query_info** %2, %struct.query_info*** %8, align 8
  store %struct.reply_info** %3, %struct.reply_info*** %9, align 8
  %11 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %12 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.reply_info*
  store %struct.reply_info* %14, %struct.reply_info** %10, align 8
  %15 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RR_COUNT_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

21:                                               ; preds = %4
  %22 = load %struct.regional*, %struct.regional** %6, align 8
  %23 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %24 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %27 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = add i64 24, %31
  %33 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %34 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = add i64 %32, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32* @regional_alloc_init(%struct.regional* %22, i32* %25, i32 %39)
  %41 = bitcast i32* %40 to %struct.reply_info*
  %42 = load %struct.reply_info**, %struct.reply_info*** %9, align 8
  store %struct.reply_info* %41, %struct.reply_info** %42, align 8
  %43 = load %struct.reply_info**, %struct.reply_info*** %9, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %43, align 8
  %45 = icmp ne %struct.reply_info* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %95

47:                                               ; preds = %21
  %48 = load %struct.reply_info**, %struct.reply_info*** %9, align 8
  %49 = load %struct.reply_info*, %struct.reply_info** %48, align 8
  %50 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = bitcast i32* %58 to i8*
  %60 = bitcast i8* %59 to %struct.ub_packed_rrset_key**
  %61 = load %struct.reply_info**, %struct.reply_info*** %9, align 8
  %62 = load %struct.reply_info*, %struct.reply_info** %61, align 8
  %63 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %62, i32 0, i32 2
  store %struct.ub_packed_rrset_key** %60, %struct.ub_packed_rrset_key*** %63, align 8
  %64 = load %struct.regional*, %struct.regional** %6, align 8
  %65 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %66 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @regional_alloc_init(%struct.regional* %64, i32* %67, i32 16)
  %69 = bitcast i32* %68 to %struct.query_info*
  %70 = load %struct.query_info**, %struct.query_info*** %8, align 8
  store %struct.query_info* %69, %struct.query_info** %70, align 8
  %71 = load %struct.query_info**, %struct.query_info*** %8, align 8
  %72 = load %struct.query_info*, %struct.query_info** %71, align 8
  %73 = icmp ne %struct.query_info* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %95

75:                                               ; preds = %47
  %76 = load %struct.regional*, %struct.regional** %6, align 8
  %77 = load %struct.query_info**, %struct.query_info*** %8, align 8
  %78 = load %struct.query_info*, %struct.query_info** %77, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.query_info**, %struct.query_info*** %8, align 8
  %82 = load %struct.query_info*, %struct.query_info** %81, align 8
  %83 = getelementptr inbounds %struct.query_info, %struct.query_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @regional_alloc_init(%struct.regional* %76, i32* %80, i32 %84)
  %86 = load %struct.query_info**, %struct.query_info*** %8, align 8
  %87 = load %struct.query_info*, %struct.query_info** %86, align 8
  %88 = getelementptr inbounds %struct.query_info, %struct.query_info* %87, i32 0, i32 1
  store i32* %85, i32** %88, align 8
  %89 = load %struct.query_info**, %struct.query_info*** %8, align 8
  %90 = load %struct.query_info*, %struct.query_info** %89, align 8
  %91 = getelementptr inbounds %struct.query_info, %struct.query_info* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %75, %74, %46, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32* @regional_alloc_init(%struct.regional*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
