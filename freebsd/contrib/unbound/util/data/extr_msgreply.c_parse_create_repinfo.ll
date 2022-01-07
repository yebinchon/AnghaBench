; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_repinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_repinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i32, i32, i32, i32 }
%struct.reply_info = type { i32 }
%struct.regional = type { i32 }

@sec_status_unchecked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_parse*, %struct.reply_info**, %struct.regional*)* @parse_create_repinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_create_repinfo(%struct.msg_parse* %0, %struct.reply_info** %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg_parse*, align 8
  %6 = alloca %struct.reply_info**, align 8
  %7 = alloca %struct.regional*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %5, align 8
  store %struct.reply_info** %1, %struct.reply_info*** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %8 = load %struct.regional*, %struct.regional** %7, align 8
  %9 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %10 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %13 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %16 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %19 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %22 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %25 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @sec_status_unchecked, align 4
  %28 = call %struct.reply_info* @construct_reply_info_base(%struct.regional* %8, i32 %11, i32 %14, i32 0, i32 0, i32 0, i32 %17, i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.reply_info**, %struct.reply_info*** %6, align 8
  store %struct.reply_info* %28, %struct.reply_info** %29, align 8
  %30 = load %struct.reply_info**, %struct.reply_info*** %6, align 8
  %31 = load %struct.reply_info*, %struct.reply_info** %30, align 8
  %32 = icmp ne %struct.reply_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.reply_info* @construct_reply_info_base(%struct.regional*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
