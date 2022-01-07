; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i32, i32, i64, i64, i64, i64, i8*, i32 }
%struct.regional = type { i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_packet(i32* %0, %struct.msg_parse* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msg_parse*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @sldns_buffer_remaining(i32* %9)
  %11 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %14, i32* %4, align 4
  br label %124

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %18 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %17, i32 0, i32 9
  %19 = call i32 @sldns_buffer_read(i32* %16, i32* %18, i32 4)
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @sldns_buffer_read_u16(i32* %20)
  %22 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %23 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @sldns_buffer_read_u16(i32* %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %28 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @sldns_buffer_read_u16(i32* %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %33 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @sldns_buffer_read_u16(i32* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %38 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @sldns_buffer_read_u16(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %43 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %45 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %15
  %49 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %49, i32* %4, align 4
  br label %124

50:                                               ; preds = %15
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %53 = call i32 @parse_query_section(i32* %51, %struct.msg_parse* %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %124

57:                                               ; preds = %50
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %60 = load %struct.regional*, %struct.regional** %7, align 8
  %61 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %62 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %63 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %66 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %65, i32 0, i32 6
  %67 = call i32 @parse_section(i32* %58, %struct.msg_parse* %59, %struct.regional* %60, i32 %61, i32 %64, i64* %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %124

71:                                               ; preds = %57
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %74 = load %struct.regional*, %struct.regional** %7, align 8
  %75 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %76 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %77 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %80 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %79, i32 0, i32 5
  %81 = call i32 @parse_section(i32* %72, %struct.msg_parse* %73, %struct.regional* %74, i32 %75, i32 %78, i64* %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %124

85:                                               ; preds = %71
  %86 = load i32*, i32** %5, align 8
  %87 = call i64 @sldns_buffer_remaining(i32* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %91 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %110

95:                                               ; preds = %89, %85
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %98 = load %struct.regional*, %struct.regional** %7, align 8
  %99 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %100 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %101 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %104 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %103, i32 0, i32 4
  %105 = call i32 @parse_section(i32* %96, %struct.msg_parse* %97, %struct.regional* %98, i32 %99, i32 %102, i64* %104)
  store i32 %105, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %124

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %94
  %111 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %112 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %115 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %119 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %123 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %110, %107, %83, %69, %55, %48, %13
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_read(i32*, i32*, i32) #1

declare dso_local i8* @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @parse_query_section(i32*, %struct.msg_parse*) #1

declare dso_local i32 @parse_section(i32*, %struct.msg_parse*, %struct.regional*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
