; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_extract_edns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_extract_edns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i32, %struct.rrset_parse*, %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i64, i32, i32, i64*, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.rrset_parse* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.edns_data = type { i32, i32, i32*, i32, i32, i32 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_OPT = common dso_local global i64 0, align 8
@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_SECTION_ADDITIONAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_extract_edns(%struct.msg_parse* %0, %struct.edns_data* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg_parse*, align 8
  %6 = alloca %struct.edns_data*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.rrset_parse*, align 8
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca %struct.rrset_parse*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %5, align 8
  store %struct.edns_data* %1, %struct.edns_data** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %14 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %15 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %14, i32 0, i32 4
  %16 = load %struct.rrset_parse*, %struct.rrset_parse** %15, align 8
  store %struct.rrset_parse* %16, %struct.rrset_parse** %8, align 8
  store %struct.rrset_parse* null, %struct.rrset_parse** %9, align 8
  store %struct.rrset_parse* null, %struct.rrset_parse** %10, align 8
  store %struct.rrset_parse* null, %struct.rrset_parse** %11, align 8
  br label %17

17:                                               ; preds = %34, %3
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %19 = icmp ne %struct.rrset_parse* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %22 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_RR_TYPE_OPT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %28 = icmp ne %struct.rrset_parse* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %30, i32* %4, align 4
  br label %171

31:                                               ; preds = %26
  %32 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  store %struct.rrset_parse* %32, %struct.rrset_parse** %11, align 8
  %33 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  store %struct.rrset_parse* %33, %struct.rrset_parse** %10, align 8
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  store %struct.rrset_parse* %35, %struct.rrset_parse** %9, align 8
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %37 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %36, i32 0, i32 8
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %37, align 8
  store %struct.rrset_parse* %38, %struct.rrset_parse** %8, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %41 = icmp ne %struct.rrset_parse* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %44 = call i32 @memset(%struct.edns_data* %43, i32 0, i32 32)
  %45 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %46 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %45, i32 0, i32 0
  store i32 512, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %171

47:                                               ; preds = %39
  %48 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %49 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LDNS_SECTION_ADDITIONAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %54, i32* %4, align 4
  br label %171

55:                                               ; preds = %47
  %56 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %57 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %61, i32* %4, align 4
  br label %171

62:                                               ; preds = %55
  %63 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %64 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %63, i32 0, i32 5
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %69 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %68, i32 0, i32 7
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = icmp ne %struct.TYPE_3__* %70, null
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @log_assert(i32 %74)
  %76 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %77 = icmp ne %struct.rrset_parse* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %80 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %79, i32 0, i32 8
  %81 = load %struct.rrset_parse*, %struct.rrset_parse** %80, align 8
  %82 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %83 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %82, i32 0, i32 8
  store %struct.rrset_parse* %81, %struct.rrset_parse** %83, align 8
  br label %90

84:                                               ; preds = %72
  %85 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %86 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %85, i32 0, i32 8
  %87 = load %struct.rrset_parse*, %struct.rrset_parse** %86, align 8
  %88 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %89 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %88, i32 0, i32 4
  store %struct.rrset_parse* %87, %struct.rrset_parse** %89, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %92 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %93 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %92, i32 0, i32 3
  %94 = load %struct.rrset_parse*, %struct.rrset_parse** %93, align 8
  %95 = icmp eq %struct.rrset_parse* %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %98 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %99 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %98, i32 0, i32 3
  store %struct.rrset_parse* %97, %struct.rrset_parse** %99, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %102 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %106 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %110 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %114 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %116 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %115, i32 0, i32 7
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %123 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %125 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %124, i32 0, i32 7
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %132 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %134 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %133, i32 0, i32 7
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = call i32 @sldns_read_uint16(i32* %138)
  %140 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %141 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %143 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ntohs(i32 %144)
  %146 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %147 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %149 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  %150 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %151 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %150, i32 0, i32 5
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %12, align 8
  %157 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %158 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %157, i32 0, i32 5
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 6
  store i32* %162, i32** %13, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %166 = load %struct.regional*, %struct.regional** %7, align 8
  %167 = call i32 @parse_edns_options(i32* %163, i64 %164, %struct.edns_data* %165, %struct.regional* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %171

170:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %169, %60, %53, %42, %29
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @memset(%struct.edns_data*, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @sldns_read_uint16(i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @parse_edns_options(i32*, i64, %struct.edns_data*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
