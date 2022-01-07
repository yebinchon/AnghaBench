; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dns.c_verify_host_key_dns.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dns.c_verify_host_key_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sshkey = type { i32 }
%struct.rrsetinfo = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SSHFP_HASH_RESERVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"verify_host_key_dns\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No key to look up!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"skipped DNS lookup for numerical hostname\00", align 1
@DNS_RDATACLASS_IN = common dso_local global i32 0, align 4
@DNS_RDATATYPE_SSHFP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"DNS lookup error: %s\00", align 1
@RRSET_VALIDATED = common dso_local global i32 0, align 4
@DNS_VERIFY_SECURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"found %d secure fingerprints in DNS\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"found %d insecure fingerprints in DNS\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Error calculating host key fingerprint.\00", align 1
@DNS_VERIFY_FOUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Error parsing fingerprint from DNS.\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Error calculating key fingerprint.\00", align 1
@DNS_VERIFY_MATCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"matching host key fingerprint found in DNS\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"mismatching host key fingerprint found in DNS\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"no host key fingerprint found in DNS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_host_key_dns(i8* %0, %struct.sockaddr* %1, %struct.sshkey* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rrsetinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sshkey* %2, %struct.sshkey** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rrsetinfo* null, %struct.rrsetinfo** %12, align 8
  %21 = load i64, i64* @SSHFP_HASH_RESERVED, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = call i32 @debug3(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %25 = icmp eq %struct.sshkey* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @is_numeric_hostname(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %180

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @DNS_RDATACLASS_IN, align 4
  %37 = load i32, i32* @DNS_RDATATYPE_SSHFP, align 4
  %38 = call i32 @getrrsetbyname(i8* %35, i32 %36, i32 %37, i32 0, %struct.rrsetinfo** %12)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dns_result_totext(i32 %42)
  %44 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %5, align 4
  br label %180

45:                                               ; preds = %34
  %46 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %47 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RRSET_VALIDATED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @DNS_VERIFY_SECURE, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %58 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  br label %66

61:                                               ; preds = %45
  %62 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %63 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %68 = call i32 @dns_read_key(i64* %13, i64* %14, i32** %15, i64* %16, %struct.sshkey* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %73 = call i32 @freerrset(%struct.rrsetinfo* %72)
  store i32 -1, i32* %5, align 4
  br label %180

74:                                               ; preds = %66
  %75 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %76 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @DNS_VERIFY_FOUND, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %74
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %153, %84
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %88 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %156

91:                                               ; preds = %85
  %92 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %93 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %100 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dns_read_rdata(i64* %17, i64* %18, i32** %19, i64* %20, i32 %98, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %91
  %109 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %153

110:                                              ; preds = %91
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %18, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i64, i64* %18, align 8
  store i64 %115, i64* %14, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @free(i32* %116)
  %118 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %119 = call i32 @dns_read_key(i64* %13, i64* %14, i32** %15, i64* %16, %struct.sshkey* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %123 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %124 = call i32 @freerrset(%struct.rrsetinfo* %123)
  store i32 -1, i32* %5, align 4
  br label %180

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %17, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %18, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %20, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32*, i32** %15, align 8
  %140 = load i32*, i32** %19, align 8
  %141 = load i64, i64* %16, align 8
  %142 = call i64 @timingsafe_bcmp(i32* %139, i32* %140, i64 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32, i32* @DNS_VERIFY_MATCH, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %138, %134
  br label %150

150:                                              ; preds = %149, %130, %126
  %151 = load i32*, i32** %19, align 8
  %152 = call i32 @free(i32* %151)
  br label %153

153:                                              ; preds = %150, %108
  %154 = load i64, i64* %10, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %10, align 8
  br label %85

156:                                              ; preds = %85
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load %struct.rrsetinfo*, %struct.rrsetinfo** %12, align 8
  %160 = call i32 @freerrset(%struct.rrsetinfo* %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DNS_VERIFY_FOUND, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %156
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DNS_VERIFY_MATCH, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %176

174:                                              ; preds = %166
  %175 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %172
  br label %179

177:                                              ; preds = %156
  %178 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %176
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %121, %70, %41, %32
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @debug3(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @is_numeric_hostname(i8*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @getrrsetbyname(i8*, i32, i32, i32, %struct.rrsetinfo**) #1

declare dso_local i32 @verbose(i8*, ...) #1

declare dso_local i32 @dns_result_totext(i32) #1

declare dso_local i32 @dns_read_key(i64*, i64*, i32**, i64*, %struct.sshkey*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @freerrset(%struct.rrsetinfo*) #1

declare dso_local i32 @dns_read_rdata(i64*, i64*, i32**, i64*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @timingsafe_bcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
