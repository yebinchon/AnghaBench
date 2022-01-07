; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_edns_from_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_edns_from_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i32, i32, i32*, i8*, i8*, i8* }
%struct.regional = type { i32 }

@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_OPT = common dso_local global i8* null, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_edns_from_pkt(i32* %0, %struct.edns_data* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edns_data*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.edns_data* %1, %struct.edns_data** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @sldns_buffer_begin(i32* %10)
  %12 = call i32 @LDNS_QDCOUNT(i32 %11)
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @log_assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sldns_buffer_begin(i32* %16)
  %18 = call i64 @LDNS_ANCOUNT(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sldns_buffer_begin(i32* %21)
  %23 = call i64 @LDNS_NSCOUNT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20, %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @sldns_buffer_begin(i32* %27)
  %29 = call i64 @LDNS_ANCOUNT(i32 %28)
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @sldns_buffer_begin(i32* %31)
  %33 = call i64 @LDNS_NSCOUNT(i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %30, %34
  %36 = call i32 @skip_pkt_rrs(i32* %26, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %119

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @sldns_buffer_begin(i32* %41)
  %43 = call i32 @LDNS_ARCOUNT(i32 %42)
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %46, i32* %4, align 4
  br label %119

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sldns_buffer_begin(i32* %48)
  %50 = call i32 @LDNS_ARCOUNT(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %54 = call i32 @memset(%struct.edns_data* %53, i32 0, i32 40)
  %55 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %56 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %55, i32 0, i32 0
  store i32 512, i32* %56, align 8
  store i32 0, i32* %4, align 4
  br label %119

57:                                               ; preds = %47
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @pkt_dname_len(i32* %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %62, i32* %4, align 4
  br label %119

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @sldns_buffer_remaining(i32* %64)
  %66 = icmp ult i64 %65, 10
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %68, i32* %4, align 4
  br label %119

69:                                               ; preds = %63
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* @sldns_buffer_read_u16(i32* %70)
  %72 = load i8*, i8** @LDNS_RR_TYPE_OPT, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %75, i32* %4, align 4
  br label %119

76:                                               ; preds = %69
  %77 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %78 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @sldns_buffer_read_u16(i32* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %83 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i8* @sldns_buffer_read_u8(i32* %84)
  %86 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %87 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i8* @sldns_buffer_read_u8(i32* %88)
  %90 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %91 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @sldns_buffer_read_u16(i32* %92)
  %94 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %95 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %97 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %96, i32 0, i32 2
  store i32* null, i32** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i8* @sldns_buffer_read_u16(i32* %98)
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %8, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @sldns_buffer_remaining(i32* %101)
  %103 = load i64, i64* %8, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %76
  %106 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %106, i32* %4, align 4
  br label %119

107:                                              ; preds = %76
  %108 = load i32*, i32** %5, align 8
  %109 = call i32* @sldns_buffer_current(i32* %108)
  store i32* %109, i32** %9, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %113 = load %struct.regional*, %struct.regional** %7, align 8
  %114 = call i32 @parse_edns_options(i32* %110, i64 %111, %struct.edns_data* %112, %struct.regional* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %117, i32* %4, align 4
  br label %119

118:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %116, %105, %74, %67, %61, %52, %45, %38
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @LDNS_QDCOUNT(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

declare dso_local i64 @LDNS_NSCOUNT(i32) #1

declare dso_local i32 @skip_pkt_rrs(i32*, i32) #1

declare dso_local i32 @LDNS_ARCOUNT(i32) #1

declare dso_local i32 @memset(%struct.edns_data*, i32, i32) #1

declare dso_local i32 @pkt_dname_len(i32*) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i8* @sldns_buffer_read_u16(i32*) #1

declare dso_local i8* @sldns_buffer_read_u8(i32*) #1

declare dso_local i32* @sldns_buffer_current(i32*) #1

declare dso_local i32 @parse_edns_options(i32*, i64, %struct.edns_data*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
