; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_resolver_print_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_resolver_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"port: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"edns0 size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"use ip6: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"recursive: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usevc: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"igntc: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"fail: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"retry: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"retrans: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"fallback: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"random: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"timeout: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dnssec: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"dnssec cd: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"trust anchors (%d listed):\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"tsig: %s %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"debug: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"default domain: \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"apply default domain: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"searchlist (%d listed):\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"apply search list: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"nameservers (%d listed):\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c" - reachable\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" - unreachable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_resolver_print_fmt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %197

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32** @ldns_resolver_nameservers(i32* %16)
  store i32** %17, i32*** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32** @ldns_resolver_searchlist(i32* %18)
  store i32** %19, i32*** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64* @ldns_resolver_rtt(i32* %20)
  store i64* %21, i64** %10, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ldns_resolver_port(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @ldns_resolver_edns_udp_size(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @ldns_resolver_ip6(i32* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ldns_resolver_recursive(i32* %38)
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ldns_resolver_usevc(i32* %42)
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ldns_resolver_igntc(i32* %46)
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ldns_resolver_fail(i32* %50)
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @ldns_resolver_retry(i32* %54)
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @ldns_resolver_retrans(i32* %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @ldns_resolver_fallback(i32* %64)
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @ldns_resolver_random(i32* %68)
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i64 @ldns_resolver_timeout(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @ldns_resolver_dnssec(i32* %80)
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @ldns_resolver_dnssec_cd(i32* %84)
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @ldns_resolver_dnssec_anchors(i32* %88)
  %90 = call i64 @ldns_rr_list_rr_count(i32 %89)
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @ldns_resolver_dnssec_anchors(i32* %95)
  %97 = call i32 @ldns_rr_list_print_fmt(i32* %93, i32* %94, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i8* @ldns_resolver_tsig_keyname(i32* %99)
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %15
  %103 = load i32*, i32** %6, align 8
  %104 = call i8* @ldns_resolver_tsig_keyname(i32* %103)
  br label %106

105:                                              ; preds = %15
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi i8* [ %104, %102 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %105 ]
  %108 = load i32*, i32** %6, align 8
  %109 = call i8* @ldns_resolver_tsig_algorithm(i32* %108)
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = call i8* @ldns_resolver_tsig_algorithm(i32* %112)
  br label %115

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i8* [ %113, %111 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %114 ]
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %107, i8* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @ldns_resolver_debug(i32* %119)
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32* @ldns_resolver_domain(i32* %125)
  %127 = call i32 @ldns_rdf_print(i32* %124, i32* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @ldns_resolver_defnames(i32* %131)
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i64 @ldns_resolver_searchlist_count(i32* %135)
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %137)
  store i64 0, i64* %7, align 8
  br label %139

139:                                              ; preds = %155, %115
  %140 = load i64, i64* %7, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i64 @ldns_resolver_searchlist_count(i32* %141)
  %143 = icmp ult i64 %140, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %147 = load i32*, i32** %4, align 8
  %148 = load i32**, i32*** %9, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @ldns_rdf_print(i32* %147, i32* %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %155

155:                                              ; preds = %144
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %7, align 8
  br label %139

158:                                              ; preds = %139
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @ldns_resolver_dnsrch(i32* %160)
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i64 @ldns_resolver_nameserver_count(i32* %164)
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %166)
  store i64 0, i64* %7, align 8
  br label %168

168:                                              ; preds = %194, %158
  %169 = load i64, i64* %7, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = call i64 @ldns_resolver_nameserver_count(i32* %170)
  %172 = icmp ult i64 %169, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %168
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %176 = load i32*, i32** %4, align 8
  %177 = load i32**, i32*** %8, align 8
  %178 = load i64, i64* %7, align 8
  %179 = getelementptr inbounds i32*, i32** %177, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @ldns_rdf_print(i32* %176, i32* %180)
  %182 = load i64*, i64** %10, align 8
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  switch i32 %186, label %193 [
    i32 128, label %187
    i32 129, label %190
  ]

187:                                              ; preds = %173
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %193

190:                                              ; preds = %173
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  br label %193

193:                                              ; preds = %173, %190, %187
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %7, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %168

197:                                              ; preds = %14, %168
  ret void
}

declare dso_local i32** @ldns_resolver_nameservers(i32*) #1

declare dso_local i32** @ldns_resolver_searchlist(i32*) #1

declare dso_local i64* @ldns_resolver_rtt(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_resolver_port(i32*) #1

declare dso_local i64 @ldns_resolver_edns_udp_size(i32*) #1

declare dso_local i64 @ldns_resolver_ip6(i32*) #1

declare dso_local i32 @ldns_resolver_recursive(i32*) #1

declare dso_local i32 @ldns_resolver_usevc(i32*) #1

declare dso_local i32 @ldns_resolver_igntc(i32*) #1

declare dso_local i32 @ldns_resolver_fail(i32*) #1

declare dso_local i64 @ldns_resolver_retry(i32*) #1

declare dso_local i64 @ldns_resolver_retrans(i32*) #1

declare dso_local i32 @ldns_resolver_fallback(i32*) #1

declare dso_local i32 @ldns_resolver_random(i32*) #1

declare dso_local i64 @ldns_resolver_timeout(i32*) #1

declare dso_local i32 @ldns_resolver_dnssec(i32*) #1

declare dso_local i32 @ldns_resolver_dnssec_cd(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32) #1

declare dso_local i32 @ldns_resolver_dnssec_anchors(i32*) #1

declare dso_local i32 @ldns_rr_list_print_fmt(i32*, i32*, i32) #1

declare dso_local i8* @ldns_resolver_tsig_keyname(i32*) #1

declare dso_local i8* @ldns_resolver_tsig_algorithm(i32*) #1

declare dso_local i32 @ldns_resolver_debug(i32*) #1

declare dso_local i32 @ldns_rdf_print(i32*, i32*) #1

declare dso_local i32* @ldns_resolver_domain(i32*) #1

declare dso_local i32 @ldns_resolver_defnames(i32*) #1

declare dso_local i64 @ldns_resolver_searchlist_count(i32*) #1

declare dso_local i32 @ldns_resolver_dnsrch(i32*) #1

declare dso_local i64 @ldns_resolver_nameserver_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
