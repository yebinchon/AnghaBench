; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rr_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rr_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i32*, i64, i32**, i64* }

@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rrbuf failure %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packed_rr_to_string(%struct.ub_packed_rrset_key* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca [65535 x i32], align 16
  %14 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %12, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 2
  %25 = add nsw i32 %24, 2
  %26 = add nsw i32 %25, 4
  %27 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %28 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %26, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %37, %5
  %41 = phi i1 [ false, %5 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @log_assert(i32 %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  store i32 0, i32* %6, align 4
  br label %158

50:                                               ; preds = %40
  %51 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memmove(i32* %51, i32* %55, i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %63 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %50
  %67 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @memmove(i32* %73, i32* %76, i32 2)
  br label %88

78:                                               ; preds = %50
  %79 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %87 = call i32 @sldns_write_uint16(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %66
  %89 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %91 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %98 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = call i32 @memmove(i32* %96, i32* %99, i32 2)
  %101 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %103 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %110 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub nsw i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @sldns_write_uint32(i32* %108, i32 %117)
  %119 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %120 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %121 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %134 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memmove(i32* %126, i32* %132, i32 %138)
  %140 = getelementptr inbounds [65535 x i32], [65535 x i32]* %13, i64 0, i64 0
  %141 = load i64, i64* %14, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @sldns_wire2str_rr_buf(i32* %140, i64 %141, i8* %142, i64 %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %157

146:                                              ; preds = %88
  %147 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %148 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %152, i8* %153)
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 0, i8* %156, align 1
  store i32 0, i32* %6, align 4
  br label %158

157:                                              ; preds = %88
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %146, %47
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

declare dso_local i32 @sldns_wire2str_rr_buf(i32*, i64, i8*, i64) #1

declare dso_local i32 @log_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
