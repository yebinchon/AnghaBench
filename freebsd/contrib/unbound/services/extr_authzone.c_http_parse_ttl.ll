; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_parse_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_parse_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sldns_file_parse_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"$TTL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sldns_file_parse_state*)* @http_parse_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_ttl(i32* %0, %struct.sldns_file_parse_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sldns_file_parse_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sldns_file_parse_state* %1, %struct.sldns_file_parse_state** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @sldns_buffer_begin(i32* %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  store i8* null, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  %23 = call i32 @sldns_strip_ws(i8* %22)
  %24 = call i32 @sldns_str2period(i32 %23, i8** %7)
  %25 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %5, align 8
  %26 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @sldns_str2period(i32, i8**) #1

declare dso_local i32 @sldns_strip_ws(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
