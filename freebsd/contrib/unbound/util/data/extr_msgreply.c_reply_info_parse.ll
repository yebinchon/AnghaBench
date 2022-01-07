; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_info_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32 }
%struct.query_info = type { i32*, i32* }
%struct.reply_info = type { i32 }
%struct.regional = type { i32 }
%struct.edns_data = type { i32 }
%struct.msg_parse = type { i32 }

@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_info_parse(i32* %0, %struct.alloc_cache* %1, %struct.query_info* %2, %struct.reply_info** %3, %struct.regional* %4, %struct.edns_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.alloc_cache*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.reply_info**, align 8
  %12 = alloca %struct.regional*, align 8
  %13 = alloca %struct.edns_data*, align 8
  %14 = alloca %struct.msg_parse*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %9, align 8
  store %struct.query_info* %2, %struct.query_info** %10, align 8
  store %struct.reply_info** %3, %struct.reply_info*** %11, align 8
  store %struct.regional* %4, %struct.regional** %12, align 8
  store %struct.edns_data* %5, %struct.edns_data** %13, align 8
  %16 = load %struct.query_info*, %struct.query_info** %10, align 8
  %17 = getelementptr inbounds %struct.query_info, %struct.query_info* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.query_info*, %struct.query_info** %10, align 8
  %19 = getelementptr inbounds %struct.query_info, %struct.query_info* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.reply_info**, %struct.reply_info*** %11, align 8
  store %struct.reply_info* null, %struct.reply_info** %20, align 8
  %21 = load %struct.regional*, %struct.regional** %12, align 8
  %22 = call %struct.msg_parse* @regional_alloc(%struct.regional* %21, i32 4)
  store %struct.msg_parse* %22, %struct.msg_parse** %14, align 8
  %23 = icmp ne %struct.msg_parse* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %25, i32* %7, align 4
  br label %64

26:                                               ; preds = %6
  %27 = load %struct.msg_parse*, %struct.msg_parse** %14, align 8
  %28 = call i32 @memset(%struct.msg_parse* %27, i32 0, i32 4)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @sldns_buffer_set_position(i32* %29, i32 0)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.msg_parse*, %struct.msg_parse** %14, align 8
  %33 = load %struct.regional*, %struct.regional** %12, align 8
  %34 = call i32 @parse_packet(i32* %31, %struct.msg_parse* %32, %struct.regional* %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %64

38:                                               ; preds = %26
  %39 = load %struct.msg_parse*, %struct.msg_parse** %14, align 8
  %40 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %41 = load %struct.regional*, %struct.regional** %12, align 8
  %42 = call i32 @parse_extract_edns(%struct.msg_parse* %39, %struct.edns_data* %40, %struct.regional* %41)
  store i32 %42, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %64

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.msg_parse*, %struct.msg_parse** %14, align 8
  %49 = load %struct.alloc_cache*, %struct.alloc_cache** %9, align 8
  %50 = load %struct.query_info*, %struct.query_info** %10, align 8
  %51 = load %struct.reply_info**, %struct.reply_info*** %11, align 8
  %52 = call i32 @parse_create_msg(i32* %47, %struct.msg_parse* %48, %struct.alloc_cache* %49, %struct.query_info* %50, %struct.reply_info** %51, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = load %struct.query_info*, %struct.query_info** %10, align 8
  %56 = call i32 @query_info_clear(%struct.query_info* %55)
  %57 = load %struct.reply_info**, %struct.reply_info*** %11, align 8
  %58 = load %struct.reply_info*, %struct.reply_info** %57, align 8
  %59 = load %struct.alloc_cache*, %struct.alloc_cache** %9, align 8
  %60 = call i32 @reply_info_parsedelete(%struct.reply_info* %58, %struct.alloc_cache* %59)
  %61 = load %struct.reply_info**, %struct.reply_info*** %11, align 8
  store %struct.reply_info* null, %struct.reply_info** %61, align 8
  %62 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %54, %44, %36, %24
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.msg_parse* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.msg_parse*, i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i32) #1

declare dso_local i32 @parse_packet(i32*, %struct.msg_parse*, %struct.regional*) #1

declare dso_local i32 @parse_extract_edns(%struct.msg_parse*, %struct.edns_data*, %struct.regional*) #1

declare dso_local i32 @parse_create_msg(i32*, %struct.msg_parse*, %struct.alloc_cache*, %struct.query_info*, %struct.reply_info**, i32*) #1

declare dso_local i32 @query_info_clear(%struct.query_info*) #1

declare dso_local i32 @reply_info_parsedelete(%struct.reply_info*, %struct.alloc_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
