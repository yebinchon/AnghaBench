; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.regional = type { i32 }
%struct.rrset_parse = type { i64, i32* }

@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@sldns_rr_classes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*, %struct.regional*, i32, i64, i64*)* @parse_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_section(i32* %0, %struct.msg_parse* %1, %struct.regional* %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.msg_parse*, align 8
  %10 = alloca %struct.regional*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.rrset_parse*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %9, align 8
  store %struct.regional* %2, %struct.regional** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store %struct.rrset_parse* null, %struct.rrset_parse** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %112

31:                                               ; preds = %6
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @sldns_buffer_remaining(i32* %32)
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %36, i32* %7, align 4
  br label %112

37:                                               ; preds = %31
  store i64 0, i64* %14, align 8
  br label %38

38:                                               ; preds = %108, %37
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @sldns_buffer_current(i32* %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @pkt_dname_len(i32* %45)
  store i64 %46, i64* %18, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %49, i32* %7, align 4
  br label %112

50:                                               ; preds = %42
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @sldns_buffer_remaining(i32* %51)
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %55, i32* %7, align 4
  br label %112

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @sldns_buffer_read_u16(i32* %57)
  store i64 %58, i64* %20, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @sldns_buffer_read(i32* %59, i64* %22, i32 8)
  %61 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.regional*, %struct.regional** %10, align 8
  %69 = call i32 @find_rrset(%struct.msg_parse* %61, i32* %62, i32* %63, i64 %64, i64 %65, i64 %66, i32* %25, i32* %24, i32** %16, i32** %17, i64* %19, i64* %21, i64* %23, %struct.rrset_parse** %26, i32 %67, %struct.regional* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %72, i32* %7, align 4
  br label %112

73:                                               ; preds = %56
  %74 = load %struct.rrset_parse*, %struct.rrset_parse** %26, align 8
  %75 = icmp ne %struct.rrset_parse* %74, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  %77 = load i64*, i64** %13, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %22, align 8
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.regional*, %struct.regional** %10, align 8
  %89 = call %struct.rrset_parse* @new_rrset(%struct.msg_parse* %80, i32* %81, i64 %82, i64 %83, i64 %84, i32 %85, i32 %86, i32 %87, %struct.regional* %88)
  store %struct.rrset_parse* %89, %struct.rrset_parse** %26, align 8
  %90 = load %struct.rrset_parse*, %struct.rrset_parse** %26, align 8
  %91 = icmp ne %struct.rrset_parse* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %76
  %93 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %93, i32* %7, align 4
  br label %112

94:                                               ; preds = %76
  br label %96

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.rrset_parse*, %struct.rrset_parse** %26, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.msg_parse*, %struct.msg_parse** %9, align 8
  %100 = load %struct.regional*, %struct.regional** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i64, i64* %20, align 8
  %103 = call i32 @add_rr_to_rrset(%struct.rrset_parse* %97, i32* %98, %struct.msg_parse* %99, %struct.regional* %100, i32 %101, i64 %102)
  store i32 %103, i32* %27, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %27, align 4
  store i32 %106, i32* %7, align 4
  br label %112

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %14, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %14, align 8
  br label %38

111:                                              ; preds = %38
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %105, %92, %71, %54, %48, %35, %30
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32* @sldns_buffer_current(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @sldns_buffer_read(i32*, i64*, i32) #1

declare dso_local i32 @find_rrset(%struct.msg_parse*, i32*, i32*, i64, i64, i64, i32*, i32*, i32**, i32**, i64*, i64*, i64*, %struct.rrset_parse**, i32, %struct.regional*) #1

declare dso_local %struct.rrset_parse* @new_rrset(%struct.msg_parse*, i32*, i64, i64, i64, i32, i32, i32, %struct.regional*) #1

declare dso_local i32 @add_rr_to_rrset(%struct.rrset_parse*, i32*, %struct.msg_parse*, %struct.regional*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
