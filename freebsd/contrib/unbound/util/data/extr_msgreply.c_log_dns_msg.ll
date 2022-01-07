; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_log_dns_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_log_dns_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.reply_info = type { i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: log_dns_msg: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: log_dns_msg: ldns tostr failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_dns_msg(i8* %0, %struct.query_info* %1, %struct.reply_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  store %struct.reply_info* %2, %struct.reply_info** %6, align 8
  %10 = call i32* @sldns_buffer_new(i32 65535)
  store i32* %10, i32** %7, align 8
  %11 = call %struct.regional* (...) @regional_create()
  store %struct.regional* %11, %struct.regional** %8, align 8
  %12 = load %struct.query_info*, %struct.query_info** %5, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.regional*, %struct.regional** %8, align 8
  %19 = call i32 @reply_info_encode(%struct.query_info* %12, %struct.reply_info* %13, i32 0, i32 %16, i32* %17, i32 0, %struct.regional* %18, i32 65535, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %42

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sldns_buffer_begin(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @sldns_buffer_limit(i32* %27)
  %29 = call i8* @sldns_wire2str_pkt(i32 %26, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %39

35:                                               ; preds = %24
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %39, %21
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @sldns_buffer_free(i32* %43)
  %45 = load %struct.regional*, %struct.regional** %8, align 8
  %46 = call i32 @regional_destroy(%struct.regional* %45)
  ret void
}

declare dso_local i32* @sldns_buffer_new(i32) #1

declare dso_local %struct.regional* @regional_create(...) #1

declare dso_local i32 @reply_info_encode(%struct.query_info*, %struct.reply_info*, i32, i32, i32*, i32, %struct.regional*, i32, i32) #1

declare dso_local i32 @log_info(i8*, i8*, ...) #1

declare dso_local i8* @sldns_wire2str_pkt(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sldns_buffer_free(i32*) #1

declare dso_local i32 @regional_destroy(%struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
