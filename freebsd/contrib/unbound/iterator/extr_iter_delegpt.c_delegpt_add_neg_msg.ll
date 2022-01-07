; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_neg_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_neg_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.msgreply_entry = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.reply_info = type { i64, i32 }
%struct.delegpt_ns = type { i32, i32, i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_add_neg_msg(%struct.delegpt* %0, %struct.msgreply_entry* %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.msgreply_entry*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.delegpt_ns*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %3, align 8
  store %struct.msgreply_entry* %1, %struct.msgreply_entry** %4, align 8
  %7 = load %struct.msgreply_entry*, %struct.msgreply_entry** %4, align 8
  %8 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.reply_info*
  store %struct.reply_info* %11, %struct.reply_info** %5, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %13 = icmp ne %struct.reply_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @FLAGS_GET_RCODE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %21, %15
  %27 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %28 = load %struct.msgreply_entry*, %struct.msgreply_entry** %4, align 8
  %29 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.msgreply_entry*, %struct.msgreply_entry** %4, align 8
  %33 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt* %27, i32 %31, i32 %35)
  store %struct.delegpt_ns* %36, %struct.delegpt_ns** %6, align 8
  %37 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %38 = icmp ne %struct.delegpt_ns* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %26
  %40 = load %struct.msgreply_entry*, %struct.msgreply_entry** %4, align 8
  %41 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %48 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %60

49:                                               ; preds = %39
  %50 = load %struct.msgreply_entry*, %struct.msgreply_entry** %4, align 8
  %51 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %58 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %62 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %67 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.delegpt_ns*, %struct.delegpt_ns** %6, align 8
  %72 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %65, %60
  br label %74

74:                                               ; preds = %73, %26
  br label %75

75:                                               ; preds = %14, %74, %21
  ret void
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
