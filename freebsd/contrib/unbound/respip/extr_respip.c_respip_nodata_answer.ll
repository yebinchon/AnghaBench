; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_nodata_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_nodata_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32 }
%struct.regional = type { i32 }

@respip_refuse = common dso_local global i32 0, align 4
@respip_always_refuse = common dso_local global i32 0, align 4
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@respip_static = common dso_local global i32 0, align 4
@respip_redirect = common dso_local global i32 0, align 4
@respip_always_nxdomain = common dso_local global i32 0, align 4
@respip_inform_redirect = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.reply_info*, i64, %struct.reply_info**, %struct.regional*)* @respip_nodata_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @respip_nodata_answer(i64 %0, i32 %1, %struct.reply_info* %2, i64 %3, %struct.reply_info** %4, %struct.regional* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.reply_info**, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca %struct.reply_info*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.reply_info* %2, %struct.reply_info** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.reply_info** %4, %struct.reply_info*** %12, align 8
  store %struct.regional* %5, %struct.regional** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @respip_refuse, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @respip_always_refuse, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19, %6
  %24 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %25 = load %struct.regional*, %struct.regional** %13, align 8
  %26 = call %struct.reply_info* @make_new_reply_info(%struct.reply_info* %24, %struct.regional* %25, i64 0, i64 0)
  store %struct.reply_info* %26, %struct.reply_info** %14, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %28 = icmp ne %struct.reply_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %87

30:                                               ; preds = %23
  %31 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %35 = call i32 @FLAGS_SET_RCODE(i32 %33, i32 %34)
  %36 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %37 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  store %struct.reply_info* %36, %struct.reply_info** %37, align 8
  store i32 1, i32* %7, align 4
  br label %87

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @respip_static, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @respip_redirect, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @respip_always_nxdomain, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @respip_inform_redirect, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50, %46, %42, %38
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @respip_always_nxdomain, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %15, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %67, %62
  %69 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %70 = load %struct.regional*, %struct.regional** %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call %struct.reply_info* @make_new_reply_info(%struct.reply_info* %69, %struct.regional* %70, i64 %71, i64 %72)
  store %struct.reply_info* %73, %struct.reply_info** %14, align 8
  %74 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %75 = icmp ne %struct.reply_info* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %87

77:                                               ; preds = %68
  %78 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %79 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @FLAGS_SET_RCODE(i32 %80, i32 %81)
  %83 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %84 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  store %struct.reply_info* %83, %struct.reply_info** %84, align 8
  store i32 1, i32* %7, align 4
  br label %87

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %85
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %77, %76, %30, %29
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.reply_info* @make_new_reply_info(%struct.reply_info*, %struct.regional*, i64, i64) #1

declare dso_local i32 @FLAGS_SET_RCODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
