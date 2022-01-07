; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_query_info_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_query_info_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32*, i8*, i8*, i32, i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@LDNS_PACKET_NOTIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_info_parse(%struct.query_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.query_info* %0, %struct.query_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32* @sldns_buffer_begin(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @sldns_buffer_limit(i32* %9)
  %11 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %12 = add nsw i64 %11, 5
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @LDNS_OPCODE_WIRE(i32* %16)
  %18 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @LDNS_OPCODE_WIRE(i32* %21)
  %23 = load i64, i64* @LDNS_PACKET_NOTIFY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %15
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @LDNS_QDCOUNT(i32* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @sldns_buffer_position(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %20
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %37 = call i32 @sldns_buffer_skip(i32* %35, i64 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sldns_buffer_current(i32* %38)
  %40 = load %struct.query_info*, %struct.query_info** %4, align 8
  %41 = getelementptr inbounds %struct.query_info, %struct.query_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @query_dname_len(i32* %42)
  %44 = load %struct.query_info*, %struct.query_info** %4, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

48:                                               ; preds = %34
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @sldns_buffer_remaining(i32* %49)
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @sldns_buffer_read_u16(i32* %54)
  %56 = load %struct.query_info*, %struct.query_info** %4, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @sldns_buffer_read_u16(i32* %58)
  %60 = load %struct.query_info*, %struct.query_info** %4, align 8
  %61 = getelementptr inbounds %struct.query_info, %struct.query_info* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.query_info*, %struct.query_info** %4, align 8
  %63 = getelementptr inbounds %struct.query_info, %struct.query_info* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %52, %47, %33, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32*) #1

declare dso_local i32 @LDNS_QDCOUNT(i32*) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i64) #1

declare dso_local i32 @sldns_buffer_current(i32*) #1

declare dso_local i32 @query_dname_len(i32*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i8* @sldns_buffer_read_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
