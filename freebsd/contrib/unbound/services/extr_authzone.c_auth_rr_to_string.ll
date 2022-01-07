; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_rr_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_rr_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i32*, i32**, i64* }

@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\09\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" ;{id = %u}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"RR too long to print\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, %struct.packed_rrset_data*, i64, i8*, i64)* @auth_rr_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_rr_to_string(i32* %0, i64 %1, i32 %2, i32 %3, %struct.packed_rrset_data* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.packed_rrset_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.packed_rrset_data* %4, %struct.packed_rrset_data** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load i64, i64* %17, align 8
  store i64 %22, i64* %19, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %8
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %21, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %20, align 8
  %33 = call i64 @sldns_wire2str_dname_scan(i32** %21, i64* %20, i8** %16, i64* %19, i32* null, i32 0)
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %18, align 4
  %38 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %18, align 4
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @sldns_wire2str_class_print(i8** %16, i64* %19, i32 %54)
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @sldns_wire2str_type_print(i8** %16, i64* %19, i32 %65)
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %77 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %20, align 8
  %84 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %85 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32* %90, i32** %21, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @sldns_wire2str_rdata_scan(i32** %21, i64* %20, i8** %16, i64* %19, i32 %91, i32* null, i32 0)
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %30
  %101 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %102 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %101, i32 0, i32 2
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %109 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 2
  %115 = call i32 @sldns_calc_keytag_raw(i32* %107, i32 %114)
  %116 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %100, %30
  %122 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %16, i64* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i64, i64* %17, align 8
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @log_nametypeclass(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %132, i32 %133, i32 %134)
  store i32 0, i32* %9, align 4
  br label %137

136:                                              ; preds = %121
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %136, %131
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i64 @sldns_wire2str_dname_scan(i32**, i64*, i8**, i64*, i32*, i32) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_wire2str_class_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_wire2str_type_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_wire2str_rdata_scan(i32**, i64*, i8**, i64*, i32, i32*, i32) #1

declare dso_local i32 @sldns_calc_keytag_raw(i32*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
