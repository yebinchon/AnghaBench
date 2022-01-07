; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_add_rr_to_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_add_rr_to_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, i64, i32, i32, %struct.rr_parse*, %struct.rr_parse*, i32, %struct.rr_parse*, %struct.rr_parse* }
%struct.rr_parse = type { i64, %struct.rr_parse*, i32, i64 }
%struct.msg_parse = type { i64 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_parse*, i32*, %struct.msg_parse*, %struct.regional*, i64, i64)* @add_rr_to_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_rr_to_rrset(%struct.rrset_parse* %0, i32* %1, %struct.msg_parse* %2, %struct.regional* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rrset_parse*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.msg_parse*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rr_parse*, align 8
  store %struct.rrset_parse* %0, %struct.rrset_parse** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.msg_parse* %2, %struct.msg_parse** %10, align 8
  store %struct.regional* %3, %struct.regional** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %16 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %26 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @skip_ttl_rdata(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %35, i32* %7, align 4
  br label %152

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %152

37:                                               ; preds = %24, %20, %6
  %38 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %39 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %45 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @sldns_buffer_current(i32* %52)
  %54 = call i64 @sig_is_double(i32* %50, %struct.rrset_parse* %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @skip_ttl_rdata(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %61, i32* %7, align 4
  br label %152

62:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %152

63:                                               ; preds = %49, %43
  %64 = load %struct.regional*, %struct.regional** %11, align 8
  %65 = call i64 @regional_alloc(%struct.regional* %64, i32 32)
  %66 = inttoptr i64 %65 to %struct.rr_parse*
  store %struct.rr_parse* %66, %struct.rr_parse** %14, align 8
  %67 = icmp ne %struct.rr_parse* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %69, i32* %7, align 4
  br label %152

70:                                               ; preds = %63
  %71 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %72 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @sldns_buffer_current(i32* %73)
  %75 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %76 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %78 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %77, i32 0, i32 1
  store %struct.rr_parse* null, %struct.rr_parse** %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %70
  %83 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %84 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %90 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %89, i32 0, i32 7
  %91 = load %struct.rr_parse*, %struct.rr_parse** %90, align 8
  %92 = icmp ne %struct.rr_parse* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %95 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %96 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %95, i32 0, i32 7
  %97 = load %struct.rr_parse*, %struct.rr_parse** %96, align 8
  %98 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %97, i32 0, i32 1
  store %struct.rr_parse* %94, %struct.rr_parse** %98, align 8
  br label %103

99:                                               ; preds = %88
  %100 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %101 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %102 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %101, i32 0, i32 8
  store %struct.rr_parse* %100, %struct.rr_parse** %102, align 8
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %105 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %106 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %105, i32 0, i32 7
  store %struct.rr_parse* %104, %struct.rr_parse** %106, align 8
  %107 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %108 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %134

111:                                              ; preds = %82, %70
  %112 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %113 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %112, i32 0, i32 4
  %114 = load %struct.rr_parse*, %struct.rr_parse** %113, align 8
  %115 = icmp ne %struct.rr_parse* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %118 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %119 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %118, i32 0, i32 4
  %120 = load %struct.rr_parse*, %struct.rr_parse** %119, align 8
  %121 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %120, i32 0, i32 1
  store %struct.rr_parse* %117, %struct.rr_parse** %121, align 8
  br label %126

122:                                              ; preds = %111
  %123 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %124 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %125 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %124, i32 0, i32 5
  store %struct.rr_parse* %123, %struct.rr_parse** %125, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %128 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %129 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %128, i32 0, i32 4
  store %struct.rr_parse* %127, %struct.rr_parse** %129, align 8
  %130 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %131 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %126, %103
  %135 = load i32*, i32** %9, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %138 = call i32 @calc_size(i32* %135, i64 %136, %struct.rr_parse* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %141, i32* %7, align 4
  br label %152

142:                                              ; preds = %134
  %143 = load %struct.rr_parse*, %struct.rr_parse** %14, align 8
  %144 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %147 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %142, %140, %68, %62, %60, %36, %34
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @skip_ttl_rdata(i32*) #1

declare dso_local i64 @sig_is_double(i32*, %struct.rrset_parse*, i32) #1

declare dso_local i32 @sldns_buffer_current(i32*) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @calc_size(i32*, i64, %struct.rr_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
