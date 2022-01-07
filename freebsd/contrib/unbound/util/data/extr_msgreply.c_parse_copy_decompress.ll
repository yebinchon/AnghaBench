; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_copy_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_copy_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { %struct.rrset_parse* }
%struct.rrset_parse = type { %struct.rrset_parse* }
%struct.reply_info = type { i64, i64, i64, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.regional = type { i32 }
%struct.packed_rrset_data = type { i64 }

@MAX_TTL = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i32 0, align 4
@NORR_TTL = common dso_local global i64 0, align 8
@SERVE_EXPIRED_TTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*, %struct.reply_info*, %struct.regional*)* @parse_copy_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_copy_decompress(i32* %0, %struct.msg_parse* %1, %struct.reply_info* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.msg_parse*, align 8
  %8 = alloca %struct.reply_info*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rrset_parse*, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %7, align 8
  store %struct.reply_info* %2, %struct.reply_info** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %13 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %14 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %13, i32 0, i32 0
  %15 = load %struct.rrset_parse*, %struct.rrset_parse** %14, align 8
  store %struct.rrset_parse* %15, %struct.rrset_parse** %11, align 8
  %16 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %17 = call i32 @log_assert(%struct.reply_info* %16)
  %18 = load i64, i64* @MAX_TTL, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @sec_status_unchecked, align 4
  %22 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i64, i64* @NORR_TTL, align 8
  %30 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %4
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %42 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %43 = load %struct.regional*, %struct.regional** %9, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %45 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @parse_copy_decompress_rrset(i32* %40, %struct.msg_parse* %41, %struct.rrset_parse* %42, %struct.regional* %43, %struct.TYPE_4__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %98

53:                                               ; preds = %39
  %54 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %63, %struct.packed_rrset_data** %12, align 8
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %65 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %68 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %53
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %76 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %53
  %78 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %79 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %78, i32 0, i32 0
  %80 = load %struct.rrset_parse*, %struct.rrset_parse** %79, align 8
  store %struct.rrset_parse* %80, %struct.rrset_parse** %11, align 8
  br label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %33

84:                                               ; preds = %33
  %85 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %86 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @PREFETCH_TTL_CALC(i64 %87)
  %89 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %90 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %92 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SERVE_EXPIRED_TTL, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %97 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  store i32 1, i32* %5, align 4
  br label %98

98:                                               ; preds = %84, %52
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @log_assert(%struct.reply_info*) #1

declare dso_local i32 @parse_copy_decompress_rrset(i32*, %struct.msg_parse*, %struct.rrset_parse*, %struct.regional*, %struct.TYPE_4__*) #1

declare dso_local i32 @PREFETCH_TTL_CALC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
