; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_rrset_bad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_rrset_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rrset_parse = type { i64, %struct.rr_parse*, i32, i32, i32 }
%struct.rr_parse = type { %struct.sockaddr_in6*, %struct.rr_parse* }
%struct.sockaddr_in6 = type { %struct.sockaddr_storage, i8*, i32, %struct.sockaddr_storage, i8*, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { %struct.sockaddr_storage, i8*, i32, %struct.sockaddr_storage, i8*, i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@INET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"sanitize: removing public name with private address\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_rrset_bad(%struct.iter_priv* %0, i32* %1, %struct.rrset_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rrset_parse*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rr_parse*, align 8
  %10 = alloca %struct.rr_parse*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca %struct.sockaddr_in, align 8
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr_in6, align 8
  store %struct.iter_priv* %0, %struct.iter_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %7, align 8
  %15 = load %struct.iter_priv*, %struct.iter_priv** %5, align 8
  %16 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %166

21:                                               ; preds = %3
  %22 = load %struct.iter_priv*, %struct.iter_priv** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %25 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %28 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i64 @priv_lookup_name(%struct.iter_priv* %22, i32* %23, i32 %26, i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %166

37:                                               ; preds = %21
  store %struct.rr_parse* null, %struct.rr_parse** %10, align 8
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %39 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %37
  store i64 40, i64* %8, align 8
  %44 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr_in6*
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @memset(%struct.sockaddr_in6* %44, i32 0, i64 %45)
  %47 = load i32, i32* @AF_INET, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %54 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %53, i32 0, i32 1
  %55 = load %struct.rr_parse*, %struct.rr_parse** %54, align 8
  store %struct.rr_parse* %55, %struct.rr_parse** %9, align 8
  br label %56

56:                                               ; preds = %96, %43
  %57 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %58 = icmp ne %struct.rr_parse* %57, null
  br i1 %58, label %59, label %100

59:                                               ; preds = %56
  %60 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %61 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %60, i32 0, i32 0
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %61, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i64 4
  %64 = call i64 @sldns_read_uint16(%struct.sockaddr_in6* %63)
  %65 = load i64, i64* @INET_SIZE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  store %struct.rr_parse* %68, %struct.rr_parse** %10, align 8
  br label %96

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 3
  %71 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %72 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %71, i32 0, i32 0
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %72, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i64 4
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i64 2
  %76 = load i64, i64* @INET_SIZE, align 8
  %77 = call i32 @memmove(%struct.sockaddr_storage* %70, %struct.sockaddr_in6* %75, i64 %76)
  %78 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr_in6*
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @memmove(%struct.sockaddr_storage* %11, %struct.sockaddr_in6* %78, i64 %79)
  %81 = load %struct.iter_priv*, %struct.iter_priv** %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @priv_lookup_addr(%struct.iter_priv* %81, %struct.sockaddr_storage* %11, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %69
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %88 = load %struct.rr_parse*, %struct.rr_parse** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @remove_rr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %86, %struct.rrset_parse* %87, %struct.rr_parse* %88, %struct.rr_parse** %9, %struct.sockaddr_storage* %11, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %166

93:                                               ; preds = %85
  br label %96

94:                                               ; preds = %69
  %95 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  store %struct.rr_parse* %95, %struct.rr_parse** %10, align 8
  br label %96

96:                                               ; preds = %94, %93, %67
  %97 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %98 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %97, i32 0, i32 1
  %99 = load %struct.rr_parse*, %struct.rr_parse** %98, align 8
  store %struct.rr_parse* %99, %struct.rr_parse** %9, align 8
  br label %56

100:                                              ; preds = %56
  br label %164

101:                                              ; preds = %37
  %102 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %103 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %163

107:                                              ; preds = %101
  store i64 40, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @memset(%struct.sockaddr_in6* %14, i32 0, i64 %108)
  %110 = load i32, i32* @AF_INET6, align 4
  %111 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %113 = call i64 @htons(i32 %112)
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %117 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %116, i32 0, i32 1
  %118 = load %struct.rr_parse*, %struct.rr_parse** %117, align 8
  store %struct.rr_parse* %118, %struct.rr_parse** %9, align 8
  br label %119

119:                                              ; preds = %158, %107
  %120 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %121 = icmp ne %struct.rr_parse* %120, null
  br i1 %121, label %122, label %162

122:                                              ; preds = %119
  %123 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %124 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %123, i32 0, i32 0
  %125 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %124, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %125, i64 4
  %127 = call i64 @sldns_read_uint16(%struct.sockaddr_in6* %126)
  %128 = load i64, i64* @INET6_SIZE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  store %struct.rr_parse* %131, %struct.rr_parse** %10, align 8
  br label %158

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  %134 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %135 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %134, i32 0, i32 0
  %136 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %135, align 8
  %137 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %136, i64 4
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %137, i64 2
  %139 = load i64, i64* @INET6_SIZE, align 8
  %140 = call i32 @memmove(%struct.sockaddr_storage* %133, %struct.sockaddr_in6* %138, i64 %139)
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @memmove(%struct.sockaddr_storage* %13, %struct.sockaddr_in6* %14, i64 %141)
  %143 = load %struct.iter_priv*, %struct.iter_priv** %5, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @priv_lookup_addr(%struct.iter_priv* %143, %struct.sockaddr_storage* %13, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %132
  %148 = load i32*, i32** %6, align 8
  %149 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %150 = load %struct.rr_parse*, %struct.rr_parse** %10, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i64 @remove_rr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %148, %struct.rrset_parse* %149, %struct.rr_parse* %150, %struct.rr_parse** %9, %struct.sockaddr_storage* %13, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 1, i32* %4, align 4
  br label %166

155:                                              ; preds = %147
  br label %158

156:                                              ; preds = %132
  %157 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  store %struct.rr_parse* %157, %struct.rr_parse** %10, align 8
  br label %158

158:                                              ; preds = %156, %155, %130
  %159 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %160 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %159, i32 0, i32 1
  %161 = load %struct.rr_parse*, %struct.rr_parse** %160, align 8
  store %struct.rr_parse* %161, %struct.rr_parse** %9, align 8
  br label %119

162:                                              ; preds = %119
  br label %163

163:                                              ; preds = %162, %101
  br label %164

164:                                              ; preds = %163, %100
  br label %165

165:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %154, %92, %36, %20
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @priv_lookup_name(%struct.iter_priv*, i32*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @sldns_read_uint16(%struct.sockaddr_in6*) #1

declare dso_local i32 @memmove(%struct.sockaddr_storage*, %struct.sockaddr_in6*, i64) #1

declare dso_local i64 @priv_lookup_addr(%struct.iter_priv*, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @remove_rr(i8*, i32*, %struct.rrset_parse*, %struct.rr_parse*, %struct.rr_parse**, %struct.sockaddr_storage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
