; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_change_rrsig_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_change_rrsig_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, i32, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i64, i64, i32, i32, %struct.rrset_parse*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.msg_parse = type { i64, %struct.rrset_parse**, i32, i32, i32 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@PARSE_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rrset_parse* (%struct.rrset_parse*, %struct.msg_parse*, i32*, i64, i32, i32, i32, %struct.regional*)* @change_rrsig_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rrset_parse* @change_rrsig_rrset(%struct.rrset_parse* %0, %struct.msg_parse* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.regional* %7) #0 {
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca %struct.msg_parse*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.regional*, align 8
  %18 = alloca %struct.rrset_parse*, align 8
  %19 = alloca i32, align 4
  store %struct.rrset_parse* %0, %struct.rrset_parse** %10, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.regional* %7, %struct.regional** %17, align 8
  %20 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  store %struct.rrset_parse* %20, %struct.rrset_parse** %18, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %23 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %27 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @pkt_hash_rrset(i32* %21, i32 %24, i64 %25, i32 %28, i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %32 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @log_assert(i32 %36)
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @log_assert(i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %8
  %46 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %47 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %48 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %51 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %55 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.regional*, %struct.regional** %17, align 8
  %61 = call %struct.rrset_parse* @new_rrset(%struct.msg_parse* %46, i32 %49, i32 %52, i64 %53, i32 %56, i32 %57, i32 %58, i32 %59, %struct.regional* %60)
  store %struct.rrset_parse* %61, %struct.rrset_parse** %18, align 8
  %62 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %63 = icmp ne %struct.rrset_parse* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  store %struct.rrset_parse* null, %struct.rrset_parse** %9, align 8
  br label %192

65:                                               ; preds = %45
  %66 = load i32, i32* %16, align 4
  switch i32 %66, label %82 [
    i32 129, label %67
    i32 128, label %72
    i32 130, label %77
  ]

67:                                               ; preds = %65
  %68 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %69 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %84

72:                                               ; preds = %65
  %73 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %74 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %84

77:                                               ; preds = %65
  %78 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %79 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %84

82:                                               ; preds = %65
  %83 = call i32 @log_assert(i32 0)
  br label %84

84:                                               ; preds = %82, %77, %72, %67
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.regional*, %struct.regional** %17, align 8
  %87 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %88 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %89 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %90 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %84
  %95 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %96 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 129
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi i1 [ false, %94 ], [ %102, %100 ]
  br label %105

105:                                              ; preds = %103, %84
  %106 = phi i1 [ true, %84 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @moveover_rrsigs(i32* %85, %struct.regional* %86, %struct.rrset_parse* %87, %struct.rrset_parse* %88, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store %struct.rrset_parse* null, %struct.rrset_parse** %9, align 8
  br label %192

111:                                              ; preds = %105
  %112 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  store %struct.rrset_parse* %112, %struct.rrset_parse** %9, align 8
  br label %192

113:                                              ; preds = %8
  %114 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %115 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %116 = call i32 @msgparse_bucket_remove(%struct.msg_parse* %114, %struct.rrset_parse* %115)
  %117 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %118 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %117, i32 0, i32 1
  %119 = load %struct.rrset_parse**, %struct.rrset_parse*** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @PARSE_TABLE_SIZE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = and i32 %120, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.rrset_parse*, %struct.rrset_parse** %119, i64 %124
  %126 = load %struct.rrset_parse*, %struct.rrset_parse** %125, align 8
  %127 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %128 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %127, i32 0, i32 9
  store %struct.rrset_parse* %126, %struct.rrset_parse** %128, align 8
  %129 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %130 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %131 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %130, i32 0, i32 1
  %132 = load %struct.rrset_parse**, %struct.rrset_parse*** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @PARSE_TABLE_SIZE, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.rrset_parse*, %struct.rrset_parse** %132, i64 %137
  store %struct.rrset_parse* %129, %struct.rrset_parse** %138, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %141 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.msg_parse*, %struct.msg_parse** %11, align 8
  %143 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @change_section(%struct.msg_parse* %142, %struct.rrset_parse* %143, i32 %144)
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %148 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %151 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %153 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %156 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %162 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %161, i32 0, i32 6
  store i64 0, i64* %162, align 8
  %163 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %164 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %163, i32 0, i32 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = icmp ne %struct.TYPE_2__* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %113
  %168 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %169 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %172 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  store i64 %170, i64* %174, align 8
  br label %181

175:                                              ; preds = %113
  %176 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %177 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %180 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %179, i32 0, i32 5
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %183 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %186 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %185, i32 0, i32 4
  store %struct.TYPE_2__* %184, %struct.TYPE_2__** %186, align 8
  %187 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %188 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %190 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %189, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %190, align 8
  %191 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  store %struct.rrset_parse* %191, %struct.rrset_parse** %9, align 8
  br label %192

192:                                              ; preds = %181, %111, %110, %64
  %193 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  ret %struct.rrset_parse* %193
}

declare dso_local i32 @pkt_hash_rrset(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.rrset_parse* @new_rrset(%struct.msg_parse*, i32, i32, i64, i32, i32, i32, i32, %struct.regional*) #1

declare dso_local i32 @moveover_rrsigs(i32*, %struct.regional*, %struct.rrset_parse*, %struct.rrset_parse*, i32) #1

declare dso_local i32 @msgparse_bucket_remove(%struct.msg_parse*, %struct.rrset_parse*) #1

declare dso_local i32 @change_section(%struct.msg_parse*, %struct.rrset_parse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
