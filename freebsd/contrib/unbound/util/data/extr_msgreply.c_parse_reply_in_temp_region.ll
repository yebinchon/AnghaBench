; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_reply_in_temp_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_reply_in_temp_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i32 }
%struct.msg_parse = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reply_info* @parse_reply_in_temp_region(i32* %0, %struct.regional* %1, %struct.query_info* %2) #0 {
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca %struct.reply_info*, align 8
  %9 = alloca %struct.msg_parse*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.regional* %1, %struct.regional** %6, align 8
  store %struct.query_info* %2, %struct.query_info** %7, align 8
  %10 = load %struct.regional*, %struct.regional** %6, align 8
  %11 = call %struct.msg_parse* @regional_alloc(%struct.regional* %10, i32 4)
  store %struct.msg_parse* %11, %struct.msg_parse** %9, align 8
  %12 = icmp ne %struct.msg_parse* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %16 = call i32 @memset(%struct.msg_parse* %15, i32 0, i32 4)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sldns_buffer_set_position(i32* %17, i32 0)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %21 = load %struct.regional*, %struct.regional** %6, align 8
  %22 = call i64 @parse_packet(i32* %19, %struct.msg_parse* %20, %struct.regional* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %35

25:                                               ; preds = %14
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %28 = load %struct.query_info*, %struct.query_info** %7, align 8
  %29 = load %struct.regional*, %struct.regional** %6, align 8
  %30 = call i32 @parse_create_msg(i32* %26, %struct.msg_parse* %27, i32* null, %struct.query_info* %28, %struct.reply_info** %8, %struct.regional* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store %struct.reply_info* null, %struct.reply_info** %4, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  store %struct.reply_info* %34, %struct.reply_info** %4, align 8
  br label %35

35:                                               ; preds = %33, %32, %24, %13
  %36 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  ret %struct.reply_info* %36
}

declare dso_local %struct.msg_parse* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.msg_parse*, i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i32) #1

declare dso_local i64 @parse_packet(i32*, %struct.msg_parse*, %struct.regional*) #1

declare dso_local i32 @parse_create_msg(i32*, %struct.msg_parse*, i32*, %struct.query_info*, %struct.reply_info**, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
