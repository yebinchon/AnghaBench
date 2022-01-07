; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.reply_info*, %struct.TYPE_2__ }
%struct.reply_info = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i32, i32, i32, i32 }

@BIT_QR = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.regional*, %struct.query_info*)* @msg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @msg_create(%struct.regional* %0, %struct.query_info* %1) #0 {
  %3 = alloca %struct.dns_msg*, align 8
  %4 = alloca %struct.regional*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.dns_msg*, align 8
  store %struct.regional* %0, %struct.regional** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %7 = load %struct.regional*, %struct.regional** %4, align 8
  %8 = call i64 @regional_alloc(%struct.regional* %7, i32 32)
  %9 = inttoptr i64 %8 to %struct.dns_msg*
  store %struct.dns_msg* %9, %struct.dns_msg** %6, align 8
  %10 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %11 = icmp ne %struct.dns_msg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.regional*, %struct.regional** %4, align 8
  %15 = load %struct.query_info*, %struct.query_info** %5, align 8
  %16 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.query_info*, %struct.query_info** %5, align 8
  %19 = getelementptr inbounds %struct.query_info, %struct.query_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regional_alloc_init(%struct.regional* %14, i32 %17, i32 %20)
  %22 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %23 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %26 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %81

31:                                               ; preds = %13
  %32 = load %struct.query_info*, %struct.query_info** %5, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %36 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.query_info*, %struct.query_info** %5, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.query_info*, %struct.query_info** %5, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %48 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %51 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.regional*, %struct.regional** %4, align 8
  %54 = call i64 @regional_alloc_zero(%struct.regional* %53, i32 12)
  %55 = inttoptr i64 %54 to %struct.reply_info*
  %56 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %57 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %56, i32 0, i32 0
  store %struct.reply_info* %55, %struct.reply_info** %57, align 8
  %58 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %59 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %58, i32 0, i32 0
  %60 = load %struct.reply_info*, %struct.reply_info** %59, align 8
  %61 = icmp ne %struct.reply_info* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %31
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %81

63:                                               ; preds = %31
  %64 = load i32, i32* @BIT_QR, align 4
  %65 = load i32, i32* @BIT_AA, align 4
  %66 = or i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %69 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %68, i32 0, i32 0
  %70 = load %struct.reply_info*, %struct.reply_info** %69, align 8
  %71 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %70, i32 0, i32 2
  store i64 %67, i64* %71, align 8
  %72 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %73 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %72, i32 0, i32 0
  %74 = load %struct.reply_info*, %struct.reply_info** %73, align 8
  %75 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %77 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %76, i32 0, i32 0
  %78 = load %struct.reply_info*, %struct.reply_info** %77, align 8
  %79 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  store %struct.dns_msg* %80, %struct.dns_msg** %3, align 8
  br label %81

81:                                               ; preds = %63, %62, %30, %12
  %82 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  ret %struct.dns_msg* %82
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
