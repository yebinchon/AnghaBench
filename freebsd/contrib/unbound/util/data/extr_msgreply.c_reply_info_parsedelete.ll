; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_parsedelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_parsedelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i32* }
%struct.alloc_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reply_info_parsedelete(%struct.reply_info* %0, %struct.alloc_cache* %1) #0 {
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca %struct.alloc_cache*, align 8
  %5 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %4, align 8
  %6 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %7 = icmp ne %struct.reply_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %24 = call i32 @ub_packed_rrset_parsedelete(i32 %22, %struct.alloc_cache* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %30 = call i32 @free(%struct.reply_info* %29)
  br label %31

31:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @ub_packed_rrset_parsedelete(i32, %struct.alloc_cache*) #1

declare dso_local i32 @free(%struct.reply_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
