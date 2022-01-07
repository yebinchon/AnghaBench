; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_set_ttls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_set_ttls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reply_info_set_ttls(%struct.reply_info* %0, i64 %1) #0 {
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %10 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %100, %2
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %103

35:                                               ; preds = %29
  %36 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %46, %struct.packed_rrset_data** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %35
  %50 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %51 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp eq %struct.TYPE_5__* %56, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %100

67:                                               ; preds = %49, %35
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %70 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %96, %67
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %78 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = icmp ult i64 %76, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %75
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %88 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %86
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %75

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %5, align 8
  br label %29

103:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
