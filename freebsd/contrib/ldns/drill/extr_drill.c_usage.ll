; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"  Usage: %s name [@server] [type] [class]\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"\09<name>  can be a domain name or an IP address (-x lookups)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\09<type>  defaults to A\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09<class> defaults to IN\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\0A\09arguments may be placed in random order\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\0A  Options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\09-D\09\09enable DNSSEC (DO bit)\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\09-I <address>\09source address to query from\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\09-V <number>\09verbosity (0-5)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\09-Q\09\09quiet mode (overrules -V)\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\09-f file\09\09read packet from file and send it\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\09-i file\09\09read packet from file and print it\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\09-w file\09\09write answer packet to file\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"\09-q file\09\09write query packet to file\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\09-h\09\09show this help\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\09-v\09\09show version\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\0A  Query options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"\09-4\09\09stay on ip4\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\09-6\09\09stay on ip6\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"\09-a\09\09fallback to EDNS0 and TCP if the answer is truncated\0A\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"\09-b <bufsize>\09use <bufsize> as the buffer size (defaults to 512 b)\0A\00", align 1
@.str.22 = private unnamed_addr constant [83 x i8] c"\09-c <file>\09use file for rescursive nameserver configuration\0A\09\09\09(/etc/resolv.conf)\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"\09-k <file>\09specify a file that contains a trusted DNSSEC key [**]\0A\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"\09\09\09Used to verify any signatures in the current answer.\0A\00", align 1
@.str.25 = private unnamed_addr constant [121 x i8] c"\09\09\09When DNSSEC enabled tracing (-TD) or signature\0A\09\09\09chasing (-S) and no key files are given, keys are read\0A\09\09\09from: %s\0A\00", align 1
@LDNS_TRUST_ANCHOR_FILE = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [83 x i8] c"\09-o <mnemonic>\09set flags to:\0A\09\09\09[QR|qr][AA|aa][TC|tc][RD|rd][CD|cd][RA|ra][AD|ad]\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"\09\09\09lowercase: unset bit, uppercase: set bit\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"\09-p <port>\09use <port> as remote port number\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"\09-s\09\09show the DS RR for each key in a packet\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"\09-u\09\09send the query with udp (the default)\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"\09-x\09\09do a reverse lookup\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"\09when doing a secure trace:\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"\09-r <file>\09use file as root servers hint file\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"\09-t\09\09send the query with tcp (connected)\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"\09-d <domain>\09use domain as the start point for the trace\0A\00", align 1
@.str.36 = private unnamed_addr constant [122 x i8] c"\09-y <name:key[:algo]>\09specify named base64 tsig key, and optional an\0A\09\09\09algorithm (defaults to hmac-md5.sig-alg.reg.int)\0A\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"\09-z\09\09don't randomize the nameservers before use\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\0A  [*] = enables/implies DNSSEC\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"  [**] = can be given more than once\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"\0A  ldns-team@nlnetlabs.nl | http://www.nlnetlabs.nl/ldns/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.21, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.22, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** @LDNS_TRUST_ANCHOR_FILE, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.25, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.26, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.35, i64 0, i64 0))
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.36, i64 0, i64 0))
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
