; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_make_new_reply_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_make_new_reply_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32*, i32, i32, i32, i32, i32 }
%struct.regional = type { i32 }

@sec_status_insecure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reply_info* (%struct.reply_info*, %struct.regional*, i64, i64)* @make_new_reply_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reply_info* @make_new_reply_info(%struct.reply_info* %0, %struct.regional* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.regional*, %struct.regional** %7, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @sec_status_insecure, align 4
  %31 = call %struct.reply_info* @construct_reply_info_base(%struct.regional* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i64 %28, i32 0, i32 0, i64 %29, i32 %30)
  store %struct.reply_info* %31, %struct.reply_info** %10, align 8
  %32 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %33 = icmp ne %struct.reply_info* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store %struct.reply_info* null, %struct.reply_info** %5, align 8
  br label %63

35:                                               ; preds = %4
  %36 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %37 = load %struct.regional*, %struct.regional** %7, align 8
  %38 = call i32 @reply_info_alloc_rrset_keys(%struct.reply_info* %36, i32* null, %struct.regional* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.reply_info* null, %struct.reply_info** %5, align 8
  br label %63

41:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %48 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  store %struct.reply_info* %62, %struct.reply_info** %5, align 8
  br label %63

63:                                               ; preds = %61, %40, %34
  %64 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  ret %struct.reply_info* %64
}

declare dso_local %struct.reply_info* @construct_reply_info_base(%struct.regional*, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32) #1

declare dso_local i32 @reply_info_alloc_rrset_keys(%struct.reply_info*, i32*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
